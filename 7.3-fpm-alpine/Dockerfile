FROM php:7.3-fpm-alpine

# https://laravel.com/docs/7.x/installation
RUN \
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
RUN \
# gd
# https://github.com/docker-library/php/issues/225#issuecomment-226870896
	apk add --no-cache \
		freetype \
		libpng \
		libjpeg-turbo \
		freetype-dev \
		libpng-dev \
		libjpeg-turbo-dev \
	; \
	docker-php-ext-configure gd \
		--with-gd \
		--with-freetype-dir=/usr/include/ \
		--with-png-dir=/usr/include/ \
		--with-jpeg-dir=/usr/include/ \
	; \
	docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) gd; \
	apk del \
		freetype-dev \
		libpng-dev \
		libjpeg-turbo-dev
