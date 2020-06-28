#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NOCOLOR='\033[0m'

echo "${RED}Stopping containers ...${NOCOLOR}"

docker stop laravel-php laravel-nginx-server laravel-mysql-server laravel-phpmyadmin

echo "${GREEN}Removing containers ...${NOCOLOR}"

docker rm laravel-php laravel-nginx-server laravel-mysql-server laravel-phpmyadmin

echo "${YELLOW}Build and up all containers ...${NOCOLOR}"

docker-compose build && docker-compose up -d

sudo chmod 777 -R src/storage/ src/bootstrap/cache/

echo "${GREEN}Process done ...${NOCOLOR}"
echo "${YELLOW}Happy coding !! :-)${NOCOLOR}"