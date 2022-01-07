<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Pages_model extends GO_Model {


	public function __construct(){
		parent::__construct();
	}

	/* Start about area */
	public function about(){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			image
		');
        $this->db->from("about");
        $query  = $this->db->get();
        return $query->row_array();
	}

	public function services($limit=null){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			id,icon,image,slug,created_at
		');
		$this->db->from('services');
		if ($limit != '') {
			$this->db->limit($limit);
		 }
		$this->db->where("services.status",1);
		$this->db->order_by("services.id","DESC");
		return $this->db->get()->result_array();
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
	
	// public function services($category){
	//         $this->db->select('
	//             title_'.$this->dil.' as title,
	//             description_'.$this->dil.' as description,
	//             image,id,slug
	//         ');
	//         $this->db->from('services');
	//         $this->db->where("services.status",1);
	//         $this->db->where("services.category",$category);
	//         $this->db->order_by("services.id","DESC");
	//         return $this->db->get()->result_array();
	// }

	// public function service_single($slug){
	// 	$this->db->select('
	// 		title_'.$this->dil.' as title,
	// 		description_'.$this->dil.' as description,
	// 		image,category
	// 	');
	//         $this->db->from('services');
	//         $this->db->where(array("status" => 1 ,"slug" => $slug));
	//         $query  = $this->db->get();
	//         return $query->row_array();
	// }


	// public function subjects($category){
	//         $this->db->select('
	//             title_'.$this->dil.' as title,
	//             description_'.$this->dil.' as description,
	//             image,id,slug
	//         ');
	//         $this->db->from('subjects');
	//         $this->db->where("subjects.status",1);
	//         $this->db->where("subjects.category",$category);
	//         $this->db->order_by("subjects.id","DESC");
	//         return $this->db->get()->result_array();
	// }

	// public function subject_single($slug){
	// 	$this->db->select('
	// 		title_'.$this->dil.' as title,
	// 		description_'.$this->dil.' as description,
	// 		image,category
	// 	');
	//         $this->db->from('subjects');
	//         $this->db->where(array("status" => 1 ,"slug" => $slug));
	//         $query  = $this->db->get();
	//         return $query->row_array();
	// }

	// public function get_category($table,$slug){
	//         $this->db->select('
	//             title_'.$this->dil.' as title,
	//             id,slug
	//         ');
	//         $this->db->from($table);
	//         $this->db->where(array("status" => 1 ,"slug" => $slug));
	//         return $this->db->get()->row_array();
	// }
}
