<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends GO_Controller {
	
	public $show  			= 0; // Səhifə başlayandaNeçədən başlasın
	public $limit 			= 20; // Səhifə başlayanda neçə məlumat görünsün
	public $page 			= 2; // Səhifə başlayanda neçə məlumat görünsün
	public $show_number 	= 3; // Paginationda neçə rəqəm görünsün
	public $itemrows 		= 0; // Məlumatların ümumi sayı
	public $number_of_pages	= 0; // Məlumat Neçə səhifədir

	
	function __construct(){
		parent::__construct();
		$this->load->model("Home_model","home");
		$this->load->helper("filter");
	}

	public function index(){
		// $this->data['slider']					= $this->home->slider();
		$this->data['info_site']		= $this->core->get_info_site();
		$this->data['category']			= $this->home->get_category();
		$this->data['spare_parts']		= $this->home->spare_parts(10);
		$this->data['about']			= $this->home->about();
		$this->data['opinions']			= $this->core->get_select_all("opinions");
		$this->data['sliders']			= $this->home->sliders();
		$this->data['services'] 		= $this->core->limit_in_sidebar("services",3);
		$this->data['all_services'] 	= $this->home->services();
		$this->data['projects'] 		= $this->core->limit_in_sidebar("projects",10);
		$this->data['blog_sidebar']		= $this->home->blog_sidebar(3);
		$this->data['brands']			= $this->core->get_select_all("brands");
		// debug($this->data['category']);
		$this->render("home",$this->data);
	}

}
