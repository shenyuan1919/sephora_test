<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Include DB and Class
include_once '../config/db.php';
include_once '../class/product.php';

// Instantiate DB
$db = new db();
$conn = $db->connect();
?>
