## Dockerfile: Debian - NGINX (FastCGI for PHP)

[![Build Status](https://travis-ci.org/ericmdev/dockerfile.nginx-phpfcgi.svg?branch=master)](https://travis-ci.org/ericmdev/dockerfile.nginx-phpfcgi)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) with FastCGI for PHP.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [debian:jessie](https://hub.docker.com/_/debian/)

*Process*
- nginx (1.9.9)

*Docker Pull Command*
- `docker pull ericmdev/nginx-phpfcgi`

### Development

    $ docker build -t nginx-phpfcgi -f ./Dockerfile .

Creates an image with the tag `nginx-phpfcgi`.

### Usage

    $ docker run -d --name=nginx_phpfcgi -p 8888:80 nginx-phpfcgi
