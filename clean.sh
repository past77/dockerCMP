#!/bin/sh

docker volume prune
docker rm dockercmp_springboot_1
docker rm pgdb
mvn clean install
docker-compose up -d --build
docker-compose up