<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends GO_Controller {
	

	
	function __construct(){
		parent::__construct();
		$this->load->model("Pages_model","pages");
		$this->load->helper("filter");
		
	}

	public function index($slug){
		return false;
	}


	public function error_404(){
		$this->render("/pages/404",$this->data);
	}

	public function about(){
		$this->data['about'] 		= $this->pages->about();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/about",$this->data);
	}

	public function aboutCompany(){
		// $this->data['aboutCompany'] 		= $this->pages->aboutCompany();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/about-company",$this->data);
	}

	public function contact(){
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		$this->render("/pages/contact",$this->data);
	}

	public function windows(){
		// $this->data['windows'] 		= $this->pages->windows();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/windows",$this->data);
	}

	public function doors(){
		// $this->data['doors'] 		= $this->pages->doors();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/doors",$this->data);
	}

	public function services(){
		// $this->data['services'] 		= $this->pages->services();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/services",$this->data);
	}
	
	public function serviceDetails(){
		// $this->data['serviceDetails'] 		= $this->pages->serviceDetails();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/service-details",$this->data);
	}
	
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
	
	public function blogDetails(){
		// $this->data['blogDetails'] 		= $this->pages->blogDetails();
		$this->getSeoInfo(filter(strip_tags(trim($this->uri->segment(1)))));
		// debug($this->data);
		$this->render("/pages/blog-details",$this->data);
	}
	
	
	

	// public function services(){
	// 	$this->data['services'] = $this->pages->services();
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
