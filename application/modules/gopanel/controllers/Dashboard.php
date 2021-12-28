<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Gopanel {
	public function __construct(){
		parent::__construct();
		$this->admin_control();
		$this->load->model("Dashboard_model","dashboard");
		$this->data['btitle'] = 'Əsas Panel';
	}
	
	public function index(){
		$this->render("dashboard",$this->data);
	}

}