<!DOCTYPE html>
<?php include('includes/config.php') ?>
<html lang="nl">
    <head>
        <?php include('includes/head.php') ?>
    </head>
    <body>
        <?php include('includes/header.php') ?>

<?php

// SHOPPINGCART
// unset($shoppingcart);
// in config
// session_start();

// require_once('includes/config.php');
// require_once('classes/shoppingcart.php');
// $shoppingcart = new ShoppingCart();

echo '<pre>';
print_r($shoppingcart->newcart());
echo '</pre>';
echo '<pre>';
print_r($_SESSION);
echo '</pre>';

            
            $cartitems = $shoppingcart->get_cartitems();
            print_r($cartitems);
            if ($cartitems) {
                foreach ($cartitems as $cartitem) {
                    // print_r($cartitem);
                    $product = $shoppingcart->get_itemdetails($cartitem['productid']);
                    print_r($product);
                    echo "<a href='#'>".$product['name']."</a>";
                }
            }
            ?>

// END SHOPPINGCART
<!-- <div class="dropdown">
    <button class="dropbtn">Dropdown</button>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div> -->
<?php
// session_destroy();
