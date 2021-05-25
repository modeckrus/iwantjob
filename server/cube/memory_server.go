package cube

import (
	"context"
	"iwantjob/server/model"
	"log"
	"strconv"
)

type Server struct{}

var cubes = make([]*model.Cube, 0)

//GetList(context.Context, *GetListReq) (*List, error)
// CreateCube(context.Context, *CreateCubeReq) (*Cube, error)
// UploadImage(context.Context, *UploadImageReq) (*ImageResp, error)

func (Server) mustEmbedUnimplementedDbServer() {}

func (Server) GetList(ctx context.Context, in *model.GetListReq) (*model.List, error) {
	// cubes := make([]*model.Cube, 10)
	// for i := 0; i < len(cubes); i++ {
	// 	cubes[i] = randomCube()
	// }
	log.Printf("%#v\n", cubes)
	claims := ctx.Value("claims")
	if claims != nil {
		log.Printf("Claims: %v", claims)
	}
	return &model.List{
		Samples: cubes,
	}, nil
}

func (Server) CreateCube(ctx context.Context, in *model.CreateCubeReq) (*model.Cube, error) {
	cube := &model.Cube{
		Id:     strconv.Itoa(len(cubes)),
		Fid:    in.Fid,
		Url:    in.Url,
		Type:   in.Type,
		Source: in.Source,
	}
	cubes = append(cubes, cube)
	log.Printf("Cube: %#v\n", cube)
	log.Printf("Cubes: %#v\n", cubes)
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
		Id:     "0x2",
		Url:    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1",
		Type:   ".gif",
		Source: "https://duckduckgo.com/?q=gif&atb=v249-1&ia=images&iax=images",
	}
}
