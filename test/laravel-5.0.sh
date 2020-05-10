#/bin/bash

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGE=$1
CMD="docker run --rm -v $__DIR__:/app -w /app $IMAGE"

set -xe; \
# https://laravel.com/docs/5.0#server-requirements
$CMD php v.php 5.4; \
$CMD php v.php 7 "<"; \
$CMD php mcrypt.php; \
$CMD php openssl.php; \
$CMD php mbstring.php; \
$CMD php tokenizer.php;
