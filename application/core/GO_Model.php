<?php 



class GO_Model extends CI_Model {


	public $dil;

	public function __construct(){
		$this->dil = isset($this->session->dil) ? $this->session->dil : 'en';
		parent::__construct();

	}


	function add($table,$data){
        return $this->db->insert($table,$data);
	}

	function add_last_id($table,$data){
        $this->db->insert($table,$data);
        return $this->db->insert_id();
	}

	public function myquery($sql){
		return $this->db->query($sql);
	}

	public function update($table,$update,$updatedata) {
	    $this->db->where(is_array($update) ? $update : array('id' => $update));
	    $this->db->update($table, $updatedata);
	    return true;
	}

	public function get_select($table,$select=null) {
		$this->db->select($select==null ? '*' : $select);
        $this->db->from($table);
        $query  = $this->db->get();
        return $query->result_array();
	}

	public function get_values($table,$id,$select=null) {
		$this->db->select($select==null ? '*' : $select);
        $this->db->from($table);
        $this->db->where('id', $id);
        $query  = $this->db->get();
        return $query->row_array();
	}

	public function get_select_all($table,$select=null) {
		$this->db->select($select==null ? '*' : $select);
        $this->db->from($table);
        $this->db->order_by("id","DESC");
        return $this->db->get()->result_array();
	}

	public function get_select_all_id($table,$id) {
		$this->db->select('*');
        $this->db->from($table);
        $this->db->where('id', $id);
        return $this->db->get()->result_array();
	}

	public function get_count($table,$row,$where=false) {
		$this->db->select($row);
        $this->db->from($table);
        if ($where != false) {
        $this->db->where($where);
        }
        return $this->db->count_all_results();
	}

	public function delete($table,$id){
		$this->db->where('id', $id);
		$this->db->delete($table);
		return true;
	}

	public function get_language(){
		$this->db->select('
		value_'.$this->dil.' as title,
		keyword
		');
        $this->db->from('languages');
        $query  = $this->db->get();
        return $query->result_array();
	}

	public function get_content(){
		$this->db->select('
		title_'.$this->dil.' as title,
		value_'.$this->dil.' as value,
		keyword
		');
        $this->db->from('content');
        $query  = $this->db->get();
        return $query->result_array();
	}

	public function get_info_site(){
		$this->db->select('
		title_'.$this->dil.' as title,
		icon_class, count, count_side
		');
        $this->db->from('info_site');
        $query  = $this->db->get();
        return $query->result_array();
	}

	public function view_update($table,$id){
		$this->db->query("UPDATE `$table` SET `view` = view+1 WHERE `$table`.`id` ='$id'");
	}

	public function limit_in_sidebar($table, $limit){
		$this->db->select('*,
			title_'.$this->dil.' as title,
			description_'.$this->dil.' as description
		');
		$this->db->from($table);
		if ($limit != '') {
			$this->db->limit($limit);
		}
		$this->db->where("$table.status",1);
		// $this->db->order_by("$table.id","DESC");
		$this->db->order_by("$table.id","RANDOM");
		return $this->db->get()->result_array();
	}

}
