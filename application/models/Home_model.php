<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends GO_Model {


	public function __construct(){
		parent::__construct();
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
