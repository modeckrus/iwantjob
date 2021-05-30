package grpcs

import (
	"context"
	"iwantjob/server/mjwt"
	"log"

	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

type AuthInterceptor struct {
	jwtManager      *mjwt.JWTManager
	accessibleRoles map[string][]string
}

func NewAuthInterceptor(jwtManager *mjwt.JWTManager, accessibleRoles map[string][]string) *AuthInterceptor {
	return &AuthInterceptor{jwtManager, accessibleRoles}
}

func (interceptor *AuthInterceptor) Unary() grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (interface{}, error) {
		log.SetPrefix(info.FullMethod)
		log.Println("--> unary interceptor: ", info.FullMethod)

		claims, err := interceptor.Authorize(ctx, info.FullMethod)
		if err != nil {
			return nil, err
		}
		// claims := &mjwt.UserClaims{
		// 	ID:       "60abd2caa2c042862a093c65",
		// 	Username: "admin",
		// 	Role:     "admin",
		// }
		if claims != nil {
			ctx = context.WithValue(ctx, "claims", claims)
		}
		return handler(ctx, req)
	}
}

func (interceptor *AuthInterceptor) Stream() grpc.StreamServerInterceptor {
	return func(
		srv interface{},
		stream grpc.ServerStream,
		info *grpc.StreamServerInfo,
		handler grpc.StreamHandler,
	) error {
		log.SetPrefix(info.FullMethod)
		log.Println("--> stream interceptor: ", info.FullMethod)

		_, err := interceptor.Authorize(stream.Context(), info.FullMethod)
		if err != nil {
			return err
		}

		return handler(srv, stream)
	}
}

func (interceptor *AuthInterceptor) Authorize(ctx context.Context, method string) (*mjwt.UserClaims, error) {
	accessibleRoles, ok := interceptor.accessibleRoles[method]
	if !ok {
		// everyone can access
		return nil, nil
	}

	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return nil, status.Errorf(codes.Unauthenticated, "metadata is not provided")
	}

	values := md["authorization"]
	log.Println(md)
	if len(values) == 0 {
		return nil, status.Errorf(codes.Unauthenticated, "authorization token is not provided")
	}

	accessToken := values[0]
	claims, err := interceptor.jwtManager.Verify(accessToken)
	if err != nil {
		return nil, status.Errorf(3000, "access token is invalid: %v", err)
	}
	for _, role := range accessibleRoles {
		if role == claims.Role {
			return claims, nil
		}
	}

	return nil, status.Error(codes.PermissionDenied, "no permission to access this RPC")
}
