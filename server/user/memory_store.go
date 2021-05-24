package user

import (
	"fmt"
	"strconv"
	"sync"

	"golang.org/x/crypto/bcrypt"
)

type MemoryUserStore struct {
	mutex sync.Mutex
	users map[string]*User
}

func NewInMemoryUserStore() *MemoryUserStore {
	return &MemoryUserStore{
		users: make(map[string]*User),
	}
}

func (store *MemoryUserStore) Save(user *User) error {
	store.mutex.Lock()
	defer store.mutex.Unlock()

	if store.users[user.Name] != nil {
		return fmt.Errorf("Already exist")
	}

	store.users[user.Name] = user.Clone(strconv.Itoa(len(store.users)))
	return nil
}
func (store *MemoryUserStore) Find(username string) (*User, error) {
	store.mutex.Lock()
	defer store.mutex.Unlock()

	user := store.users[username]
	if user == nil {
		return nil, nil
	}

	return user.Clone(user.ID), nil
}

func (store *MemoryUserStore) SingUp(username string, password string) (*User, error) {
	store.mutex.Lock()
	defer store.mutex.Unlock()

	user := store.users[username]
	if user != nil {
		return nil, fmt.Errorf("AlreadyExist")
	}
	hpass, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	if err != nil {
		return nil, err
	}
	store.users[username] = &User{
		ID:             strconv.Itoa(len(store.users)),
		Name:           username,
		HashedPassword: string(hpass),
		Role:           "user",
	}
	user = store.users[username]
	return user.Clone(user.ID), nil
}

func (store *MemoryUserStore) FindById(id string) (*User, error) {
	store.mutex.Lock()
	defer store.mutex.Unlock()

	for _, u := range store.users {
		if u.ID == id {
			return u.Clone(u.ID), nil
		}
	}
	return nil, fmt.Errorf("Not found")
}
