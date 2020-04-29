#!/bin/sh
cd backend
#stopping and removing the webapp containers if they exist
docker stop vault-demo-webapp
docker rm vault-demo-webapp
#build the container for our python webapp
docker build -t kaparora/vault-demo-webapp:latest .
#run the container and expose port 5000
docker run --name vault-demo-webapp --network dev-network -p 5000:5000 kaparora/vault-demo-webapp:latest &