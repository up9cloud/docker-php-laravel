#/bin/bash

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGE=p7
CMD="docker run --rm -v $__DIR__:/app -w /app $IMAGE"

set -xe; \
# $__DIR__/laravel-4.2.sh $IMAGE; \
$__DIR__/laravel-5.1.sh $IMAGE; \
$__DIR__/laravel-5.4.sh $IMAGE; \
$__DIR__/laravel-5.5.sh $IMAGE; \
$__DIR__/laravel-5.6.sh $IMAGE; \
$__DIR__/laravel-5.7.sh $IMAGE; \
$__DIR__/laravel-5.8.sh $IMAGE; \
$__DIR__/laravel-6.x.sh $IMAGE; \
$__DIR__/laravel-7.x.sh $IMAGE; \
# Others
$CMD php iconv.php; \
$CMD php gd.php;
