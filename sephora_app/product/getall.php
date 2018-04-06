<?php
include_once '../config/inc.php';
 
// Intialize object
$product = new Product($conn);

$filter = array();

if(isset($_GET["perpage"]) && $_GET["perpage"]!==''){	// Result Per-page Number Exists
	$filter['perpage'] = intval($_GET["perpage"]);
}

$allProduct = $product->getAll($filter);

if(!empty($allProduct)){
	echo json_encode($allProduct);
}else{
	echo '[]';
}

?>