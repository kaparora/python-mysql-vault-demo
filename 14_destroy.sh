#!/bin/sh
#destroy all containers and mysql delete data directory 
docker stop vault-demo-vault vault-demo-mysql vault-demo-webapp
docker rm vault-demo-vault vault-demo-mysql vault-demo-webapp
docker network rm dev-network
rm -rf ~/vault-demo-data