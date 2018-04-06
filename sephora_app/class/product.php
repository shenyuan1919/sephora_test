<?php
class Product{
	// Properties
	private $conn;
	
	// Constructor with $db as DB connection
	public function __construct($db){
		$this->conn = $db;
	}
	
	// Get all products
	public function getAll($filter){	
		$sql = "SELECT * FROM product ORDER BY price ASC";
		
		// if page number exists
		if(isset($filter['perpage'])){
			$perpage = intval($filter['perpage']);
			$sql .= " LIMIT $perpage OFFSET 0";
		}

		$stmt = $this->conn->query($sql);
		$product = $stmt->fetchAll(PDO::FETCH_OBJ);
		
		return $product;
	}
	
	// Get single product by $id
	public function getById($id){	
		$sql = "SELECT * FROM product WHERE id=:id";
		
		$stmt = $this->conn->prepare($sql);
		$stmt->bindParam(':id', $id);
		$stmt->execute();
		$product = $stmt->fetchAll(PDO::FETCH_OBJ);
		
		return $product;
	}
	
	// Get products by $filter
	public function getByFilter($filter){	
		$sql = "SELECT * FROM product WHERE";
		
		// if category filter exists
		if(isset($filter['cat']) && !empty($filter['cat'])){
			$cat = $filter['cat'];
			$sql .= " category=:cat AND";
		}

		// if low price range filter exists
		if(isset($filter['pl'])){
			$pl = intval($filter['pl']);
			$sql .= " price>=:pl AND";
		}
		
		// if high price range filter exists
		if(isset($filter['ph'])){
			$ph = intval($filter['ph']);
			$sql .= " price<=:ph AND";
		}

		$sql .= " 1";
		
		// if price sorting exists; else sorting by price low-to-high
		if(isset($filter['sortby']) && !empty($filter['sortby'])){
			if($filter['sortby'] == 'HIGH_TO_LOW'){
				$sortby = 'DESC';
			}else{
				$sortby = 'ASC';
			}
			$sql .= " ORDER BY price $sortby";
		}else{
			$sortby = 'ASC';
			$sql .= " ORDER BY price $sortby";
		}
		
		// if pagination exists
		if(isset($filter['perpage'])){
			$perpage = intval($filter['perpage']);
			$sql .= " LIMIT $perpage";
			if(isset($filter['pagenum'])){
				$pagenum = intval($filter['pagenum']);
				$offset = $pagenum * $perpage;
				$sql .= " OFFSET $offset";
			}
		}
		
		$stmt = $this->conn->prepare($sql);
		if(isset($filter['cat']) && !empty($filter['cat'])){
			$stmt->bindParam(':cat', $cat);
		}
		if(isset($filter['pl'])){
			$stmt->bindParam(':pl', $pl);
		}
		if(isset($filter['ph'])){
			$stmt->bindParam(':ph', $ph);
		}
		$stmt->execute();
		$product = $stmt->fetchAll(PDO::FETCH_OBJ);
		
		return $product;
	}
	
	// Get all product categories
	public function getAllCategory(){	
		$sql = "SELECT DISTINCT category FROM product";
		
		$stmt = $this->conn->query($sql);
		$category = $stmt->fetchAll(PDO::FETCH_OBJ);
		
		return $category;
	}

}