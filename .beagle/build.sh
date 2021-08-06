#!/usr/bin/env bash

set -ex

mkdir -p dist

export GOARCH=amd64
go build -ldflags="-w -s" -o "dist/linux-$GOARCH/docker-proxy" ./cmd/proxy

export GOARCH=arm64
go build -ldflags="-w -s" -o "dist/linux-$GOARCH/docker-proxy" ./cmd/proxy

export GOARCH=ppc64le
go build -ldflags="-w -s" -o "dist/linux-$GOARCH/docker-proxy" ./cmd/proxy