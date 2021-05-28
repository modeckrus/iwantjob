package mjwt

import (
	"fmt"
	"iwantjob/server/m"
	"time"

	"github.com/dgrijalva/jwt-go"
)

type JWTManager struct {
	secretKey       string
	tokenDuration   time.Duration
	refreshDuration time.Duration
}

func NewJWTManager(secretKey string, tokenDuration time.Duration, refreshDuration time.Duration) *JWTManager {
	return &JWTManager{secretKey, tokenDuration, refreshDuration}
}

func (manager *JWTManager) Generate(user *m.User) ([]string, error) {
	claims := UserClaims{
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: time.Now().Add(manager.tokenDuration).Unix(),
		},
		Username: user.Name,
		Role:     user.Role,
		ID:       user.ID,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	ret := make([]string, 2)
	t, err := token.SignedString([]byte(manager.secretKey))
	if err != nil {
		return nil, err
	}
	ret[0] = t
	rclaims := RefreshClaims{
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: time.Now().Add(manager.tokenDuration).Unix(),
		},
		ID: user.ID,
	}

	rtoken := jwt.NewWithClaims(jwt.SigningMethodHS256, rclaims)
	r, err := rtoken.SignedString([]byte(manager.secretKey))
	if err != nil {
		return nil, err
	}
	ret[1] = r
	// rclaims := RefreshClaims{
	// 	StandardClaims: jwt.StandardClaims{
	// 		ExpiresAt: time.Now().Add(manager.refreshDuration).Unix(),
	// 	},
	// 	ID: user,
	// }
	// rtoken := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	// r, err := token.SignedString([]byte(manager.secretKey))
	return ret, nil
}

func (manager *JWTManager) Verify(accessToken string) (*UserClaims, error) {
	token, err := jwt.ParseWithClaims(
		accessToken,
		&UserClaims{},
		func(token *jwt.Token) (interface{}, error) {
			_, ok := token.Method.(*jwt.SigningMethodHMAC)
			if !ok {
				return nil, fmt.Errorf("unexpected token signing method")
			}

			return []byte(manager.secretKey), nil
		},
	)

	if err != nil {
		return nil, fmt.Errorf("invalid token: %w", err)
	}

	claims, ok := token.Claims.(*UserClaims)
	if !ok {
		return nil, fmt.Errorf("invalid token claims")
	}

	return claims, nil
}

func (manager *JWTManager) VerifyRefresh(refreshToken string) (*RefreshClaims, error) {
	token, err := jwt.ParseWithClaims(
		refreshToken,
		&RefreshClaims{},
		func(token *jwt.Token) (interface{}, error) {
			_, ok := token.Method.(*jwt.SigningMethodHMAC)
			if !ok {
				return nil, fmt.Errorf("unexpected token signing method")
			}

			return []byte(manager.secretKey), nil
		},
	)

	if err != nil {
		return nil, fmt.Errorf("invalid token: %w", err)
	}

	claims, ok := token.Claims.(*RefreshClaims)
	if !ok {
		return nil, fmt.Errorf("invalid token claims")
	}

	return claims, nil
}
