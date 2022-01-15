<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Blog_model extends GO_Model {


	public function __construct(){
		parent::__construct();
	}

	

	/* Start blog area */
	public function blog($show,$limit){
			$this->db->select('
				title_'.$this->dil.' as title,
				description_'.$this->dil.' as description,
				image,id,view,date,slug
			');
	        $this->db->from('blog');
	        $this->db->where("status",1);
	        $this->db->limit($limit,$show);
	        return $this->db->get()->result_array();
	}

	public function blog_single($slug){
			$this->db->select('
				title_'.$this->dil.' as title,
				tags_'.$this->dil.' as tags,
				description_'.$this->dil.' as description,
				image,id,view,date,slug
			');
	        $this->db->from('blog');
	        $this->db->where(array("status" => 1 ,"slug" => $slug));
	        $query  = $this->db->get();
	        return $query->row_array();
	}

	/* End blog area */

	public function blog_details($id){
		$this->db->select('*,
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description
		');
		$this->db->from('blog');
		$this->db->where("status",1);
		$this->db->where("id",$id);
		$this->db->order_by("id","RANDOM");
		return $this->db->get()->row_array();
	}
}
