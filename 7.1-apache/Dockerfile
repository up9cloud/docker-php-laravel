FROM php:7.1-apache

RUN apt update

# https://laravel.com/docs/5.4/installation

###
# Server Requirements
###

# Install openssl
RUN apt install -y --no-install-recommends \
        openssl

# Install pdo_mysql
RUN docker-php-ext-install pdo_mysql

# Install mbstring
RUN docker-php-ext-install mbstring

# Install tokenizer
RUN docker-php-ext-install tokenizer

# Install xml
RUN apt install -y --no-install-recommends \
        libxml2-dev \
    && docker-php-ext-install xml

# Install composer
# https://hub.docker.com/r/composer/composer/~/dockerfile/
# https://getcomposer.org/doc/00-intro.md
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
    && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
    && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { echo 'Invalid installer' . PHP_EOL; exit(1); }" \
    && php /tmp/composer-setup.php --install-dir=/bin --filename=composer \
    && rm /tmp/composer-setup.php

# enable rewrite mod
RUN a2enmod rewrite

###
# Others
###

RUN docker-php-ext-install iconv

# Install mcrypt
RUN apt install -y --no-install-recommends \
        libmcrypt-dev \
    && docker-php-ext-install -j$(nproc) \
        mcrypt

# Install gd
RUN apt install -y --no-install-recommends \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
