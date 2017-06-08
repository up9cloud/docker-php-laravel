# docker-php-laravel
php dependencies installed for Laravel 5

## Usage

```sh
docker run \
-d \
--name app \
-p 80:80 \
-v `pwd`:/var/www/html \
sstc/php-laravel:apache
```
