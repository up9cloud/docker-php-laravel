#/bin/bash

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGE=$1
CMD="docker run --rm -v $__DIR__:/app -w /app $IMAGE"

set -xe; \
# https://laravel.com/docs/5.6#server-requirements
$CMD php v.php 7.1.3; \
$CMD php openssl.php; \
$CMD php pdo_mysql.php; \
$CMD php mbstring.php; \
$CMD php tokenizer.php; \
$CMD php xml.php; \
$CMD php ctype.php; \
$CMD php json.php;
