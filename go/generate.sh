#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$repo_root"

for tool in protoc protoc-gen-go protoc-gen-go-grpc; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    printf 'Required tool not found in PATH: %s\n' "$tool" >&2
    exit 1
  fi
done

protoc -I proto proto/judge/v1/judge.proto \
  --go_out=go --go_opt=paths=source_relative \
  --go-grpc_out=go --go-grpc_opt=paths=source_relative
