FROM golang:latest

WORKDIR /app

COPY ./ /app

RUN go mod download
RUN go build -o ./main cmd/monolith/main.go

ENTRYPOINT ./main