<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <meta name="description"
      content="Pizzeria La gran Pizza del Napolitano, ubicada en la localidad de San Martín, Provincia de Buenos Aires, dedicada a la venta y entrega a domicilio de la mejor pizza artesenal." />
   <link rel="shortcup icon" href="img/favicon-pizza-16.png" type="image/x-icon" />

   <title>Pizzeria Pizze il Napolitano</title>

   <link rel="preconnect" href="https://fonts.googleapis.com" />
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
   <!--
      <link href="https://fonts.googleapis.com/css2?family=Kalam&display=swap" rel="stylesheet" />
      <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet" />
   -->

   <!-- Font Logo h1 -->
   <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet" />

   <!-- Font general h2 nav li -->
   <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet" />

   <!-- Font gallery -->
   <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet" />

   <link rel="stylesheet" href="css/all.css" />
   <link rel="stylesheet" href="css/styles.css" />

</head>

<body>
   <header>
      <div id="header-container">

         <h1>
            <span class="black">Pizze </span>
            <span class="green">il </span>
            <span class="red">Napolitano</span>
         </h1>
         <nav>
            <ul>
               <li><a href="#">HOME</a></li>
               <li><a href="nosotros.html">NOSOTROS</a></li>
               <li><a href="sucursales.html">SUCURSALES & DELIVERY</a></li>
               <li><a href="contacto.html">CONTACTO</a></li>
            </ul>
         </nav>
      </div>
   </header>

   <div class="main-content">
      <h2>NUESTRAS PIZZAS</h2>
      <ul class="gallery">
         <?php
            include_once("config_products.php");
            include_once("db.php");
            $link = new DB();
            $sql = "select p.product_name, p.price, date_format(p.start_date,'%d/%m/%y')as date, description, p.image, c.category_name FROM products p inner join categories c on c.id_category=p.id_category order by p.price ASC";
            $stmt = $link->prepare($sql);
            $stmt->execute();
            $data=$stmt->fetchAll();
            foreach($data as $row)
            {
             ?>
             <li>
                <div class="box">
                <figure>
                <img src="<?php echo $row['image']?>">
                <figcaption>
                <h3><?php echo $row['category_name']?> <?php echo $row['product_name']?></h3>
                <h4><?php echo $row['description']?></h4>
                <p>$<?php echo $row['price']?></p>
                <time><?php echo $row['date']?></time>
                </figcaption>
                </figure>
                <button class="button" value="5">
                Añadir al carro <span class="fa-solid fa-cart-plus"></span>
                </button>
                </div>
             </li>
             <?php
            }            

         ?>
      </ul>
   </div>

   <footer>
      <div id="link">
         <a href="login.html">Acceso privado</a>
         <p>&copy2022</p>
         
      </div>
   </footer>

   <script>
      /* alert("voy!"); */
      const countButtons = document.querySelectorAll("button").length;

      for (var i = 0; i < countButtons; i++) {
         document.querySelectorAll("button")[i].addEventListener("click", showValue);

      }
      function showValue() {
         console.log(this.value);

      }


   </script>

</body>

</html>