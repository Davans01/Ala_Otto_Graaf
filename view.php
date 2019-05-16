<!DOCTYPE html>
<?php include('includes/config.php') ?>
<?php include('classes/product.php') ?>
<?php
if (!isset($_GET['id'])) {
    header("Location: /");
}
else {
    $product = new Product($_GET['id']);
}
?>
<html lang="nl">
    <head>
        <?php include('includes/head.php') ?>
    </head>
    <body>
        <?php include('includes/header.php') ?>
        
        <div class="details"><center>
            <?php
            $details = $product->details();
            // print_r($details);
            echo "<img width='50%' src='".$details['image']."'><br>";
            echo $details['name']."<br>";
            echo "<br>";
            echo $details['description'];
            echo "<br><br>";
            echo "Prijs: ".$details['price'];
            echo "<form method='post'>";
            echo "<input type='hidden' name='itemid' value='".$details['id']."'>";
            echo "<input type='submit' class='button' name='insert' value='voeg toe aan winkelwagen' /> ";

            ?>

        </center></div>
        <?php include('includes/footer.php') ?>
    </body>
</html>
