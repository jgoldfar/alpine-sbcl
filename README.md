Bootstrapped SBCL build on Alpine
=====

[![Docker Build Status](https://img.shields.io/docker/build/jgoldfar/alpine-sbcl.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/jgoldfar/alpine-sbcl.svg)](https://hub.docker.com/r/jgoldfar/alpine-sbcl/)

Updated images based on [andron94](https://github.com/ANDRON94/dockerfile-sbcl/)'s SBCL build for Alpine.

Setup
-----
First, add your local user to docker group:

```shell
sudo usermod -aG docker YOURUSERNAME
```

build:

```shell
docker build -t jgoldfar/alpine-sbcl .
```

Usage:
-----

```shell
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$(pwd)":/data jgoldfar/alpine-sbcl
```

The `WORKDIR` in the container is `/data`, and with the above command the working directory is mounted to `/data` inside container.
