<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends Gopanel {
	
	function __construct(){
		parent::__construct();
		$this->admin_control();
		$this->load->helper("filter");
		$this->load->helper("seflink");
		$this->load->helper("file_upload");
		$this->data['btitle']	= ' Xəbərlər';
	}

	public function index(){

		$this->manage();
	}

	public function add(){
		// core
		if (isset($_POST['token'])) {
			unset($_POST['token']);
			
			if (empty($_POST['date'])){
				$_POST['date'] = date("Y-m-d");
			}

			if(isset($_POST['slug']) && empty($_POST['slug'])){
				$_POST['slug'] = seflink($_POST['title_en']);
			}
			else{
				$_POST['slug'] = $_POST['slug'] . "-" . uniqid();
			}

			$_POST['image'] = file_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$_POST['title_en']);

			if ($this->core->add($this->table,$_POST)) {
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
		$this->data['manage'] 	 = $this->gopanel->get_select_all($this->table);
		$this->render($this->table.'/manage',$this->data);
	}

	public function edit(){
		$id 					= intval(filter($this->input->get('id',true)));
		$this->data['values'] 	= $this->core->get_values($this->table,$id);

		if (isset($_POST['token'])) {
			unset($_POST['token']);

			if (isset($_FILES['image']) && strlen($_FILES['image']['name'])>1) {
				$img = seflink($_POST['name']);
				$_POST['image'] = image_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$img);
			}
			else{
				unset($_POST['image']);
			}

			if(isset($_POST['slug']) && empty($_POST['slug'])){
				$_POST['slug'] = seflink($_POST['title_en']);
			}
			else{
				$_POST['slug'] = $_POST['slug'] . "-" . uniqid();
			}

			if ($this->core->update($this->table,$id,$_POST)) {
				$this->session->set_flashdata('success', "Məlumat Uğurla Dəyişdirildi!");
				$this->data['values'] 	= $this->core->get_values($this->table,$id);
			}
			else{
				$this->session->set_flashdata('error', "Sistem xətası baş verdi.");
			}
			
			redirect("/gopanel/{$this->table}/edit/?id={$id}");
		}

		$this->data['id'] 		= $id;
		$this->render($this->table.'/edit',$this->data);
	}
}