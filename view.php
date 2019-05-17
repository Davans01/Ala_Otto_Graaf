<!DOCTYPE html>
<?php include('includes/config.php') ?>
<?php include('classes/product.php') ?>
<?php
unset($product);
if (!isset($_GET['id'])) {
    header("Location: /");
}
else {
    $product = new Product($_GET['id']);
}
if (isset($_POST['insert'])) {
    $shoppingcart->add_item($_POST['itemid']);
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
            $prod_details = $product->details();
            echo "<img width='50%' src='".$prod_details['image']."'><br>";
            echo $prod_details['name']."<br>";
            echo "<br>";
            echo $prod_details['description'];
            echo "<br><br>";
            echo "Prijs: ".$prod_details['price'];
            echo "<form method='post'>";
            echo "<input type='hidden' name='itemid' value='".$prod_details['id']."'>";
            echo "<input type='submit' class='button button1' name='insert' value='voeg toe aan winkelwagen' /> ";
            ?>

        </center></div>
        <?php include('includes/footer.php') ?>
        <?php
        echo '<pre>';
print_r($_SESSION);
echo '</pre>';
?>
    </body>
</html>
