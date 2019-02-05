#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# # Alpine 3.9 + SBCL
DOCKER_REPO_BASE="alpine-sbcl"
IMG_TAG=3.9

docker build -f Dockerfile.${IMG_TAG} -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

# # Alpine Edge + SBCL
DOCKER_REPO_BASE="alpine-sbcl"
IMG_TAG=edge

docker build -f Dockerfile.${IMG_TAG} -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}
