# apache
FROM php:8.2-apache

# php pro banco
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql pdo_mysql mysqli

#manda o site pra pasta certa
COPY . /var/www/html

