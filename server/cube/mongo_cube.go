package cube

import (
	"iwantjob/server/model"

	"go.mongodb.org/mongo-driver/bson/primitive"
)

type MongoCube struct {
	ID     primitive.ObjectID `bson:"_id,omitempty"`
	Fid    string             `protobuf:"bytes,1,opt,name=fid,proto3" json:"fid,omitempty"`
	Uid    string             `protobuf:"bytes,2,opt,name=uid,proto3" json:"uid,omitempty"`
	Url    string             `protobuf:"bytes,3,opt,name=url,proto3" json:"url,omitempty"`
	Type   string             `protobuf:"bytes,4,opt,name=type,proto3" json:"type,omitempty"`
	Source string             `protobuf:"bytes,5,opt,name=source,proto3" json:"source,omitempty"`
}

func (cube *MongoCube) toCube() *model.Cube {
	return &model.Cube{
		Id:     cube.ID.Hex(),
		Fid:    cube.Fid,
		Url:    cube.Url,
		Type:   cube.Type,
		Source: cube.Source,
	}
}
func (cube *MongoCube) toCubeStream(opType string) *model.CubeStream {
	return &model.CubeStream{
		Id:     cube.ID.Hex(),
		Fid:    cube.Fid,
		Url:    cube.Url,
		Type:   cube.Type,
		Source: cube.Source,
		Otype:  opType,
	}
}
