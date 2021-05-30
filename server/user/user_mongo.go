package user

import (
	"context"
	"fmt"
	"iwantjob/server/m"
	"log"
	"time"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"golang.org/x/crypto/bcrypt"
)

type MongoUser struct {
	Client *mongo.Client
}

func (store *MongoUser) Save(user *m.User) error {
	ctx, c := context.WithTimeout(context.Background(), time.Second*2)
	defer c()
	res, err := store.Client.Database("users").Collection("users").InsertOne(ctx, user)

	messagerUser := &m.MessageUser{
		Name: user.Name,
		Role: user.Role,
		Id:   res.InsertedID.(primitive.ObjectID),
	}
	_, err = store.Client.Database("messages").Collection("users").InsertOne(ctx, messagerUser)
	if err != nil {
		log.Println(err)

		return err
	}
	return nil
}
func (store *MongoUser) Find(name string) (*m.User, error) {
	ctx, c := context.WithTimeout(context.Background(), time.Second*2)
	defer c()
	res := store.Client.Database("users").Collection("users").FindOne(ctx, bson.D{{"name", name}})
	if res.Err() != nil {
		return nil, res.Err()
	}
	user := &m.User{}
	res.Decode(user)
	return user, nil
}

func (store *MongoUser) SingUp(username string, password string) (*m.User, error) {
	user, err := store.Find(username)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			if user != nil {
				log.Println(fmt.Errorf("AlreadyExist"))
				return nil, fmt.Errorf("AlreadyExist")
			}
			hpass, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
			if err != nil {
				log.Println(err)

				return nil, err
			}
			u := &m.User{
				Name:           username,
				HashedPassword: string(hpass),
				Role:           "user",
			}
			ctx, c := context.WithTimeout(context.Background(), time.Second*20)
			defer c()
			res, err := store.Client.Database("users").Collection("users").InsertOne(ctx, u)
			if err != nil {
				log.Println(err)

				return nil, err
			}
			id := res.InsertedID.(primitive.ObjectID)
			// messagerUser := &m.MessageUser{
			// 	Name: u.Name,
			// 	Role: u.Role,
			// 	Id:   id,
			// }
			// _, err = store.Client.Database("messages").Collection("users").InsertOne(ctx, messagerUser)
			// if err != nil {
			// 	return nil, err
			// }
			return u.Clone(id.Hex()), nil
		}
	}
	return nil, err
}

func (store *MongoUser) FindById(id string) (*m.User, error) {
	ctx, c := context.WithTimeout(context.Background(), time.Second*2)
	defer c()
	oid, err := primitive.ObjectIDFromHex(id)
	if err != nil {
		log.Println(err)

		return nil, err
	}
	res := store.Client.Database("users").Collection("users").FindOne(ctx, bson.D{{"_id", oid}})
	if res.Err() != nil {
		log.Println(res.Err())
		return nil, res.Err()
	}
	user := &m.User{}
	res.Decode(user)
	return user, nil
}
