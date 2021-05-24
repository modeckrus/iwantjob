export PATH="$PATH":"$HOME/flutter/.pub-cache/bin"
protoc --go-grpc_out=. --go_out=. --dart_out=grpc:./client/lib/proto proto/iwantjob.proto
