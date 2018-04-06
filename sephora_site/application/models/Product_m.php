<?php

class Product_M extends MY_Model {
	
	function __construct(){
		parent::__construct();
	}
	
	// get all products; optional: perpage
	public function getAllProduct($perpage = null){		
	
		if(isset($perpage) && !empty($perpage)){
			$perpage = intval($perpage);
		}
		
		$url = APIURL."product/getall?perpage=$perpage";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$data = curl_exec($ch);
				
		if (curl_errno($ch)){
			return "Error: " . curl_error($ch);
			curl_close($ch);
		} else{
			curl_close($ch);
			return $data;
		}
	}
	
	// get single product by product id
	public function getSingleProduct($id){		
		
		$url = APIURL."product/getsingle?id=$id";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$data = curl_exec($ch);
		
		if (curl_errno($ch)){
			return "Error: " . curl_error($ch);
		} else{
			curl_close($ch);
			return $data;
		}
	}
	
	// get all available product category
	public function getAllCategory(){		
		
		$url = APIURL."product/getcategory";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$data = curl_exec($ch);
		
		if (curl_errno($ch)){
			return "Error: " . curl_error($ch);
		} else{
			curl_close($ch);
			return $data;
		}
	}
	
	//sorting by price; filters: category: cat; price range: pl (low price) & ph (high price); 
	public function getProductByFilter($conditions){	
		
		$sortBy = '';
		//sort data by ascending or desceding order
        if(!empty($conditions['filter']['sortBy'])){
            $sortBy = $conditions['filter']['sortBy'];
        }
		
		$cat = '';
		//filter by category
        if(!empty($conditions['filter']['cat'])){
            $cat = $conditions['filter']['cat'];
			if($cat == 'all_cat'){
				$cat = '';
			}
        }
		
		$price = '';
		$pl = '';
		$ph = '';
		//filter by price range
        if(!empty($conditions['filter']['price'])){
            $price = $conditions['filter']['price'];
			$pieces = explode("_", $price);
			$pl = intval($pieces[0]);
			$ph = $pieces[1];
			if($ph == 'max'){
				$ph= '';
			}else{
				$ph = intval($pieces[1]);				
			}
        }
		
		//pagination: pagenum and results perpage
		$pagenum = '';
		if(isset($conditions['filter']['pagenum'])){
			$pagenum = intval($conditions['filter']['pagenum']);
		}
		$perpage = '';
		if(isset($conditions['filter']['perpage'])){
			$perpage = $conditions['filter']['perpage'];
		}

		$url = APIURL."product/filter?sortby=$sortBy&cat=$cat&pl=$pl&ph=$ph&pagenum=$pagenum&perpage=$perpage";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$data = curl_exec($ch);

		if (curl_errno($ch)){
			return "Error: " . curl_error($ch);
		} else{
			curl_close($ch);
			return $data;
		}
	}
		
}