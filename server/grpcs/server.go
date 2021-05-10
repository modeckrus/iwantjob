package grpcs

import (
	"context"
	"iwantjob/server/model"
)

type Server struct{}

//GetList(context.Context, *GetListReq) (*List, error)
// CreateCube(context.Context, *CreateCubeReq) (*Cube, error)
// UploadImage(context.Context, *UploadImageReq) (*ImageResp, error)

func (Server) mustEmbedUnimplementedDbServer() {}

func (Server) GetList(ctx context.Context, in *model.GetListReq) (*model.List, error) {
	cubes := make([]*model.Cube, 10)
	for i := 0; i < len(cubes); i++ {
		cubes[i] = randomCube()
	}
	return &model.List{
		Samples: cubes,
	}, nil
}

func (Server) CreateCube(ctx context.Context, in *model.CreateCubeReq) (*model.Cube, error) {
	cube := randomCube()
	return cube, nil
}

func (Server) UploadImage(ctx context.Context, in *model.UploadImageReq) (*model.ImageResp, error) {
	return &model.ImageResp{
		Url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1",
	}, nil
}

func randomCube() *model.Cube {
	return &model.Cube{
		Fid:    "0x1",
		Uid:    "0x2",
		Url:    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1",
		Type:   ".gif",
		Source: "https://duckduckgo.com/?q=gif&atb=v249-1&ia=images&iax=images",
	}
}
