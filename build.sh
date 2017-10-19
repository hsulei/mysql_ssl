#!/bin/sh

set -e

REGISTRY_HOST="xxx"
printf "\033[92m[%-13s]\033[0m %s\n" "registry host" $REGISTRY_HOST

echo "start build mysql_ssl docker"
docker build  -t $REGISTRY_HOST:port/name:tag .
# docker push  $REGISTRY_HOST:port/name:tag
