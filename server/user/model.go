package user

import "iwantjob/server/m"

type UserStore interface {
	Save(user *m.User) error
	Find(name string) (*m.User, error)
	FindById(id string) (*m.User, error)
	SingUp(name string, password string) (*m.User, error)
}
