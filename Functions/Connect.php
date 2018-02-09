<?php
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASSWORD','');
	define('DB','maps');
	$link = new mysqli(DB_HOST,DB_USER,DB_PASSWORD, DB);
	$link->query('SET NAMES "utf8"');
?>
