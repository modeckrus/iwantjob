package m

import "golang.org/x/crypto/bcrypt"

type User struct {
	ID             string `bson:"_id,omitempty"`
	Name           string `bson:"name"`
	HashedPassword string `bson:"hashedPassword"`
	Role           string `bson:"role"`
}

func NewUser(name string, pass string, role string) (*User, error) {
	hpass, err := bcrypt.GenerateFromPassword([]byte(pass), bcrypt.DefaultCost)
	if err != nil {
		return nil, err
	}
	user := &User{
		Name:           name,
		HashedPassword: string(hpass),
		Role:           role,
	}
	return user, nil
}

func (u *User) IsCorrectPass(pass string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(u.HashedPassword), []byte(pass))
	return err == nil
}

func (u *User) Clone(id string) *User {
	return &User{
		ID:             id,
		Name:           u.Name,
		HashedPassword: u.HashedPassword,
		Role:           u.Role,
	}
}
