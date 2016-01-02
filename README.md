## Docker: Debian - NGINX (PHP-FastCGI)

[![Build Status](https://travis-ci.org/ericmdev/docker.debian-nginx-phpfcgi.svg?branch=master)](https://travis-ci.org/ericmdev/docker.debian-nginx-phpfcgi)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) with FastCGI for PHP.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [debian:jessie](https://hub.docker.com/_/debian/)

*Process*
- NGINX (ver. 1.9.9)

### Development

    $ docker build -t nginx/phpfcgi -f ./Dockerfile .

Creates an image with the tag `nginx/phpfcgi`.

### Usage

    $ docker run -d --name=nginx_phpfcgi -p 8888:80 nginx/phpfcgi

Creates and starts a container with the name `nginx_phpfcgi` mapped to host port `8888`.
