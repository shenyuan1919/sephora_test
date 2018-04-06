<?php
include_once '../config/inc.php';
 
// Intialize object
$product = new Product($conn);

$allProductCategory = $product->getAllCategory();

if(!empty($allProductCategory)){
	echo json_encode($allProductCategory);
}else{
	echo '[]';
}

?>