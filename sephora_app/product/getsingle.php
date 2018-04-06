<?php
include_once '../config/inc.php';

// Check if product id is missing
if(!isset($_GET["id"]) || empty($_GET["id"])){	
	$data = array(
		'code' => -1,
		'msg' => 'Error! Filed "id" (Product ID) is required.'
	);
	echo json_encode($data);
}else{
	$id = $_GET["id"];
	
	// Intialize object
	$product = new Product($conn);

	$singleProduct = $product->getById($id);
	
	if(!empty($singleProduct)){
		echo json_encode($singleProduct);
	}else{
		echo '[]';
	}
}
?>