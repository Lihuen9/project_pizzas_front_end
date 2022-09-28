<?php
$products=$_POST['producto'];
$price=$_POST['precio'];
$category=$_POST['categoria'];

/* para verificaciòn:
   echo $products . $price . $category; */


include_once("config_products.php");
include_once("db.php");

$link=new Db();
include_once("upload_image.php");
$path_img=$directorio.$nombre_img; //Ruta de la imagen levantada

$sql="INSERT into products (product_name, image, price, id_category) VALUES (:product,:path_img,:price,:category)";

$stmt = $link->prepare($sql);

$stmt ->bindValue('product', $products);
$stmt ->bindValue('price', $price);
$stmt ->bindValue('category', $category);
$stmt ->bindValue('path_img', $path_img); //No es necesario sanear

if ($stmt->execute()) {
    ?>
    <script>
        alert("Producto ingresado!");
        window.location="insert_products.php";
        </script>
    <?php
      
}























?>