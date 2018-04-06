<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Frontend_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	public function __construct() {
        parent::__construct();
        $this->load->library('Ajax_pagination');
        $this->perPage = 6;
    }
	
	public function index()
	{ 	
		$allProduct = $this->product_m->getAllProduct();
		
		//total rows count
        $totalRec = count(json_decode($allProduct, TRUE));
        
        //pagination configuration
        $config['target']      = '#postList';
        $config['base_url']    = base_url().'welcome/filter';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->ajax_pagination->initialize($config);
		
		$perPageProduct = $this->product_m->getAllProduct($this->perPage);
		$this->data['products'] = json_decode($perPageProduct, TRUE);
		
		$allCategory = $this->product_m->getAllCategory();
		$this->data['categorys'] = json_decode($allCategory, TRUE);
		
		$this->load->view('product', $this->data);
	}
	
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

		//get posts data
        $filteredAllProduct = $this->product_m->getProductByFilter($conditions);
		
		//total rows count
        $totalRec = count(json_decode($filteredAllProduct, TRUE));
		
		//get page number
        $pagenum = $this->input->post('page');
		$pagenum = $pagenum / $this->perPage;
		
		 //pagination configuration
        $config['target']      = '#postList';
        $config['base_url']    = base_url().'welcome/filter';
        $config['total_rows']  = $totalRec;
        $config['per_page']    = $this->perPage;
        $config['link_func']   = 'searchFilter';
        $this->ajax_pagination->initialize($config);
        
        //set start and limit
        $conditions['filter']['pagenum'] = $pagenum;
        $conditions['filter']['perpage'] = $this->perPage;
		
		$filteredPerpageProduct = $this->product_m->getProductByFilter($conditions);
		$this->data['products'] = json_decode($filteredPerpageProduct, TRUE);
		
		$this->load->view('product_filter', $this->data);
	}
	
	public function detail($id = null)
	{ 	
		if(empty($id)){
			redirect("welcome");
		}
		
		$singleProduct = json_decode($this->product_m->getSingleProduct($id), TRUE);
		if(!count($singleProduct)){
			redirect("welcome");
		}

		$this->data['product'] = $singleProduct[0];
		$this->load->view('product_detail', $this->data);
	}
}
