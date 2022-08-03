<?php
include_once "config_login.php";


function openCom()
{
$dsn = "mysql:dbname=".DATABASE_NAME.";host=".SERVER_NAME;
$link = new PDO ($dsn, USER_NAME, PASSWORD);
// echo "conexion exitosa";
return $link;
}

function closeCon($a){
    $a=null;
}

// Invocación 
$con=openCom();

// Operaciones CRUD
echo "CRUD";

closeCon($con);

?>