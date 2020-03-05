FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /application \
 && mkdir /application/application-name \
 && mkdir /application/application-name/www

COPY www/ /application/application-name/www/

RUN cp -r /application/application-name/www/* /var/www/html/.