<?php
session_start();
if ($_SESSION['logueado']) {
    $idUpt = $_GET['q'];
    include_once("config_products.php");
    include_once("db.php");
    $link = new Db();
    $sql = "SELECT p.id_product as id_product, p.product_name, p.price, c.category_name from products p inner join categories c on p.id_category=c.id_category where id_product=".$idUpt;
    $stmt = $link->prepare($sql);
    $stmt->execute();
    $data = $stmt->fetch();
    echo $data['id_product'];
    

}

?>

