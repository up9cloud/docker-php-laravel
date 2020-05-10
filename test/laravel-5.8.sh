#/bin/bash

__DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGE=p7
CMD="docker run --rm -v $__DIR__:/app -w /app $IMAGE"

set -xe; \
$CMD php v.php 7.1.3 \
# Requirements
$CMD php bcmath.php; \
$CMD php ctype.php; \
$CMD php json.php; \
$CMD php mbstring.php; \
$CMD php openssl.php; \
$CMD php pdo_mysql.php; \
$CMD php tokenizer.php; \
$CMD php xml.php; \
# Others
$CMD php iconv.php; \
$CMD php mcrypt.php; \
$CMD php gd.php;
