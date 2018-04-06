<?php

class Frontend_Controller extends MY_Controller{
	
	function __construct(){
		parent::__construct();
		
		$this->load->helper('form');
		$this->load->helper('array');
		$this->load->library('form_validation');
		$this->load->library('encryption');
		$this->load->library('session');
		
		$this->load->model('product_m');				
	}
}