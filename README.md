# docker-php-laravel [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/sstc/php-laravel)](https://hub.docker.com/r/sstc/php-laravel/)

PHP7 dependencies installed for Laravel

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

| Laravel | PHP           | Image     |
| ------- | ------------- | --------- |
| 4.2     | >= 5.4        | 7.0, 7.1  |
| 5.0     | >= 5.4, < 7   |           |
| 5.1     | >= 5.5.9      | 7.0 ~ 7.4 |
| 5.2     | 5.5.9 ~ 7.1.* | 7.0 ~ 7.1 |
| 5.3     | 5.6.4 ~ 7.1.* | 7.0 ~ 7.1 |
| 5.4     | >= 5.6.4      | 7.0 ~ 7.4 |
| 5.5     | >= 7.0.0      | 7.0 ~ 7.4 |
| 5.6     | >= 7.1.3      | 7.1 ~ 7.4 |
| 5.7     | >= 7.1.3      | 7.1 ~ 7.4 |
| 5.8     | >= 7.1.3      | 7.1 ~ 7.4 |
| 6.x     | >= 7.2.0      | 7.2 ~ 7.4 |
| 7.x     | >= 7.2.5      | 7.2 ~ 7.4 |
