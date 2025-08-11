proto:
	protoc auth/v1/auth.proto \
		--proto_path=. \
		--go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		--validate_out=lang=go,paths=source_relative:.

	protoc link/v1/link.proto \
		--proto_path=. \
		--go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		--validate_out=lang=go,paths=source_relative:.