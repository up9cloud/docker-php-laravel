FROM php:7.3-apache

# https://laravel.com/docs/7.x/installation
RUN set -xe; \
	apt update; \
# BCMath PHP Extension
	docker-php-ext-install bcmath; \
# Ctype PHP Extension
# Fileinfo PHP extension
# JSON PHP Extension
# Mbstring PHP Extension
# OpenSSL PHP Extension
# PDO PHP Extension
	docker-php-ext-install pdo_mysql;
# Tokenizer PHP Extensions
# XML PHP Extension

# Others
RUN set -xe; \
# gd
	apt install -y --no-install-recommends \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	; \
	docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/; \
	docker-php-ext-install -j$(nproc) gd; \
	apt remove -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	;

RUN a2enmod rewrite

# Cleanup
RUN rm -rf /var/lib/apt/lists/*
