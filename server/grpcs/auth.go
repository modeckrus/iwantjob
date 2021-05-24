package grpcs

import (
	"context"
	"iwantjob/server/mjwt"
	"iwantjob/server/model"
	"iwantjob/server/user"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AuthServer struct {
	UserStore  user.UserStore
	JwtManager *mjwt.JWTManager
}

func NewAuthServer(userStore user.UserStore, jwtManager *mjwt.JWTManager) *AuthServer {
	return &AuthServer{
		UserStore:  userStore,
		JwtManager: jwtManager,
	}
}

func (server *AuthServer) Refresh(ctx context.Context, req *model.RefreshReq) (*model.LoginResponse, error) {
	claims, err := server.JwtManager.VerifyRefresh(req.RefreshToken)
	if err != nil {
		return nil, err
	}
	user, err := server.UserStore.FindById(claims.ID)
	if err != nil {
		return nil, err
	}
	tokens, err := server.JwtManager.Generate(user)
	if err != nil {
		return nil, err
	}
	return &model.LoginResponse{
		AccessToken:  tokens[0],
		RefreshToken: tokens[1],
		Id:           user.ID,
	}, nil

}

func (server *AuthServer) Login(ctx context.Context, req *model.LoginRequest) (*model.LoginResponse, error) {
	user, err := server.UserStore.Find(req.GetUsername())
	if err != nil {
		return nil, status.Errorf(codes.Internal, "cannot find user: %v", err)
	}

	if user == nil || !user.IsCorrectPass(req.GetPassword()) {
		return nil, status.Errorf(codes.NotFound, "incorrect username/password")
	}

	token, err := server.JwtManager.Generate(user)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "cannot generate access token")
	}

	res := &model.LoginResponse{AccessToken: token[0], RefreshToken: token[1], Id: user.ID}
	return res, nil
}

func (server *AuthServer) SingUp(ctx context.Context, req *model.LoginRequest) (*model.LoginResponse, error) {
	user, err := server.UserStore.SingUp(req.GetUsername(), req.GetPassword())
	if err != nil {
		return nil, status.Errorf(codes.Internal, "cannot create user: %v", err)
	}

	token, err := server.JwtManager.Generate(user)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "cannot generate access token")
	}

	res := &model.LoginResponse{AccessToken: token[0], RefreshToken: token[1], Id: user.ID}
	return res, nil
}
