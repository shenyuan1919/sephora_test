<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Frontend_Controller {
	
	// Load Ajax_pagination; define records perpage
	public function __construct() {
        parent::__construct();
        $this->load->library('Ajax_pagination');
        $this->perPage = 6;
    }
	
	public function index()
	{ 	
		//get all products, regardless of pagination
		$allProduct = $this->product_m->getAllProduct();
		
		//total rows count
        $totalRec = count(json_decode($allProduct, TRUE));
        
        //pagination configuration
        $config['target']      = '#postList';
        $config['base_url']    = base_url().'product/filter';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->ajax_pagination->initialize($config);
		
		//get products per page
		$perPageProduct = $this->product_m->getAllProduct($this->perPage);
		$this->data['products'] = json_decode($perPageProduct, TRUE);
		
		//get all categories
		$allCategory = $this->product_m->getAllCategory();
		$this->data['categorys'] = json_decode($allCategory, TRUE);
		
		$this->load->view('product', $this->data);
	}
	
	//Ajax Filter
	public function filter()
	{ 
		$conditions = array();
		
		//set sortBy conditions for filter
        $sortBy = $this->input->post('sortBy');
        if(!empty($sortBy)){
            $conditions['filter']['sortBy'] = $sortBy;
        }
		
		//set category conditions for filter
        $cat = $this->input->post('cat');
        if(!empty($sortBy)){
            $conditions['filter']['cat'] = $cat;
        }
		
		//set price range conditions for filter
        $price = $this->input->post('price');
        if(!empty($price)){
            $conditions['filter']['price'] = $price;
        }

		//get overall records based on filter conditions
        $filteredAllProduct = $this->product_m->getProductByFilter($conditions);
		
		//total records count
        $totalRec = count(json_decode($filteredAllProduct, TRUE));

		//get page number
        $pagenum = $this->input->post('page');
		$pagenum = $pagenum / $this->perPage;
		
		 //pagination configuration
        $config['target']      = '#postList';
        $config['base_url']    = base_url().'product/filter';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->ajax_pagination->initialize($config);
        
        //set start and limit
        $conditions['filter']['pagenum'] = $pagenum;
        $conditions['filter']['perpage'] = $this->perPage;
		
		//get per page records based on filter conditions and pagination
		$filteredPerpageProduct = $this->product_m->getProductByFilter($conditions);
		$this->data['products'] = json_decode($filteredPerpageProduct, TRUE);
		
		$this->load->view('product_filter', $this->data);
	}
	
	public function detail($id = null)
	{ 	
		//redirect to index page if no product id defined
		if(empty($id)){
			redirect("product");
		}
		
		//get single product
		$singleProduct = json_decode($this->product_m->getSingleProduct($id), TRUE);
		
		//redirect to index page if no product found
		if(!count($singleProduct)){
			redirect("product");
		}

		$this->data['product'] = $singleProduct[0];
		$this->load->view('product_detail', $this->data);
	}
}
