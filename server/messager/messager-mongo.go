package messager

import (
	"context"
	"fmt"
	"iwantjob/server/m"
	"iwantjob/server/mjwt"
	"iwantjob/server/model"
	"log"
	"time"

	"github.com/modeckrus/utils"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type MessagerMongo struct {
	Client *mongo.Client
}

func ctxToClaims(ctx context.Context) (*mjwt.UserClaims, error) {
	claims := ctx.Value("claims")
	if claims == nil {
		return nil, status.Errorf(codes.Unauthenticated, "no claims")
	}
	clms, ok := claims.(*mjwt.UserClaims)
	if !ok {
		return nil, status.Errorf(codes.Unauthenticated, "error parse claims")
	}
	return clms, nil
}

func (s *MessagerMongo) GetMessages(ctx context.Context, req *model.GetMessagesReq) (*model.Messages, error) {
	coll := s.Client.Database("messages").Collection("messages")
	filter := bson.M{"createdAt": bson.M{"$grt": req.From}}
	log.Println(filter)
	//{$match: {createdat: {$gt: 1}}}
	res, err := coll.Aggregate(ctx, mongo.Pipeline{
		bson.D{
			{
				"$match", bson.M{
					"createdat": bson.M{"$gt": req.From},
				},
			}},
		bson.D{
			{"$lookup", bson.M{
				"from":         "users",
				"localField":   "fid",
				"foreignField": "_id",
				"as":           "user",
			}}},
		bson.D{
			bson.E{"$limit", req.First},
		},
	},
		&options.AggregateOptions{},
	)

	// res, err := coll.Find(ctx, bson.M{})
	if err != nil {
		return nil, err
	}
	messages := make([]*model.Message, 0)
	for res.Next(ctx) {
		message := &m.MongoMessage{}
		err := res.Decode(message)
		if err != nil {
			log.Println("Error while decoding: ", err)
			continue
		}
		fmt.Printf("%#v\n", message)
		messages = append(messages, message.ToGRPCMessage())
	}
	return &model.Messages{
		Messages: messages,
	}, nil
}
func (s *MessagerMongo) CreateMessage(ctx context.Context, req *model.CreateMessageReq) (*model.Message, error) {
	coll := s.Client.Database("messages").Collection("messages")
	clms, err := ctxToClaims(ctx)
	if err != nil {
		return nil, err
	}
	fid := clms.ID
	fiod, err := primitive.ObjectIDFromHex(fid)
	if err != nil {
		return nil, err
	}

	message := &m.MongoMessage{
		Fid:       fiod,
		Text:      req.Text,
		Photo:     req.Photo,
		CreatedAt: time.Now().Unix(),
		// User: []m.MessageUser{
		// 	{
		// 		Id: fiod,
		// 		Name: ,
		// 	},
		// },
	}
	res, err := coll.InsertOne(ctx, message)
	if err != nil {
		return nil, err
	}
	oid, ok := res.InsertedID.(primitive.ObjectID)
	if !ok {
		return nil, status.Errorf(codes.Internal, "error while parse object id")
	}
	message.Id = oid
	return message.ToGRPCMessage(), nil
}
func (s *MessagerMongo) UpdateMessage(ctx context.Context, req *model.UpdateMessageReq) (*model.Message, error) {
	coll := s.Client.Database("messages").Collection("messages")
	clms, err := ctxToClaims(ctx)
	if err != nil {
		return nil, err
	}
	fid := clms.ID
	dbMID, err := primitive.ObjectIDFromHex(req.Id) //Database object id
	if err != nil {
		return nil, err
	}
	messageResult := coll.FindOne(ctx, bson.M{"_id": dbMID})
	if messageResult.Err() != nil {
		return nil, messageResult.Err()
	}
	var message m.MongoMessage
	messageResult.Decode(&message)
	if clms.ID != fid {
		return nil, status.Errorf(codes.Unauthenticated, "User id and Message id not same")
	}
	message.Text = req.Text
	message.Photo = req.Photo
	_, err = coll.DeleteOne(ctx, bson.M{"_id": message.Id})
	if err != nil {
		return nil, err
	}
	_, err = coll.InsertOne(ctx, message)
	if err != nil {
		return nil, err
	}
	return message.ToGRPCMessage(), nil
}
func (s *MessagerMongo) DeleteMessage(ctx context.Context, req *model.DeleteMessageReq) (*model.DeletedMessage, error) {
	coll := s.Client.Database("messages").Collection("messages")
	clms, err := ctxToClaims(ctx)
	if err != nil {
		return nil, err
	}
	oid, err := primitive.ObjectIDFromHex(req.Id)
	if err != nil {
		return nil, err
	}
	messageReq := coll.FindOne(ctx, bson.M{"_id": oid})
	if messageReq.Err() != nil {
		return nil, err
	}
	message := &m.MongoMessage{}
	err = messageReq.Decode(message)
	if err != nil {
		return nil, err
	}
	if clms.ID != message.Fid.Hex() && clms.Role != "admin" {
		return nil, status.Errorf(codes.Unauthenticated, "User id and Message id not same")
	}
	del, err := coll.DeleteOne(ctx, bson.M{"_id": oid})
	if err != nil {
		return nil, err
	}
	if del.DeletedCount == 0 {
		return nil, status.Errorf(codes.Internal, "deleteCount 0")
	}
	return &model.DeletedMessage{Id: message.Id.Hex()}, nil
}
func (s *MessagerMongo) StreamMessages(req *model.StreamMessagesReq, stream model.Messager_StreamMessagesServer) error {
	coll := s.Client.Database("messages").Collection("messages")
	ctx := stream.Context()
	// matchStage := bson.D{{"$match", bson.D{{"operationType", "insert"}}}}
	opts := options.ChangeStream().SetFullDocument("updateLookup")
	// pipeline := mongo.Pipeline{
	// 	bson.D{{"$lookup", bson.M{
	// 		"from":         "users",
	// 		"localField":   "fid",
	// 		"foreignField": "_id",
	// 		"as":           "user",
	// 	}}},
	// }
	pipeline := mongo.Pipeline{}
	changeStream, err := coll.Watch(ctx, pipeline, opts)
	if err != nil {
		log.Println(err)
		return err
	}
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
				stream.Send(&model.StreamedMessahge{
					OpType: opType,
					Id:     withId.Id.Hex(),
				})
			}
		} else {
			log.Println("Not delete: ", opType)
			fullDocument := changeStream.Current.Lookup("fullDocument")
			message := m.MongoMessage{}
			err := fullDocument.Unmarshal(&message)
			if err != nil {
				log.Println(err)
				continue
			}
			log.Println(message)
			if ok {
				result := message.ToGRPCStream(opType)
				userId, err := primitive.ObjectIDFromHex(result.Fid)
				if err != nil {
					log.Println(err)
					continue
				}
				res := s.Client.Database("messages").Collection("users").FindOne(ctx, bson.M{"_id": userId})
				if res.Err() != nil {
					log.Println(res.Err())
					continue
				}
				log.Println("MongoUser")
				messagerUser := m.MessageUser{}

				err = res.Decode(&messagerUser)
				if err != nil {
					utils.SPrint(res)
					log.Println(err)
					continue
				}
				result.User = &model.MUser{
					Name: messagerUser.Name,
					Role: messagerUser.Role,
				}
				// log.Println(result)
				stream.Send(result)
			} else {
				log.Println("Optype not ok")
			}
		}
	}
	return status.Errorf(codes.Unimplemented, "method StreamMessages not implemented")
}
