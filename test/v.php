<?php
if (version_compare(PHP_VERSION, $argv[1], '<')) {
	echo('Error: ' . PHP_VERSION . '<' . $argv[1]);
	exit(1);
}
