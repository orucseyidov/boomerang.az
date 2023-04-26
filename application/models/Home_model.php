<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends GO_Model {


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

	public function spare_parts($limit=null){
		$this->db->select('
			title_'.$this->dil.' as title,
			id,created_at,slug,image
		');
        $this->db->from("spare_parts");
        $this->db->where("status",1);
		$this->db->order_by("rank","desc");
		$this->db->limit($limit);
		return $this->db->get()->result_array();
    }

	public function sliders(){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			image,link
        ');
        $this->db->from("slider");
        $this->db->where("status",1);
        $this->db->order_by("id","DESC");
		return $this->db->get()->result_array();
	}

	public function services(){
		$this->db->select('
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description,
			id,icon,image,slug,created_at
		');
		$this->db->from('services');
		$this->db->where("services.status",1);
		$this->db->order_by("services.id","DESC");
		return $this->db->get()->result_array();
	}

	public function blog_sidebar($limit){
        $this->db->select('*,
            title_'.$this->dil.' as title,
            description_'.$this->dil.' as description
        '); //tags_'.$this->dil.' as tags,
        $this->db->from('blog');
        $this->db->where("status",1);
        $this->db->order_by("id","RANDOM");
        $this->db->limit($limit);
         return $this->db->get()->result_array();
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
