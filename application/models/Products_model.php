<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Products_model extends GO_Model {


	public function __construct(){
		parent::__construct();
	}

	

	/* Start blog area */
	public function get_images($show,$limit,$category_id=0){
		$this->db->select('*');
        $this->db->from('gallery');
        $this->db->where("section","category");
        if ($category_id > 0) {
        	$this->db->where("parent",$category_id);
        }

        $this->db->limit($limit,$show);
        // debug($this->db->get_compiled_select());
        return $this->db->get()->result_array();
	}

	public function get_cat($slug){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			keywords_'.$this->dil.' as keywords,
			image,view,id
		');
        $this->db->from("category");
        $this->db->where("slug",$slug);
        $query  = $this->db->get();
        return $query->row_array();
	}


	public function get_count_img($category_id=0) {
		$this->db->select("id");
        $this->db->from("gallery");
        $this->db->where("section","category");
        if ($category_id > 0) {
        	$this->db->where("parent",$category_id);
        }
        return $this->db->count_all_results();
	}


	public function get_category(){
        $this->db->select('
            title_'.$this->dil.' as title,
            image,id,slug,parent
        ');
        $this->db->from('category');
        $this->db->where("category.status",1);
        $this->db->order_by("category.rank","asc");
        return $this->db->get()->result_array();
    }


}
