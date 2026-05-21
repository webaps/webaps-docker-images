#!/usr/bin/env bash

docker login
docker buildx create --name docker-multiplatform --bootstrap --use
docker buildx build --push --platform linux/amd64,linux/arm64 --build-arg MYSQL_VERSION="8.0" -t ghcr.io/webaps/mysql:8.0 .
