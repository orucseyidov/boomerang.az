<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Core extends GO_Model {



	public function __construct(){
		parent::__construct();
	}

	

	public function getSiteSettings(){
		
		$this->db->select('
			site_title_'.$this->dil.' as site_title,
			description_'.$this->dil.' as description,
			tags_'.$this->dil.' as tags,
			site_status,
			image,
			favicon
		');
		$this->db->from('settings');
        $query = $this->db->get();
        return $query->row_array();
	}


	public function get_seo_info($page){
			$this->db->select('
				title_'.$this->dil.' as title,
				description_'.$this->dil.' as description,
				keywords_'.$this->dil.' as keywords,
				image,
				page
			');
	        $this->db->from('seo_settings');
	        $this->db->where("page",$page);
	        $query  = $this->db->get();
	        return $query->row_array();
	}


	public function contact(){
			$this->db->select('
				adress_'.$this->dil.' as adress,
				map,phone,mobile,whatsapp,fax,mail
			');
	        $this->db->from('contacts');
	        $query  = $this->db->get();
	        return $query->row_array();
	}
	
	public function social(){
		$this->db->select('*');
        $this->db->from('social');
        return $this->db->get()->result_array();
	}


	public function menu(){
		$this->db->select('
			name_'.$this->dil.' as name,
			slug,id
		');
        $this->db->from('menu');
        return $this->db->get()->result_array();
	}

	public function get_gallery($parent,$section){
        $this->db->select('image,id');
        $this->db->from('gallery');
        $this->db->where("parent",$parent);
        $this->db->where("section",$section);
        return $this->db->get()->result_array();
	}



	public function partners(){
		$this->db->select('*');
        $this->db->from('partners');
        return $this->db->get()->result_array();
	}


	public function info_msg($keyyword) {
		$this->db->select("title as title, description as desc");
        $this->db->from("info_msg");
        $this->db->where("keyword",$keyyword);
        return $this->db->get()->row_array();
	}

	public function service_category(){
        $this->db->select('
            title_'.$this->dil.' as title,
            slug,id
        ');
        $this->db->from('service_category');
        $this->db->where("service_category.status",1);
        return $this->db->get()->result_array();
	}

	public function subjects_category(){
        $this->db->select('
            title_'.$this->dil.' as title,
            slug,id
        ');
        $this->db->from('subjects_category');
        $this->db->where("subjects_category.status",1);
        return $this->db->get()->result_array();
	}


}
