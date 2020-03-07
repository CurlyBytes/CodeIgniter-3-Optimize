FROM php:7.2-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
#RUN pecl install xdebug
#RUN docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY composer.json composer.json
RUN composer install 

COPY ./ /var/www/html
