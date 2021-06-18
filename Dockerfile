FROM php:7.2-fpm-alpine

LABEL maintainer Bricx Carasco <bricxraincarasco21@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql