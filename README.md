## Dockerfile: Debian - NGINX

[![Build Status](https://travis-ci.org/ericmdev/nginx.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/nginx.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/).

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [ericmdev/essentials](https://hub.docker.com/r/ericmdev/essentials/)

*Docker Pull Command*
- `docker pull ericmdev/nginx`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.