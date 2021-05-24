package main

import (
	"context"
	"fmt"
	"iwantjob/server/cube"
	"iwantjob/server/grpcs"
	"iwantjob/server/mjwt"
	"iwantjob/server/model"
	"iwantjob/server/user"
	"log"
	"net"
	"time"

	"github.com/modeckrus/utils"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"golang.org/x/crypto/bcrypt"
	"google.golang.org/grpc"
)

func unaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
	utils.SPrint(info.FullMethod)
	return handler(ctx, req)
}
func streamInterceptor(
	srv interface{},
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	handler grpc.StreamHandler,
) error {
	fmt.Println("--> stream interceptor: ", utils.SPrint(info.FullMethod))
	return handler(srv, stream)
}

const (
	secretKey       = "secret"
	tokenDuration   = 1 * time.Hour
	refreshDuration = 24 * time.Hour
)

func createUser(userStore user.UserStore, username, password, role string) error {
	user, err := user.NewUser(username, password, role)
	if err != nil {
		return err
	}
	return userStore.Save(user)
}

func seedUsers(userStore user.UserStore) error {
	err := createUser(userStore, "admin1", "secret", "admin")
	if err != nil {
		return err
	}
	return createUser(userStore, "user1", "secret", "user")
}

func accessibleRoles() map[string][]string {
	const Dbservice = "/model.Db/"
	return map[string][]string{
		Dbservice + "CreateCube": {"admin"},
		Dbservice + "GetList":    {"admin", "user"},
	}
}

func InitMongoDb(addr string) (*mongo.Client, error) {
	log.Println("[Mongo] Mongo connection init")
	c, err := mongo.NewClient(options.Client().ApplyURI(addr))
	if err != nil {
		return nil, err
	}
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	err = c.Connect(ctx)
	if err != nil {
		if err != nil {
			return nil, err
		}
	}
	log.Println("[Mongo] Mongo connected succes")
	return c, nil
}

func AddAdmin(client *mongo.Client) error {
	coll := client.Database("users").Collection("users")
	ctx := context.Background()
	ctx, cancl := context.WithTimeout(ctx, time.Second*2)
	defer cancl()
	res := coll.FindOne(ctx, bson.M{"role": "admin"})
	if res.Err() != nil {
		if res.Err() == mongo.ErrNoDocuments {
			pass := "secret"

			hashPass, err := bcrypt.GenerateFromPassword([]byte(pass), bcrypt.DefaultCost)
			if err != nil {
				return err
			}
			_, err = coll.InsertOne(ctx, user.User{
				Name:           "admin",
				HashedPassword: string(hashPass),
				Role:           "admin",
			})
			if err != nil {
				return err
			}
			log.Println("Created admin")
			return nil

		} else {
			return res.Err()
		}
	}
	admin := user.User{}
	res.Decode(&admin)
	log.Println("Already Have admin", admin)
	return nil
}

func main() {
	client, err := InitMongoDb("mongodb://localhost:27017")
	if err != nil {
		log.Fatal(err)
	}
	userStore := user.MongoUser{
		Client: client,
	}
	jwtManager := mjwt.NewJWTManager(secretKey, tokenDuration, refreshDuration)

	authServer := grpcs.NewAuthServer(&userStore, jwtManager)
	inceptor := grpcs.NewAuthInterceptor(jwtManager, accessibleRoles())
	s := grpc.NewServer(
		grpc.UnaryInterceptor(inceptor.Unary()),
		grpc.StreamInterceptor(inceptor.Stream()),
	)

	srv := &cube.MongoServer{
		Client: client,
	}
	model.RegisterDbServer(s, srv)
	model.RegisterAuthServiceServer(s, authServer)
	err = AddAdmin(client)
	if err != nil {
		log.Println("Error while add admin", err)
	}
	l, err := net.Listen("tcp", ":9000")
	if err != nil {
		log.Fatal(err)
	}
	err = s.Serve(l)
	if err != nil {
		log.Fatal(err)
	}
}
