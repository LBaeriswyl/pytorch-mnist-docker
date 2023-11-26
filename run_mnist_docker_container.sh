#!/bin/bash

IMAGE_NAME="mnist-image"
CONTAINER_NAME="mnist-container"

docker build -t $IMAGE_NAME .
#if we need to capture the output, add '2>&1 | tee docker-run.out' to the end of the command
docker run -it --rm --name $CONTAINER_NAME $IMAGE_NAME 