<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends GO_Controller {
	

	
	function __construct(){
		parent::__construct();
		$this->load->model("Pages_model","pages");
		$this->load->model("Home_model","home");
		$this->load->model("Blog_model","blog");
		$this->load->helper("filter");
	}

	public function index($slug){
		return false;
	}


	public function error_404(){
		$this->render("/pages/404",$this->data);
	}

	public function about(){
		$this->data['about'] 			= $this->home->about();
		$this->data['all_services'] 	= $this->home->services();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/about",$this->data);
	}

	public function projects(){
		$this->data['projects'] = $this->pages->projects();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/projects",$this->data);
	}

	public function project_single($slug){
		$slug 		= filter($slug);
		$project 	= $this->pages->project_single($slug);
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		$this->data['title']			 = $project['title'];
		$this->data['btitle']			 = $this->data['title'];
		$this->data['desc']				 = mb_substr(strip_tags($project['description']), 0,300);
		$this->data['bdesc']			 = mb_substr(strip_tags($project['description']), 0,300);
		$this->data['ogimage']			 = base_url($project['image']);
		$this->data['bgimage']			 = $this->data['ogimage'];
		$this->data['project'] 			 = $project;
		$this->data['slug'] 			 = $this->pages->menu_by_slug($this->uri->segment(1))['name'];
		$this->data['projects'] 		 = $this->core->limit_in_sidebar("projects",10);
		$this->data['project_images']	 = $this->pages->project_images($project['id']);
		$this->render("/pages/project-detail",$this->data);
	}

	public function spare_parts(){
		$this->data['spare_parts'] = $this->pages->spare_parts();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/spare-parts",$this->data);
	}


	public function spare_parts_single($slug){
		$slug 		= filter($slug);
		$spare_part 	= $this->pages->spare_part_single($slug);
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		$this->data['title']			 = $spare_part['title'];
		$this->data['btitle']			 = $this->data['title'];
		$this->data['desc']				 = mb_substr(strip_tags($spare_part['description']), 0,300);
		$this->data['bdesc']			 = mb_substr(strip_tags($spare_part['description']), 0,300);
		$this->data['ogimage']			 = base_url($spare_part['image']);
		$this->data['bgimage']			 = $this->data['ogimage'];
		$this->data['spare_part'] 		 = $spare_part;
		$this->data['slug'] 			 = $this->pages->menu_by_slug($this->uri->segment(1))['name'];
		$this->data['slidebar_services'] = $this->core->limit_in_sidebar("services",5);
		$this->data['slidebar_projects'] = $this->core->limit_in_sidebar("projects",3);
		$this->data['slidebar_blogs'] 	 = $this->core->limit_in_sidebar("blog",3);
		
		$this->render("/pages/spare-part-detail",$this->data);
	}

	public function products(){
		// $this->data['products'] = $this->pages->products();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/products",$this->data);
	}


	public function contact(){
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		$this->data['all_services'] 	= $this->home->services();
		$this->render("/pages/contact",$this->data);
	}

	public function services(){
		$this->data['services'] 		= $this->home->services();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/services",$this->data);
	}
	
	public function service_single($slug){
		$service = $this->pages->service_single($slug);
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		$this->data['title']			 = $service['title'];
		$this->data['btitle']			 = $this->data['title'];
		$this->data['desc']				 = mb_substr(strip_tags($service['description']), 0,300);
		$this->data['bdesc']			 = mb_substr(strip_tags($service['description']), 0,300);
		$this->data['ogimage']			 = base_url($service['image']);
		$this->data['bgimage']			 = $this->data['ogimage'];
		$this->data['service']	 		 = $service;
		$this->data['all_services'] 	 = $this->home->services();
		$this->data['slidebar_services'] = $this->core->limit_in_sidebar("services",5);
		$this->data['slidebar_projects'] = $this->core->limit_in_sidebar("projects",3);
		$this->data['slidebar_blogs'] 	 = $this->core->limit_in_sidebar("blog",3);
		$this->data['blogs'] 			 = $this->home->services();
		$this->data['slug'] 			 = $this->pages->menu_by_slug($this->uri->segment(1))['name'];
		$this->render("/pages/service-details",$this->data);
	}

	// public function serviceDetails(){
	// 	// $this->data['serviceDetails'] 		= $this->pages->serviceDetails();
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	// debug($this->data);
	// 	$this->render("/pages/service-details",$this->data);
	// }
	
	public function caseStudy(){
		// $this->data['caseStudy'] 		= $this->pages->caseStudy();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/case-study",$this->data);
	}

	public function studyDetails(){
		// $this->data['studyDetails'] 		= $this->pages->studyDetails();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/study-details",$this->data);
	}

	public function gallery(){
		// $this->data['gallery'] 		= $this->pages->gallery();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/gallery",$this->data);
	}

	public function requestCaculator(){
		// $this->data['requestCaculator'] 		= $this->pages->requestCaculator();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/request-caculator",$this->data);
	}
	
	
	public function blogStandard(){
		// $this->data['blogStandard'] 		= $this->pages->blogStandard();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/blog-standard",$this->data);
	}
	

	// public function services(){
	// 	$this->data['services'] = $this->home->services();
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	$this->render("/pages/services",$this->data);
	// }

	// public function services($slug){
	// 	$slug 		= filter($slug);
	// 	$category 	= $this->pages->get_category("service_category",$slug);
	// 	$services 	= $this->pages->services($category['id']);
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	$this->data['title'] 		= $category['title'];
	// 	$this->data['category'] 	= $category;
	// 	$this->data['services'] 	= $services;
	// 	$this->render("/pages/services",$this->data);
	// }


	// public function service_single(){
	// 	$slug 		= filter($this->uri->segment(3));
	// 	$service = $this->pages->service_single($slug);
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	$this->data['title'] 	= $service['title'];
	// 	$this->data['desc'] 	= mb_substr(strip_tags($service['description']), 0,300);
	// 	$this->data['service'] 	= $service;
	// 	$this->render("/pages/service-single",$this->data);
	// }


	// public function subjects($slug){
	// 	$slug 		= filter($slug);
	// 	$category 	= $this->pages->get_category("subjects_category",$slug);
	// 	$subjects 	= $this->pages->subjects($category['id']);
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	$this->data['title'] 		= $category['title'];
	// 	$this->data['category'] 	= $category;
	// 	$this->data['subjects'] 	= $subjects;
	// 	$this->render("/pages/subjects",$this->data);
	// }


	// public function subject_single(){
	// 	$slug 		= filter($this->uri->segment(3));
	// 	$subject 	= $this->pages->subject_single($slug);
	// 	$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
	// 	$this->data['title'] 	= $subject['title'];
	// 	$this->data['desc'] 	= mb_substr(strip_tags($subject['description']), 0,300);
	// 	$this->data['subject'] 	= $subject;
	// 	$this->render("/pages/subject-single",$this->data);
	// }






}
