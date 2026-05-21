#!/usr/bin/env bash

docker login
docker buildx create --name docker-multiplatform --bootstrap --use
docker buildx build --push --platform linux/amd64,linux/arm64 --build-arg PHP_VERSION="8.3" -t ghcr.io/webaps/frankenphp:8.3 .