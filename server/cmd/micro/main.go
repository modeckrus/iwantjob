package main

import (
	"iwantjob/server/grpcs"
	"iwantjob/server/model"
	"log"
	"net"

	"google.golang.org/grpc"
)

func main() {
	s := grpc.NewServer()
	srv := &grpcs.Server{}
	model.RegisterDbServer(s, srv)

	l, err := net.Listen("tcp", ":9000")
	if err != nil {
		log.Fatal(err)
	}
	err = s.Serve(l)
	if err != nil {
		log.Fatal(err)
	}
}
