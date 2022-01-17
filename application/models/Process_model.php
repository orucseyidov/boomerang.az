<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Process_model extends GO_Model {


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

	public function status_change($table,$id,$data){
		$this->db->where('id', $id);
	    $this->db->update($table, $data);
	    return true;
	}

	public function delete($table,$id){
		$this->db->where('id', $id);
		$this->db->delete($table);
		return true;
	}

	public function delete_doc($table,$id,$data){
		$this->db->where('id', $id);
	    $this->db->update($table, $data);
	    return true;
	}

	public function parent_folders($id){
        $this->db->select('id');
        $this->db->from('folders');
        $this->db->where("top_id",$id);
        return $this->db->get()->result_array();
    }

    public function prds(){
        $this->db->select('id');
        $this->db->from('products');;
        return $this->db->get()->result_array();
	}
	
	public function is_subscriber($mail){
		$this->db->where('mail',$mail);
		$query = $this->db->get('newsletter');
		if ($query->num_rows() > 0){
			return true;
		}
		else{
			return false;
		}
	}
}