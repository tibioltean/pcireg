<?php

class Patient_model extends CRUD_model
{
    protected $_table = 'patients';
    protected $_primary_key = 'id';
    
    // ------------------------------------------------------------------------
    
    public function __construct()
    {
        parent::__construct();
    }
    
    // ------------------------------------------------------------------------
    
    function get_all_patients()
	{
		// aici filtrez pacientii dupa id-ul userului
		$user_id = $this->session->userdata('user_id');
		//$user_id = 29;  // ******** !!!! ATENTIE LA DEZACTIVARE  

		$this->db->where('admin', $user_id); 

	    $query = $this->db->get('patients');
	    $array = array();

	    foreach($query->result() as $row)
	    {
	        $array[] = $row->id;
	         // add each user id to the array
	    }

	    return $array;
	}




}
