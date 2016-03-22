<?php

class User_model extends CRUD_model
{
    protected $_table = 'user';
    protected $_primary_key = 'user_id';
    
    // ------------------------------------------------------------------------
    
    public function __construct()
    {
        parent::__construct();
    }
    
    // ------------------------------------------------------------------------
    
    function get_all_users()
	{
		$this->db->where('user_type', "admin"); 
	    $query = $this->db->get('user');
	    $array = array();
	    foreach($query->result() as $row)
	    {
	        $array[] = $row->user_id;	    
	         // add each user id to the array
	    }
	    return $array;
	}

	function get_user_email($id)
	{
		$this->db->where('user_id', $id); 
	    $query = $this->db->get('user');
	    //$data = array();
	    $data = $query->result_array();

        $email_dst = $data[0]['email'];
	    return $email_dst;
	}

}
