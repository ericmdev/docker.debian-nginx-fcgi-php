## Docker: Debian - NGINX (FastCGI for PHP)

[![Build Status](https://travis-ci.org/ericmdev/docker.debian-nginx-phpfcgi.svg?branch=master)](https://travis-ci.org/ericmdev/docker.debian-nginx-phpfcgi)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) with FastCGI for PHP.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [debian:jessie](https://hub.docker.com/_/debian/)

*Process*
- NGINX (ver. 1.9.9)

### Development

    $ docker build -t nginx/fcgi-php -f ./Dockerfile .

Creates an image with the tag `nginx/fcgi-php`.

### Usage

    $ docker run -d --name=nginx_fcgi_php -p 8888:80 nginx/fcgi-php

Creates and starts a container with the name `nginx_fcgi_php` mapped to host port `8888`.

Access the Bash shell:

    $ docker exec -it nginx_fcgi_php bash

