package main

import (
	"context"
	"html/template"
	"log"
	"net/http"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/gin-gonic/gin"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

var html = template.Must(template.New("https").Parse(`
<html>
<head>
  <title>Https Test</title>
</head>
<body>
  <h1 style="color:red;">Welcome, Ginner!</h1>
</body>
</html>
`))
var client *mongo.Client

type Client struct {
	ID   primitive.ObjectID `bson:"_id,omitempty"`
	Name string             `bson:"name"`
}

func startHttpServer() *gin.Engine {
	r := gin.Default()
	r.SetHTMLTemplate(html)

	r.GET("/welcome", func(c *gin.Context) {
		res, err := client.Database("clients").Collection("clients").InsertOne(c.Request.Context(), Client{
			Name: c.ClientIP(),
		})
		if err != nil {
			c.Error(err)
			return
		}
		c.JSON(200, res.InsertedID)
	})

	r.GET("/home", func(c *gin.Context) {
		res, err := client.Database("clients").Collection("clients").Find(c.Request.Context(), bson.D{})
		if err != nil {
			c.JSON(505, err)

		}
		clients := make([]Client, 0)
		ctx := c.Request.Context()
		for res.Next(ctx) {
			client := &Client{}
			err := res.Decode(client)
			if err != nil {
				log.Println("Error while decoding: ", err)
				continue
			}
			clients = append(clients, *client)
		}

		c.JSON(200, clients)
	})
	r.GET("/", func(c *gin.Context) {
		res, err := client.Database("clients").Collection("clients").Find(c.Request.Context(), bson.D{})
		if err != nil {
			c.JSON(505, err)

		}
		clients := make([]Client, 0)
		ctx := c.Request.Context()
		for res.Next(ctx) {
			client := &Client{}
			err := res.Decode(client)
			if err != nil {
				log.Println("Error while decoding: ", err)
				continue
			}
			clients = append(clients, *client)
		}

		c.JSON(200, clients)
	})
	go func() {

		// always returns error. ErrServerClosed on graceful close
		if err := r.Run(":8080"); err != http.ErrServerClosed {
			// unexpected error. port in use?
			log.Fatalf("ListenAndServe(): %v", err)
		}
	}()

	// returning reference so caller can call Shutdown()
	return r
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

func main() {
	logger := log.New(os.Stderr, "", 0)
	logger.Println("[WARNING] DON'T USE THE EMBED CERTS FROM THIS EXAMPLE IN PRODUCTION ENVIRONMENT, GENERATE YOUR OWN!")
	shutdown := make(chan int)
	var err error
	client, err = InitMongoDb("mongodb://localhost:27017")
	if err != nil {
		log.Fatal(err)
	}

	//create a notification channel to shutdown
	sigChan := make(chan os.Signal, 1)
	startHttpServer()
	//register for interupt (Ctrl+C) and SIGTERM (docker)
	signal.Notify(sigChan, os.Interrupt, syscall.SIGTERM)
	go func() {
		<-sigChan
		logger.Println("Shutting down...")
		shutdown <- 1
	}()
	<-shutdown
	// Listen and Server in https://127.0.0.1:8080
	// r.RunTLS(":8080", "./testdata/server.pem", "./testdata/server.key")

}
