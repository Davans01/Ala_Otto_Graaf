<?php

// SHOPPINGCART
unset($shoppingcart);
// in config
session_start();

require_once('includes/config.php');
require_once('classes/shoppingcart.php');
$shoppingcart = new ShoppingCart();

echo '<pre>';
print_r($shoppingcart);
echo '</pre>';
echo '<pre>';
print_r($_SESSION);
echo '</pre>';
// END SHOPPINGCART


// session_destroy();
