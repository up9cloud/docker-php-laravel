# docker-php-laravel [![Docker Build Statu](https://img.shields.io/docker/build/sstc/php-laravel.svg)](https://hub.docker.com/r/sstc/php-laravel/)

PHP dependencies installed for Laravel 5.5~7.x

## Usage

```sh
docker run \
-d \
--name app \
-p 80:80 \
-v `pwd`:/var/www/html \
sstc/php-laravel:apache
```

## Version

| Laravel   | PHP      |
| --------- | -------- |
| 5.5       | >= 7.0.0 |
| 5.6 ~ 5.8 | >= 7.1.3 |
| 6.x       | >= 7.2.0 |
| 7.x       | >= 7.2.5 |
