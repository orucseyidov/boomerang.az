<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home_model extends GO_Model {


	public function __construct(){
		parent::__construct();
	}



    
    public function slider(){
        $this->db->select('
            title_'.$this->dil.' as title,
            description_'.$this->dil.' as description,
            image,id,link,link_status
        ');
        $this->db->from('slider');
        $this->db->where("slider.status",1);
        $this->db->order_by("slider.rank","asc");
        return $this->db->get()->result_array();
    }

    

}
