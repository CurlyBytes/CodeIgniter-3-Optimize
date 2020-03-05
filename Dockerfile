FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /application \
 && mkdir /application/project-name \
 && mkdir /application/project-name/www

COPY ./ /application/project-name/www/

RUN cp -r /application/project-name/www/public/* /var/www/html/.