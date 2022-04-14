FROM alpine:3.12.2

# install docker-registry and htpasswd
RUN apk update
RUN apk add docker-registry
RUN apk add apache2-utils
RUN apk add openssl

# create docker directory for certs
RUN mkdir /etc/docker

# copy configuration and htpasswd file for secure login
ADD config.yml /etc/docker-registry/config.yml

# copy entrypoint script
ADD entrypoint.sh /entrypoint.sh

# set the entry point
ENTRYPOINT sh /entrypoint.sh
