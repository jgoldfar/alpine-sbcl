Bootstrapped SBCL build on Alpine
=====

[![Docker Pulls](https://img.shields.io/docker/pulls/jgoldfar/alpine-sbcl.svg)](https://hub.docker.com/r/jgoldfar/alpine-sbcl/)

[![Build and push docker images](https://github.com/jgoldfar/alpine-sbcl/actions/workflows/build-and-push-images.yml/badge.svg)](https://github.com/jgoldfar/alpine-sbcl/actions/workflows/build-and-push-images.yml)

Updated images for a [SBCL](https://www.github.com/sbcl/sbcl) build for Alpine.

> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

For more information, reach out to the team at [desert.frog.solutions@gmail.com](mailto:desert.frog.solutions@gmail.com) or [desertfrogsolutions.com](https://desertfrogsolutions.com)


Setup
-----
Get [Docker](http://www.docker.io/) configured on your system, then build the image with

```shell
docker build -t jgoldfar/alpine-sbcl -f Dockerfile.3.17 .
```

Usage:
-----

```shell
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$(pwd)":/data jgoldfar/alpine-sbcl
```

The `WORKDIR` in the container is `/data`, and with the above command the working directory is mounted to `/data` inside container.
