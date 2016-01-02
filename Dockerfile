# Debian: Nginx 1.9.9 (PHP-FastCGI)
#
# VERSION 0.0.1

#
# Pull the base image.
#
FROM debian:jessie

#
# Set the author.
#
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

#
# Add nginx repository.
#
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list

#
# Set NGINX_Version environment variable.
#
ENV NGINX_VERSION 1.9.9-1~jessie

#
# Update apt and install:
# 
# 	- openssl
# 	- ca-certificates
# 	- nginx
# 
# Remove "/var/lib/apt/lists/*".
#
RUN apt-get update && \
    apt-get install -y openssl ca-certificates nginx=${NGINX_VERSION} && \
    rm -rf /var/lib/apt/lists/*

#
# Remove default configuration files.
#
RUN rm -rf /etc/nginx/conf.d/*

#
# Add managed /etc/nginx/nginx.conf.
#
ADD files/etc/nginx/nginx.conf /etc/nginx/nginx.conf

