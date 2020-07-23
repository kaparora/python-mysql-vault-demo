#!/bin/sh
set -o xtrace
#create a docker dev network for your containers
docker network create dev-network