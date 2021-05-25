package cube

import (
	"context"
	"iwantjob/server/model"
	"log"
	"strconv"
	"time"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type MongoServer struct {
	Client *mongo.Client
}

// var cubes = make([]*model.Cube, 0)

//GetList(context.Context, *GetListReq) (*List, error)
// CreateCube(context.Context, *CreateCubeReq) (*Cube, error)
// UploadImage(context.Context, *UploadImageReq) (*ImageResp, error)

func (s *MongoServer) GetList(ctx context.Context, in *model.GetListReq) (*model.List, error) {
	// cubes := make([]*model.Cube, 10)
	// for i := 0; i < len(cubes); i++ {
	// 	cubes[i] = randomCube()
	// }
	coll := s.Client.Database("cubes").Collection("cubes")
	l := 64
	limit := int64(l)
	res, err := coll.Find(ctx, bson.D{}, &options.FindOptions{
		Limit: &limit,
	})
	if err != nil {
		return nil, err
	}
	cubes := make([]*model.Cube, 0)
	for res.Next(ctx) {
		cube := &model.Cube{}
		err := res.Decode(cube)
		if err != nil {
			log.Println("Error while decoding: ", err)
			continue
		}
		cubes = append(cubes, cube)
	}
	log.Printf("%#v\n", cubes)
	claims := ctx.Value("claims")
	if claims != nil {
		log.Printf("Claims: %v", claims)
	}
	return &model.List{
		Samples: cubes,
	}, nil
}

func (s *MongoServer) CreateCube(ctx context.Context, in *model.CreateCubeReq) (*model.Cube, error) {
	cube := &model.Cube{
		Id:     strconv.Itoa(len(cubes)),
		Fid:    in.Fid,
		Url:    in.Url,
		Type:   in.Type,
		Source: in.Source,
	}
	coll := s.Client.Database("cubes").Collection("cubes")
	res, err := coll.InsertOne(ctx, cube)
	if err != nil {
		return nil, err
	}
	cube.Id = res.InsertedID.(primitive.ObjectID).Hex()
	log.Printf("Added Cube: %#v\n", cube)
	return cube, nil
}

func (s *MongoServer) UploadImage(ctx context.Context, in *model.UploadImageReq) (*model.ImageResp, error) {
	return &model.ImageResp{
		Url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1",
	}, nil
}

func (s *MongoServer) StreamList(req *model.GetListReq, stream model.Db_StreamListServer) error {
	ctx := stream.Context()
	deadline, ok := stream.Context().Deadline()
	coll := s.Client.Database("cubes").Collection("cubes")
	// matchStage := bson.D{{"$match", bson.D{{"operationType", "insert"}}}}
	opts := options.ChangeStream().SetFullDocument("updateLookup")
	if ok {
		log.Println("MaxAwaitTime: ", deadline.Sub(time.Now()))
		opts.SetMaxAwaitTime(deadline.Sub(time.Now()))
	}

	changeStream, err := coll.Watch(ctx, mongo.Pipeline{}, opts)

	for changeStream.Next(ctx) {
		opTypeRaw := changeStream.Current.Lookup("operationType")
		opType, ok := opTypeRaw.StringValueOK()
		if opType == "delete" {
			log.Println("DeleteOperation")
			log.Println(changeStream.Current)
			oid := changeStream.Current.Lookup("documentKey")
			type WithId struct {
				Id primitive.ObjectID `bson:"_id,omitempty"`
			}
			withId := WithId{}
			err := oid.Unmarshal(&withId)
			if err != nil {
				log.Println(err)
				continue
			}
			if ok {
				stream.Send(&model.CubeStream{
					Otype: opType,
					Id:    withId.Id.Hex(),
				})
			}
		} else {
			fullDocument := changeStream.Current.Lookup("fullDocument")
			cube := MongoCube{}
			err := fullDocument.Unmarshal(&cube)
			if err != nil {
				continue
			}
			if ok {
				result := cube.toCubeStream(opType)
				log.Println(result)
				stream.Send(result)
			} else {
				log.Println("Optype not ok")
			}
		}
	}
	// log.Printf("%#v\n", cubes)
	// claims := ctx.Value("claims")
	// if claims != nil {
	// 	log.Printf("Claims: %v", claims)
	// }
	// stream.Send(&model.List{
	// 	Samples: cubes,
	// })
	return err
}
