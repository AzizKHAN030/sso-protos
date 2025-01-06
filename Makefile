# Variables
PROTO_SRC_DIR=proto
PROTO_OUT_DIR=gen/go
PROTO_FILES=$(PROTO_SRC_DIR)/sso/sso.proto
PROTOC_OPTS=--go_out=$(PROTO_OUT_DIR) --go_opt=paths=source_relative \
            --go-grpc_out=$(PROTO_OUT_DIR) --go-grpc_opt=paths=source_relative

# Targets
all: proto

proto:
	protoc -I $(PROTO_SRC_DIR) $(PROTO_FILES) $(PROTOC_OPTS)

clean:
	rm -rf $(PROTO_OUT_DIR)/sso

.PHONY: all proto clean