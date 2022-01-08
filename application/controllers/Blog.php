<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends GO_Controller {
	
	public $show  			= 0; // Səhifə başlayandaNeçədən başlasın
	public $limit 			= 4; // Səhifə başlayanda neçə məlumat görünsün
	public $page 			= 1; // Səhifə başlayanda neçənci məlumatdan görünsün
	public $show_number 	= 3; // Paginationda neçə rəqəm görünsün
	public $itemrows 		= 0; // Məlumatların ümumi sayı
	public $number_of_pages	= 0; // Məlumat Neçə səhifədir


	function __construct(){
		parent::__construct();
		$this->load->model("Blog_model","blog");
		$this->itemrows 		= $this->core->get_count("blog","id"); // Məlumatların ümumi sayı
		$this->number_of_pages 	= ceil($this->itemrows/$this->limit); // Məlumat Neçə səhifədir
		$this->load->helper("seflink");
		$this->load->helper("filter");
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// $this->sidebar_g();
	}

	public function index(){
		if ($this->uri->segment(2) == false) {
			$this->blog_list();
		}
		else{
			$this->blog_single($this->uri->segment(2));
		}
	}

	public function blog_list(){
		$this->data['blog'] 			= $this->blog->blog($this->show,$this->limit);
		$this->data['page']				= $this->page;
		$this->data['itemrows']			= $this->itemrows;
		$this->data['show_number']		= $this->show_number;
		$this->data['number_of_pages']	= $this->number_of_pages;
		// debug($this->data['blog']);
		$this->render("pages/blog",$this->data);
	}

	public function page(){
		$this->page = $this->uri->segment(3) == false ? 1 : intval(filter($this->uri->segment(3)));
		$this->page = $this->page > $this->number_of_pages ? 1 : $this->page; // gələn ədəd böyükdürsə
		$this->show = $this->page * $this->limit - $this->limit; // Neçədən başlasın görünməyə
		$this->blog_list();
	}

	public function blog_single(){
		$slug 	= filter(strip_tags(trim($this->uri->segment(2))));
		$blog 	= $this->blog->blog_single($slug);
		//----------------------------------------------------------------------
		$this->data['btitle']		= $this->data['title'];
		$this->data['title']		= $blog['title'];
		$this->data['bdesc']		= mb_substr(strip_tags($blog['description']), 0,300);
		$this->data['desc']			= mb_substr(strip_tags($blog['description']), 0,300);
		$this->data['bgimage']		= $this->data['ogimage'];
		$this->data['ogimage']		= base_url($blog['image']);
		$this->data['blog']			= $blog;

		$this->render("pages/blog-details",$this->data);
		$this->core->view_update("blog",$this->data['blog']['id']);
	}


	public function sidebar(){

	}

}