FROM php:8.0-fpm-alpine

LABEL maintainer Bricx Carasco <bricxraincarasco21@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql