<?php
include_once '../config/inc.php';

$filter = array();

// Get applied filters
if(isset($_GET["cat"]) && !empty($_GET["cat"])){	// Category Filter Exists
	$filter['cat'] = $_GET["cat"];
}

// Low Price Range Filter Exists. If empty, treat as 0
if(isset($_GET["pl"])){	
	$filter['pl'] = intval($_GET["pl"]);
}

// High Price Range Filter Exists. If empty, CANNOT treat as 0
if(isset($_GET["ph"]) && $_GET["ph"]!==''){	
	$filter['ph'] = intval($_GET["ph"]);
}

// Price Sorting Exists
if(isset($_GET["sortby"]) && !empty($_GET["sortby"])){	
	$filter['sortby'] = $_GET["sortby"];
}

// Page Number Exists
if(isset($_GET["pagenum"])){	
	$filter['pagenum'] = intval($_GET["pagenum"]);
}

// Result Per-page Number Exists
if(isset($_GET["perpage"]) && $_GET["perpage"]!==''){	
	$filter['perpage'] = intval($_GET["perpage"]);
}

// Intialize object
$product = new Product($conn);

$filteredProduct = $product->getByFilter($filter);

if(!empty($filteredProduct)){
	echo json_encode($filteredProduct);
}else{
	echo '[]';
}
?>