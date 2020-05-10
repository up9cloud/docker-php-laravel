<?php
try {
	$dbh = new PDO("mysql:host=localhost;dbname=test", 'root', '');
} catch (\Exception $e) {
	if ($e instanceof \PDOException) {
		if (!preg_match('/driver/', $e->getMessage())) {
			exit(0);
		}
	}
	throw $e;
}
