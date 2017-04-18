GOARCH ?= amd64
GOOS ?= linux

build:
	mkdir -p bin
	GOOS=$(GOOS) GOARCH=$(GOARCH) CGO_ENABLED=0 go build -a -o bin/server server.go

image:
	docker build -t local/scratchexample -f ./Dockerfile .

all: build image

run:
	docker run --rm -d -P local/scratchexample

.PHONY: build image all run
