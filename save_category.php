<?php
$category=$_POST['categoria'];

/* para verificaciòn:
   echo $products . $price . $category; */


include_once("config_products.php");
include_once("db.php");

$link=new Db();



$sql="INSERT into categories (category_name) values (:category)";

$stmt = $link->prepare($sql);

$stmt ->bindValue('category', $category);

if ($stmt->execute()) {
    ?>
    <script>
        alert("Categoria ingresada!");
        window.location="insert_category.php";
        </script>
    <?php
      
}























?>