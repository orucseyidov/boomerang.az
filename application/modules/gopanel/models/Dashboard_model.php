<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends GO_Model {


	public function __construct(){
		// $this->load->library('database');
		parent::__construct();
	}


	public function test(){
		echo "Admin Model inculded";
	}

}


?>