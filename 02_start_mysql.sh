#!/bin/sh
set -o xtrace
#pulling mysql docker image
docker pull mysql/mysql-server:5.7.21
#creating a directory on the host to persist mysql data
mkdir ~/vault-demo-data
#Running mysql docker container
echo "Starting MySQL"
docker run --name vault-demo-mysql \
  -p 3306:3306 \
  -v ~/vault-demo-data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_ROOT_HOST=% \
  -e MYSQL_DATABASE=my_app \
  -e MYSQL_USER=vault \
  -e MYSQL_PASSWORD=vaultpw \
  --network dev-network \
  -d mysql/mysql-server:5.7.21

