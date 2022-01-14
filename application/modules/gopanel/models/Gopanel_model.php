<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gopanel_model extends GO_Model {


	function __construct(){
		parent::__construct();
	}

	public function insertData($table,$data){
		return $this->db->insert($table,$data);
	}

	public function upadetData($table,$id,$data){
		$this->db->where('id', $id);
	    $this->db->update($table, $data);
	    return true;
	}

	public function update_cat_par($table,$id,$updatedata) {
	    $this->db->where('category', $id);
	    $this->db->update($table, $updatedata);
	    return true;
	}


	public function status_change($table,$id,$data){
		$this->db->where('id', $id);
	    $this->db->update($table, $data);
	    return true;
	}

	public function sortable($table,$data){
	    $this->db->update($table, $data);
	    return true;
	}

	public function delete($table,$id){
		$this->db->where('id', $id);
		$this->db->delete($table);
		return true;
	}

	public function delete_where($table,$where){
		$this->db->where($where);
		$this->db->delete($table);
		return true;
	}

	public function delete_in($table,$id){
		$this->db->where_in('id', $id);
		$this->db->delete($table);
		return true;
	}

	public function info_msg($keyyword,$lang) {
		$this->db->select("title_{$lang} as title, description_{$lang} as desc");
        $this->db->from("info_msg");
        $this->db->where("keyword",$keyyword);
        return $this->db->get()->row_array();
	}

	public function get_user_control($username,$password){
		$this->db->select('*');
        $this->db->from('administration');
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        return $this->db->get()->row_array();
	}

	public function get_seo_settings($page=null){
		$this->db->select('
			seo_settings.*,
			menu.name_en as menu
		');
        $this->db->from('seo_settings');
        if ($page != null) {
        	$this->db->where("seo_settings.page",$page);
        }
        $this->db->join('menu','menu.slug=seo_settings.page','left');
        return $this->db->get()->result_array();
	}

	public function allread($table){
	    $this->db->update($table, array("status"=>1));
	    return true;
	}


	public function get_gallery($id,$table){
		$this->db->select('*');
        $this->db->from('gallery');
        $this->db->where("parent",$id);
        $this->db->where("section",$table);
        return $this->db->get()->result_array();
	}


	public function all_delted_images($id){
		$this->db->select('image,id');
        $this->db->from('gallery');
        $this->db->where_in("id",$id);
        return $this->db->get()->result_array();
        // print_r($this->db->get_compiled_select());
	}


	public function category_slug($id){
		$this->db->select('slug');
        $this->db->from("category");
        $this->db->where_in("id",$id);
        $query  = $this->db->get();
        return $query->row_array();
	}


	public function get_category($parent){
		$this->db->select('title_az,id,parent');
        $this->db->from('category');
        $this->db->where("parent",$parent);
        $this->db->order_by("rank","ASC");
        return $this->db->get()->result_array();
	}

	public function get_category_manage($parent){
		$this->db->select("
			category.*,
			(SELECT COUNT(id) FROM category cat WHERE cat.parent=category.id) as childs,
			(SELECT COUNT(id) FROM gallery ga WHERE ga.parent=category.id AND ga.section='category') as images
		");
        $this->db->from('category');
        $this->db->where("parent",$parent);
        $this->db->order_by("rank","ASC");
        return $this->db->get()->result_array();
	}


	public function get_delete_product_id($product){
		$this->db->select('*');
        $this->db->from('products');
        $this->db->where("parent",0);
        return $this->db->get()->row_array();
	}

	public function get_menu(){
		$this->db->select('*');
        $this->db->from('menu');
        $this->db->order_by("rank","ASC");
        return $this->db->get()->result_array();
	}

	public function get_messages(){
		$this->db->select('
			messages.*,
			services.title_'.$this->dil.' as service
		');
        $this->db->from('messages');
		$this->db->join('services','messages.service_id = services.id','left');
		$this->db->order_by("messages.id","DESC");
        return $this->db->get()->result_array();
	}

	public function get_message_by_id($id){
		$this->db->select('
			messages.*,
			services.title_'.$this->dil.' as service
		');
		$this->db->from('messages');
		$this->db->where("messages.id",$id);
		$this->db->join('services','messages.service_id = services.id','left');
		$this->db->order_by("messages.id","DESC");
        return $this->db->get()->row_array();
	}

}


