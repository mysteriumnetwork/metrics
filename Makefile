.PHONY: install-protoc-gen-go compile-proto

PROTOC_VERSION="v1.3.1"
GOPATH = $(shell go env GOPATH)

install-protoc-gen-go:
	@go get -u github.com/golang/protobuf/protoc-gen-go
	@git -C "$$(go env GOPATH)"/src/github.com/golang/protobuf checkout $(PROTOC_VERSION)
	@go install github.com/golang/protobuf/protoc-gen-go

compile-proto:
	@protoc --go_out="$(GOPATH)/src" metrics.proto
