<!DOCTYPE html>
<?php include('includes/config.php') ?>
<html lang="nl">
    <head>
<<<<<<< HEAD
      <title>portfolio</title>
       <meta charset="UTF-8">
      <link rel="stylesheet" href="css/otto.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      </head>
      <body>
      <div class="bg-img">
        <div class="container">
          <div class="topnav">
              <img class="logo" src="images/logo.png">
            <a href="#news">Video</a>
            <a href="#contact">Foto</a>
            <a href="#about">Portfolio</a>
            <a class="active" href="#about">Home</a>
          </div>
        </div>
      </div>
      <nav class="product-view">
        <i class="fa fa-th btn-gallery active"></i>
        <i class="fa fa-list btn-list"></i>
      </nav>
<br><br>
      <div class="gallery">
        <img class="picture" src="images/chi-liu-1552956-unsplash.jpg">
        <img class="picture" src="images/benjamin-voros-575800-unsplash.jpg">
        <img class="picture" src="images/dimitry-anikin-1461827-unsplash.jpg">
        <img class="picture" src="images/dominic-krainer-1381989-unsplash.jpg">
        <img class="picture" src="images/erzsebet-vehofsics-1401802-unsplash.jpg">
        <img class="picture" src="images/sebastien-jermer-27003-unsplash.jpg">
        <img class="picture" src="images/jordan-arnold-1513926-unsplash.jpg">
        <img class="picture" src="images/michael-liao-1508603-unsplash.jpg">
        <img class="picture" src="images/mark-mathew-1289706-unsplash.jpg">
        <img class="picture" src="images/pablo-guerrero-1308486-unsplash.jpg">
        <img class="picture" src="images/luca-micheli-455516-unsplash.jpg">
        <img class="picture" src="images/maarten-deckers-234714-unsplash.jpg">
        <img class="picture" src="images/oliver-ash-1279414-unsplash.jpg">
        <img class="picture" src="images/daniel-ferrandiz-mont-1316873-unsplash.jpg">

      </div>
      <script>
$(".picture").mouseenter(function(){
 $(this).animate({opacity:1},200);
});

$(".picture").mouseleave(function(){
 $(this).animate({opacity:0.8},200);
});
      </script>
     </html>

      <?php
      include("includes/footer.php");
      ?>
      </body>
     </html>
=======
        <?php include('includes/head.php') ?>
    </head>
    <body>
        <?php include('includes/header.php') ?>
        
        <div class="gallery">
            <?php
            $products = get_all_products();
            foreach ( $products as $product ) {
                //
                echo "<a href='view.php?id=".$product['id']."'><img class='picture' src='" .$product['image'] ."'></a>";
            }
            ?>

        <!-- <a href="view.php"><img class="picture" src="images/chi-liu-1552956-unsplash.jpg"></a>
            <img class="picture" src="images/benjamin-voros-575800-unsplash.jpg">
            <img class="picture" src="images/dimitry-anikin-1461827-unsplash.jpg">
            <img class="picture" src="images/dominic-krainer-1381989-unsplash.jpg">
            <img class="picture" src="images/erzsebet-vehofsics-1401802-unsplash.jpg">
            <img class="picture" src="images/sebastien-jermer-27003-unsplash.jpg">
            <img class="picture" src="images/jordan-arnold-1513926-unsplash.jpg">
            <img class="picture" src="images/michael-liao-1508603-unsplash.jpg">
            <img class="picture" src="images/mark-mathew-1289706-unsplash.jpg">
            <img class="picture" src="images/pablo-guerrero-1308486-unsplash.jpg">
            <img class="picture" src="images/luca-micheli-455516-unsplash.jpg">
            <img class="picture" src="images/maarten-deckers-234714-unsplash.jpg">
            <img class="picture" src="images/oliver-ash-1279414-unsplash.jpg">
            <img class="picture" src="images/daniel-ferrandiz-mont-1316873-unsplash.jpg"> -->
        </div>
        <?php include('includes/footer.php') ?>
    </body>
</html>
>>>>>>> c61e15be08d77b9544e4e53ee61982d4bf1080a9
