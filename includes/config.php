<?php
session_start();
unset($shoppingcart);
@ini_set('display_errors', '1');
// Database settings
// Connection to MySQL Database
$config['db'] = array(
	'host' => 'localhost',
	'user' => 'otto_graaf',
	'pass' => 'daniel',
	'db' => 'ala_otto_graaf',
	'port' => '3306'
);
// Add the wrapper
require_once(__DIR__ . '/../lib/mysqli_db_wrapper.php');
$db = new MysqliDb($config['db']['host'], $config['db']['user'], $config['db']['pass'], $config['db']['db'],
$config['db']['port']);

if (isset($db->connect_error)){
	die("Connection failed: " . $db->connect_error);
};

require_once(__DIR__ . '/../lib/lib.php');
require_once(__DIR__ . '/../classes/shoppingcart.php');

// SHOPPINGCART

$shoppingcart = new ShoppingCart();

if (isset($_GET['deletecartitem'])) {
	$shoppingcart->delete_item($_GET['deletecartitem']);
}
?>
