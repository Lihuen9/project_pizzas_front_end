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
// echo "CRUD";
$sql="select username, email from users";
$row=$con->query($sql); //conexion a la base de datos, consulta y devuelve un DATASET (conjunto de datos).
echo "<h1> Listado </h1>";
foreach($row as $col) { //recorre un array asociativo
    echo "<br>";
    echo $col ["username"];
    echo "<br>";
    echo $col ["email"];
    echo "<br>";
    echo "---------------";
    


}


closeCon($con);

?>