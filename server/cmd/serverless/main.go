package main

import (
	"context"
	"log"
	"time"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
)

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

func main() {
	client, err := InitMongoDb("mongodb://localhost:27017")
	if err != nil {
		log.Fatal(err)
	}
	ctx, cancl := context.WithDeadline(context.Background(), time.Now().Add(time.Second*30))
	coll := client.Database("users").Collection("users")
	err = client.Ping(ctx, readpref.Primary())
	if err != nil {
		log.Fatal(err)
	}
	defer cancl()
	pipeline := mongo.Pipeline{bson.D{
		{"$match",
			bson.D{
				{"fullDocument.Name", "Name"},
			},
		},
	}}
	streamOptions := options.ChangeStream().SetFullDocument(options.UpdateLookup)

	stream, err := coll.Watch(context.TODO(), pipeline, streamOptions)
	if err != nil {
		log.Fatal(err)
	}
	log.Print("waiting for changes")
	var changeDoc map[string]interface{}
	for stream.Next(context.TODO()) {
		if e := stream.Decode(&changeDoc); e != nil {
			log.Printf("error decoding: %s", e)
		}
		log.Printf("change: %+v", changeDoc)
	}

}
