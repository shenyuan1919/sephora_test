<?php

class MY_Model extends CI_Model{
	
	protected $_table_name = '';
	protected $_primary_key = 'id';
	protected $_primary_filter = '';
	protected $_order_by = '';
	public $rules = array();
	protected $_timestamps = FALSE;
	
	function __construct(){
		parent::__construct();
	}
	
	public function array_from_post($fields){
		$data = array();
		foreach($fields as $field){
			$data[$field] = $this->input->post($field);
		}
		return $data;
	}
	
	public function get($id = NULL, $single = FALSE){
		
		if($id != NULL){
			$this->db->where($this->_primary_key, $id);
			$method = 'row';
		}
		elseif($single == TRUE){
			$method = 'row';
		}
		else{
			$method = 'result';
		}
		
		if(!count($this->db->order_by($this->_order_by))){
			$this->db->order_by($this->_order_by);
		}
		return $this->db->get($this->_table_name)->$method();
	}
	
	public function get_by($where, $single = FALSE){		
	
		$this->db->where($where);
		return $this->get(NULL, $single);
	}
	
	public function save($data, $id = NULl){		
		//Insert
		if($id === NULL){
			isset($data[$this->_primary_key]) || $data[$this->_primary_key] = NULL;
			$this->db->set($data);
			$this->db->insert($this->_table_name);		
			$id = $this->db->insert_id();
		}
		//Update
		else{
			$this->db->set($data);
			$this->db->where($this->_primary_key, $id);
			$this->db->update($this->_table_name);
		}
		
		return $id;
	}
	
	public function delete($id){		
		
		if(!$id){
			return FALSE;
		}
		
		$this->db->where($this->_primary_key, $id);
		$this->db->limit(1);
		$this->db->delete($this->_table_name);
	}
}