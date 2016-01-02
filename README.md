## Docker: Debian - NGINX (PHP-FastCGI)

**Dockerfile** of [Debian](https://www.debian.org/) [NGINX](https://www.nginx.com/) with FastCGI configured for PHP.

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image:*
- [debian:jessie](https://hub.docker.com/_/debian/)

### Development

    $ docker build -t="nginx/phpfcgi" -f ./Dockerfile .

Creates an image with the tag `nginx/phpfcgi`.
