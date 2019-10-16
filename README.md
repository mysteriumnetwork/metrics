# Mysterium metrics

This repo houses the metrics related code.

## Setup protoc tools

Metrics are described in Protobuf message format. Make sure you have protoc compiler and protoc-gen-go tools installed and available in your $PATH. Installation guide can be found [here](https://github.com/golang/protobuf)

After protoc compiler is installed run `make install-protoc-gen-go` which will install fixed version of protoc-gen-go compatible with [node](https://github.com/mysteriumnetwork/node).

## Compile to go

2. Update metrics.proto contracts according to your needs.

3. Compile proto to go.

```sh
make compile-proto
```
