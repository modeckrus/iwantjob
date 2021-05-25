package messager

import (
	"iwantjob/server/model"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

type MongoMessage struct {
	Id        primitive.ObjectID `bson:"_id,omitempty"`
	Fid       string             `protobuf:"bytes,1,opt,name=fid,proto3" json:"fid,omitempty"` //User id
	Text      string             `protobuf:"bytes,2,opt,name=text,proto3" json:"text,omitempty"`
	Photo     string             `protobuf:"bytes,3,opt,name=photo,proto3" json:"photo,omitempty"`
	CreatedAt int64              `protobuf:"varint,4,opt,name=createdAt,proto3" json:"createdAt,omitempty"`
}

func (m *MongoMessage) toGRPCMessage() *model.Message {
	return &model.Message{
		Id:        m.Id.Hex(),
		Fid:       m.Fid,
		Text:      m.Text,
		Photo:     m.Photo,
		CreatedAt: m.CreatedAt,
	}
}
func (m *MongoMessage) toGRPCStream(opType string) *model.StreamedMessahge {
	return &model.StreamedMessahge{
		Id:        m.Id.Hex(),
		Fid:       m.Fid,
		Text:      m.Text,
		Photo:     m.Photo,
		CreatedAt: m.CreatedAt,
		OpType:    opType,
	}
}
