UBUNTU_VERSION = 18.04
CUDA=10.0
CUDNN=7

NAME = harbor.ihomefnt.com/ai/nvidia-cuda-runtime
VERSION = 10.0-cudnn7-py3.6-ubuntu18.04

.PHONY: build start push

build: build-version

build-version:
	docker build -t --build-arg UBUNTU_VERSION=${UBUNTU_VERSION} --build-arg CUDA=${CUDA} --build-arg CUDNN=${CUDNN} ${NAME}:${VERSION}  .

tag-latest:
	docker tag ${NAME}:${VERSION} ${NAME}:latest

start:
	docker run -it --rm ${NAME}:${VERSION} /bin/bash

push: build-version tag-latest
	docker push ${NAME}:${VERSION}; docker push ${NAME}:latest