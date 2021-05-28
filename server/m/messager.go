package m

import (
	"iwantjob/server/model"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

type MongoMessage struct {
	Id        primitive.ObjectID `bson:"_id,omitempty"`
	Fid       primitive.ObjectID `protobuf:"bytes,1,opt,name=fid,proto3" json:"fid,omitempty"` //User id
	Text      string             `protobuf:"bytes,2,opt,name=text,proto3" json:"text,omitempty"`
	Photo     string             `protobuf:"bytes,3,opt,name=photo,proto3" json:"photo,omitempty"`
	CreatedAt int64              `protobuf:"varint,4,opt,name=createdAt,proto3" json:"createdAt,omitempty"`
	User      []MessageUser      `bson:"user,omitempty"`
}

type MessageUser struct {
	Id   primitive.ObjectID `bson:"_id,omitempty"`
	Name string             `bson:"name"`
	Role string             `bson:"role"`
}

func (m *MongoMessage) ToGRPCMessage() *model.Message {
	var usr MessageUser
	if len(m.User) <= 0 {
		usr = MessageUser{}
	} else {
		usr = m.User[0]
	}
	return &model.Message{
		Id:        m.Id.Hex(),
		Fid:       m.Fid.Hex(),
		Text:      m.Text,
		Photo:     m.Photo,
		CreatedAt: m.CreatedAt,
		User: &model.MUser{
			Name: usr.Name,
			Role: usr.Role,
		},
	}
}
func (m *MongoMessage) ToGRPCStream(opType string) *model.StreamedMessahge {
	var usr MessageUser
	if len(m.User) <= 0 {
		usr = MessageUser{}
	} else {
		usr = m.User[0]
	}
	return &model.StreamedMessahge{
		Id:        m.Id.Hex(),
		Fid:       m.Fid.Hex(),
		Text:      m.Text,
		Photo:     m.Photo,
		CreatedAt: m.CreatedAt,
		OpType:    opType,
		User: &model.MUser{
			Name: usr.Name,
			Role: usr.Role,
		},
	}
}
