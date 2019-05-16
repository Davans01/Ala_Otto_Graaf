<!DOCTYPE html>
<!-- Include config.php -->
<?php include('includes/config.php') ?>
<html lang="nl">
    <head>
        <!-- include head.php -->
        <?php include('includes/head.php') ?>
    </head>
    <body>
        <!-- include header.php -->
        <?php include('includes/header.php') ?>

        <div class="gallery">
            <?php
            $products = get_all_landen();
            foreach ( $products as $product ) {
                //
                echo "<a href='view.php?id=".$product['id']."'><img class='picture' src='" .$product['image'] ."'></a>";
            }
            ?>
            <!--
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
                    <!-- Include footer.php -->
                    <?php include('includes/footer.php') ?>
                </body>
            </html>
