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
        
        <div class="details">
            <?php
            $details = $product->details();
            // print_r($details);
            echo "<img class='picture' src='".$details['image']."'><br>";
            echo $details['name']."<br>";
            echo "<br><br>";
            echo $details['description'];
            ?>

        </div>
        <?php include('includes/footer.php') ?>
    </body>
</html>
