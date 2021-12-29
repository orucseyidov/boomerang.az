<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends Gopanel {
	

	
	function __construct(){
		parent::__construct();
		$this->admin_control();
		$this->load->helper("goweb/category");
		$this->load->helper("filter");
		$this->load->helper("seflink");
		$this->load->helper("file_upload");
		$this->data['btitle']	= 'Xəbərlər';

	}

	public function index(){

		$this->manage();
	}

	public function add(){
		// core
		if (isset($_POST['token'])) {
			unset($_POST['token']);


			$_POST['slug'] 		= seflink($_POST['title']);
			$_POST['image'] 	= file_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$_POST['slug']);
			$image 				= ltrim($_POST['image'],"/");
			$_POST['thumb'] 	= "/".resize(340,230,str_replace("/news/", '/thumb/', $image),$image);



			if ($news = $this->core->add_last_id($this->table,$_POST)) {
				$this->addMatch($news,$_POST['category']);
				$this->session->set_flashdata('success', "Məlumat Uğurla Əlavə edildi");
			}
			else{
				$this->session->set_flashdata('error', "Sistem xətası baş verdi.");
			}
			redirect($this->app."/".$this->table."/add/");
		}

		$this->render($this->table.'/add',$this->data);
	}

	public function manage(){
		$this->data['datatable'] = true;
		$this->data['manage'] 	 = $this->core->get_select_all($this->table);
		$this->render($this->table.'/manage',$this->data);
	}

	public function edit(){
		$id 					= intval(filter($this->input->get('id',true)));
		$this->data['values'] 	= $this->core->get_values($this->table,$id);

		if (isset($_POST['token'])) {
			unset($_POST['token']);
			
			$_POST['slug'] 		= seflink($_POST['title_az']);
			if (isset($_FILES['image']) && strlen($_FILES['image']['name'])>1) {
				$_POST['image'] = image_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$_POST['slug']);
				$image 				= ltrim($_POST['image'],"/");
				$_POST['thumb'] 	= "/".resize(340,230,str_replace("/news/", '/thumb/', $image),$image);
			}
			else{
				unset($_POST['image']);
			}

			if ($this->core->update($this->table,$id,$_POST)) {
				$this->session->set_flashdata('success', "Məlumat Uğurla Dəyişdirildi!");
				$this->data['values'] 	= $this->core->get_values($this->table,$id);
			}
			else{
				$this->session->set_flashdata('error', "Sistem xətası baş verdi.");
			}
			redirect($this->app."/".$this->table."/edit/?id=".$id);
		}

		$this->data['id'] 		= $id;
		$this->render($this->table.'/edit',$this->data);
	}

	public function addMatch($news,$category){
		$sql = '';
		foreach ($category as $key => $value) {
			// $sql .= "('{$news}', '{$value}'), ";
		}
		$sql = substr($sql, 0,-2);
		$sql = "INSERT INTO `news_category` (`news`, `category`) VALUES ('{$news}', '{$category}')";
		$this->core->myquery($sql);
	}


}
