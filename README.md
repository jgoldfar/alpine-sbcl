Bootstrapped SBCL build on Alpine
=====

[![Docker Build Status](https://img.shields.io/docker/build/jgoldfar/alpine-sbcl.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/jgoldfar/alpine-sbcl.svg)](https://hub.docker.com/r/jgoldfar/alpine-sbcl/)
[![Build Status](https://travis-ci.org/jgoldfar/alpine-sbcl.svg?branch=master)](https://travis-ci.org/jgoldfar/alpine-sbcl)

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

`WORKDIRs` match, mounted to `/data` inside container.
