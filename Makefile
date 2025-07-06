PROTO_FILES = proto/user/user.proto proto/task/task.proto
OUT_DIR = .

generate:
	protoc \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
		$(PROTO_FILES)

clean:
	del /S /Q proto\*.pb.go