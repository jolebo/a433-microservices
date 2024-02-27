#!/bin/bash

# melakukan build image dari perintah di file Dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# menampilkan image yang ada
docker image ls

# mengubah nama images sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/jolebo/item-app:v1

# login ke github packages via terminal
docker login ghcr.io -u jolebo

# push images ke github packages
docker push ghcr.io/jolebo/item-app:v1