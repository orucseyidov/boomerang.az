<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Gopanel {
	

	
	function __construct(){
		parent::__construct();
		$this->admin_control();
		$this->load->helper("filter");
		$this->load->helper("seflink");
		$this->load->helper("goweb/category");
		$this->load->helper("file_upload");
		$this->data['btitle']	= ' Kateqoriyalar';
		$this->parent 			= isset($_GET['parent']) ? $_GET['parent'] : 0;
		$this->data['parent']	= $this->parent;
	}

	public function index(){

		$this->manage();
	}

	public function add(){
		// core
		if (isset($_POST['token'])) {
			unset($_POST['token']);

			$_POST['slug'] 		= $this->slug($_POST['title']);
			$_POST['image'] 	= file_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$_POST['slug']);
			$_POST['status'] 	= 1;

			if ($id = $this->core->add_last_id($this->table,$_POST)) {
				$this->session->set_flashdata('success', "Məlumat Uğurla Əlavə edildi");
			}
			else{
				$this->session->set_flashdata('error', "Sistem xətası baş verdi.");
			}
			redirect("{$this->app}/{$this->table}/add/?parent={$this->parent}");
		}

		$this->render($this->table.'/add',$this->data);
	}

	public function manage(){
		$this->data['datatable'] = true;
		$this->data['manage'] 	 = $this->gopanel->get_category_manage($this->parent);
		$this->render($this->table.'/manage',$this->data);
	}

	public function edit(){
		$id 					= intval(filter($this->input->get('id',true)));
		$this->data['values'] 	= $this->core->get_values($this->table,$id);
		$this->data['category']	= $this->get_category(0,0,$this->data['values']['parent']);

		if (isset($_POST['token'])) {
			unset($_POST['token']);

			if ($_POST['parent'] != $this->data['values']['id']) {
				$this->parent 				= $this->data['values']['parent'];
				$_POST['slug'] 				= $this->slug($_POST['title']);

				if (isset($_FILES['image']) && strlen($_FILES['image']['name'])>1) {
					$_POST['image'] = image_upload($_FILES['image'],'/uploads/images/'.$this->table.'/',$_POST['slug']);
				}
				else{
					unset($_POST['image']);
				}


				if ($this->core->update($this->table,$id,$_POST)) {
					$this->session->set_flashdata('success', "Məlumat Uğurla Dəyişdirildi!");
					$this->data['values'] 	= $this->core->get_values($this->table,$id);
					$this->data['category']	= $this->get_category(0,0,$this->data['values']['parent']);
				}
				else{
					$this->session->set_flashdata('error', "Sistem xətası baş verdi.");
				}
			}
			else{
				$this->session->set_flashdata('error', "Eyni kategoriya seçmək olmaz!!!");
			}
			# debug("/gopanel/".$this->table."/edit/?id=");
			redirect("/gopanel/".$this->table."/edit/?id=".$id);
		}

		$this->data['id'] 		= $id;
		$this->render($this->table.'/edit',$this->data);
	}


	public function slug($title){
		$parent = $this->gopanel->category_slug($this->parent);
		return isset($parent['slug']) ? $parent['slug']."-".seflink($title) : seflink($title);
	}



}
