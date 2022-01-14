<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends GO_Controller {
	
	public $show  			= 0; // Səhifə başlayandaNeçədən başlasın
	public $limit 			= 4; // Səhifə başlayanda neçə məlumat görünsün
	public $page 			= 1; // Səhifə başlayanda neçənci məlumatdan görünsün
	public $show_number 	= 3; // Paginationda neçə rəqəm görünsün
	public $itemrows 		= 0; // Məlumatların ümumi sayı
	public $number_of_pages	= 0; // Məlumat Neçə səhifədir

	public $category  = 0;
	public $cat  	  = 0;
	public $slug  	  = '';


	function __construct(){
		parent::__construct();
		$this->load->model("Products_model","products");
		$this->load->helper("filter");
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		if ($this->uri->segment(2)) {
			$this->slug  = filter($this->uri->segment(2));
			$this->category 	 = $this->products->get_cat($this->slug);
			if (isset($this->category['id'])) {
				$category 			 = $this->category; 
				$this->cat 			 = $this->category['id'];
				$this->data['btitle']			 = $this->data['title'];
				$this->data['title']			 = $category['title'];
				$this->data['bdesc']			 = mb_substr(strip_tags($category['description']), 0,300);
				$this->data['desc']				 = mb_substr(strip_tags($category['description']), 0,300);
				$this->data['bgimage']			 = $this->data['ogimage'];
				$this->data['ogimage']			 = base_url($category['image']);
			}
		}
		$this->itemrows 		= $this->products->get_count_img($this->cat); // Məlumatların ümumi sayı
		$this->number_of_pages 	= ceil($this->itemrows/$this->limit); // Məlumat Neçə səhifədir
	}

	public function index(){
		if (isset($_GET['page']) && $_GET['page'] > 0) {
			$this->page = is_numeric($_GET['page']) ? $_GET['page'] : 1;
			$this->page();
		}
		else{
			$this->images_list();
		}
	}

	public function images_list(){
		// debug($this->limit);
		$this->data['iamges'] 			 = $this->products->get_images($this->show,$this->limit,$this->cat);
		$this->data['page']				 = $this->page;
		$this->data['itemrows']			 = $this->itemrows;
		$this->data['show_number']		 = $this->show_number;
		$this->data['number_of_pages']	 = $this->number_of_pages;
		$this->data['category']			 = $this->category;
		$this->data['categories']		 = $this->products->get_category();
		$this->data['slug']				 = $this->uri->segment(2) ? '/mehsullar/'.$this->uri->segment(2)."/" : '/mehsullar/';
		$this->render("pages/products",$this->data);
	}

	public function page(){
		// $this->page = $this->uri->segment(3) == false ? 1 : intval(filter($this->uri->segment(3)));
		$this->page = $this->page > $this->number_of_pages ? 1 : $this->page; // gələn ədəd böyükdürsə
		$this->show = $this->page * $this->limit - $this->limit; // Neçədən başlasın görünməyə
		// debug($this->limit);
		$this->images_list();
	}

}