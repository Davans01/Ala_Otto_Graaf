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
            // Funtion get_all_landen
            if (isset($_GET['catid'])) {
                $catid = $_GET['catid'];
            }
            else {
                $catid = false;
            }
            $products = get_all_products($catid);
            // Foreach product make a image with a href
            foreach ( $products as $product ) {
                //
                echo "<a href='view.php?id=".$product['id']."'><img class='picture' src='" .$product['image'] ."'></a>";
            }
            ?>
        </div>
        <!-- Include footer.php -->
        <?php include('includes/footer.php') ?>
    </body>
</html>
