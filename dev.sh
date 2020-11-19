#!/bin/bash

# build image curso:base
docker build -t curso:base .

# run launcher in localhost:3000
docker run -d \
    -p 3000:80 \
    -v $PWD/launcher:/usr/share/nginx/html:ro \
    nginx:latest

# run curso istio in localhost:3001
docker run -d \
    -p 3001:3000 \
    -v $PWD/cursos/istio:/usr/local/docsify \
    curso:base

# run curso docker in localhost:3002
docker run -d \
    -p 3002:3000 \
    -v $PWD/cursos/docker:/usr/local/docsify \
    curso:base

# run curso dockerimages in localhost:3003
docker run -d \
    -p 3003:3000 \
    -v $PWD/cursos/docker-images:/usr/local/docsify \
    curso:base
