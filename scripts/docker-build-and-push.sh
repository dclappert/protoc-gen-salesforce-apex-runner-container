#!/bin/bash

VERSION=$1
IMAGE_NAME="ghcr.io/dclappert/protoc-gen-salesforce-apex-runner-container"

# Build the Docker image
docker build . --file Dockerfile --tag $IMAGE_NAME:$VERSION

# Login to GitHub Content Registry
echo $GITHUB_TOKEN | docker login ghcr.io -u $ --password-stdin

# Push the Docker image
docker push $IMAGE_NAME:$VERSION
