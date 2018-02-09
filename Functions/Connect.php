<?php
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASSWORD','');
	define('DB','maps');
	$link = new mysqli('localhost','root','', 'maps');
	$link->query('SET NAMES "utf8"');
?>