FROM alpine:3.12.2

# install docker-registry and htpasswd
RUN apk update
RUN apk add docker-registry
RUN apk add apache2-utils

# copy configuration and htpasswd file for secure login
ADD config.yml /etc/docker-registry/config.yml
ADD shadow /etc/docker-registry/shadow

# set the entry point
ENTRYPOINT docker-registry serve /etc/docker-registry/config.yml
