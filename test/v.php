<?php
$compare = $argv[2] ? $argv[2] : '>=';
if (!version_compare(PHP_VERSION, $argv[1], $compare)) {
	echo('Error: ' . PHP_VERSION . $compare . $argv[1]);
	exit(1);
}
