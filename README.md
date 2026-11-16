# JOT-Proto

Versioned Protobuf contracts and language bindings for JOT.

- [`proto/judge/v1/judge.proto`](proto/judge/v1/judge.proto): judge service contract (`jot.judge.v1`).
- [`rust/`](rust/): `jot-proto` Rust crate with generated Protobuf types and Tonic gRPC bindings.
- [`go/`](go/): Go module with generated Protobuf types and gRPC bindings.

The Rust crate is versioned independently, with its major version matching the protocol major version. To regenerate Rust bindings after editing a protocol, follow the [Rust crate instructions](rust/README.md).

## Go bindings

Import `github.com/judge-master/JOT-Proto/go/judge/v1` as `judgev1`.
To regenerate the bindings, install `protoc` and the Go plugins, then run:

```sh
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.36.11
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.5.1
./go/generate.sh
```

Ensure the Go binary installation directory (`GOBIN`, or `$(go env GOPATH)/bin`
by default) is on your `PATH`.

Licensed under [Apache-2.0](LICENSE).
