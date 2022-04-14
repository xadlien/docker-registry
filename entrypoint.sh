#!/bin/bash

echo -e "US\n.\n.\n.\n.\ndanstechjourney\n.\n" | openssl req -x509 -newkey rsa:4096 -keyout /etc/docker/ssl_key -out /etc/docker/ssl_crt -sha256 -days 365 -nodes
docker-registry serve /etc/docker-registry/config.yml