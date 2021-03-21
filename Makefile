.PHONY: build

build:
	docker build -t lambda-container-image-example .

dev: build
	docker run --rm -p 8080:8080  lambda-container-image-example:latest
