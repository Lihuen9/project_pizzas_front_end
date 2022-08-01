<?php
include_once "config_login.php";

$dsn = "mysql:dbname=".DATABASE_NAME.";host=".SERVER_NAME;

$link = new PDO ($dsn, USER_NAME, PASSWORD);

echo "conexion exitosa"


?>