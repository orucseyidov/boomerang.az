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
		$this->load->model("Pages_model","pages");
		$this->load->model("Blog_model","blog");
		$this->load->helper("filter");
	}

	public function index(){
		// $this->data['slider']					= $this->home->slider();
		$this->data['info_site']		= $this->core->get_info_site();
		$this->data['about']			= $this->pages->about("about");
		$this->data['services'] 		= $this->pages->services(3);
		$this->data['blog_sidebar']		= $this->blog->blog_sidebar(3);
		$this->render("home",$this->data);
	}

}
