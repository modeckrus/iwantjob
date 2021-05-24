package user

import (
	"context"
	"fmt"
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

func (store *MongoUser) Save(user *User) error {
	ctx, c := context.WithTimeout(context.Background(), time.Second*2)
	defer c()
	_, err := store.Client.Database("users").Collection("users").InsertOne(ctx, user)
	if err != nil {
		log.Println(err)

		return err
	}
	return nil
}
func (store *MongoUser) Find(name string) (*User, error) {
	ctx, c := context.WithTimeout(context.Background(), time.Second*2)
	defer c()
	res := store.Client.Database("users").Collection("users").FindOne(ctx, bson.D{{"name", name}})
	if res.Err() != nil {
		return nil, res.Err()
	}
	user := &User{}
	res.Decode(user)
	return user, nil
}

func (store *MongoUser) SingUp(username string, password string) (*User, error) {
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
			u := &User{
				Name:           username,
				HashedPassword: string(hpass),
				Role:           "user",
			}
			ctx, c := context.WithTimeout(context.Background(), time.Second*2)
			defer c()
			res, err := store.Client.Database("users").Collection("users").InsertOne(ctx, u)
			if err != nil {
				log.Println(err)

				return nil, err
			}
			id := res.InsertedID.(primitive.ObjectID)
			return u.Clone(id.Hex()), nil
		}
	}
	return nil, err
}

func (store *MongoUser) FindById(id string) (*User, error) {
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
	user := &User{}
	res.Decode(user)
	return user, nil
}
