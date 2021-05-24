package mjwt

import "github.com/dgrijalva/jwt-go"

type UserClaims struct {
	jwt.StandardClaims
	ID       string `json:"id"`
	Username string `json:"username"`
	Role     string `json:"role"`
}

type RefreshClaims struct {
	jwt.StandardClaims
	ID string `json:"id"`
}
