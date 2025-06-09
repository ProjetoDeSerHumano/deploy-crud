# apache
FROM php:7.4-apache

# php pro banco
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql pdo_mysql mysqli

#manda o site pra pasta certa
COPY . /var/www/html

RUN chown -R www-data:www-data /var/www/html
