all:
	go mod tidy
	go mod vendor
	cp -r pkg/config vendor
	cp -r pkg/complete vendor
	go build -o ax cmd/ax/*
# 	go install github.com/egnyte/ax/cmd/ax

test:
	go test ./cmd/... ./pkg/...

deps:
	dep ensure

release:
	rm -rf dist bin
	goreleaser
