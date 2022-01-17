<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Pages_model extends GO_Model {


	public function __construct(){
		parent::__construct();
	}

	public function service_single($slug){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			icon,image,slug,created_at
		');
	        $this->db->from('services');
	        $this->db->where(array("status" => 1 ,"slug" => $slug));
	        $query  = $this->db->get();
	        return $query->row_array();
	}


	public function projects(){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			id,image,slug
		');
		$this->db->from('projects');
		$this->db->where("projects.status",1);
		$this->db->order_by("projects.id","DESC");
		return $this->db->get()->result_array();
	}

	public function project_single($slug){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			keywords_'.$this->dil.' as keywords,
			image,slug,date
		');
        $this->db->from('projects');
        $this->db->where(array("status" => 1 ,"slug" => $slug));
        $query  = $this->db->get();
        return $query->row_array();
	}
	
	
}
