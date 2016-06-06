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

	 function get_patients_by_admin($user_id)
	{
		
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

	
	function count_patients()
	{
		$count = $this->db->count_all('patients'); //count simplu
		return $count;
	}


	function new_count_patients()
	{
		//$count = $this->db->count_all('patients'); count simplu
		$status = 'New';		
		$this->db->where('status', $status);
		$this->db->from('patients');
		$count = $this->db->count_all_results();
	    return $count;
	}

	function progress_count_patients()
	{
		//$count = $this->db->count_all('patients'); count simplu
		$status = 'In progress';		
		$this->db->where('status', $status);
		$this->db->from('patients');
		$count = $this->db->count_all_results();
	    return $count;
	}

		function finished_count_patients()
	{
		//$count = $this->db->count_all('patients'); count simplu
		$status = 'Finished';		
		$this->db->where('status', $status);
		$this->db->from('patients');
		$count = $this->db->count_all_results();
	    return $count;
	}

	function count_dead()
	{	
		$status = 'dead';		
		$this->db->where('status', $status);
		//$this->db->where('password',$password);
		$this->db->from('patients');
		$count = $this->db->count_all_results();
	    return $count;
	}	

	function varsta()
	{	
		

		//$this->db->where('status', $status);
		$this->db->where("status ='Finished' OR status ='In progress' OR status ='new' OR status ='dead'");
		
	    $query = $this->db->get('patients'); // scot pacientii
	    $array = array();

	    // flaguri
		$sub_30    = 0;
		$rg_31_40  = 0;
		$rg_41_50  = 0;
		$rg_51_60  = 0;
		$rg_61_70  = 0;
		$rg_71_80  = 0;
		$peste_80  = 0;

		// parcurg pacientii
	    foreach($query->result() as $row)
	    {	        
	      //**** ar trebuie data primului pci ca sa scot data de la momentul acela	
	       $varsta= $row->date_of_birth;   // scot data nasterii
	       $from = new DateTime( $varsta); // formatez data
           $to   = new DateTime('today');  // compar cu data curenta data de azi- aici trebuie data  de la prima interventie a fiecarui pacient
           $varsta = $from->diff($to)->y;  // calculez cati ani are
          // echo $varsta ; // afisare
          // echo "</br>";
           //echo ",";   // afisare
	       
	       // verific erori daca au varsta mai mare de 99 de ani
	       //if($varsta > 99 && $varsta != 0 && $varsta != 2016) 
	       if($varsta <= 30 && $varsta != 0 && $varsta != 2016   )
	       {
	       		$sub_30++;
	       		/*echo "1cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }

	        if($varsta >= 31 && $varsta <= 40 && $varsta != 0  && $varsta != 2016)
	       {
	       		$rg_31_40++;
	       		/*echo "2cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }

	        if($varsta >= 41 && $varsta <= 50 && $varsta != 0  && $varsta != 2016)
	       {
	       		$rg_41_50++;
	       		/*echo "3cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }


	        if($varsta >= 51 && $varsta <= 60 && $varsta != 0  && $varsta != 2016)
	       {
	       		$rg_51_60++;
	       		/*echo "3cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }

	         if($varsta >= 61 && $varsta <= 70 && $varsta != 0  && $varsta != 2016)
	       {
	       		$rg_61_70++;
	       		/*echo "3cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }

	         if($varsta >= 71 && $varsta <= 80 && $varsta != 0  && $varsta != 2016)
	       {
	       		$rg_71_80++;
	       		/*echo "3cnp".$cnp = $row->cnp;
	       		echo "</br>";*/	       	
	       }
	     
	          if($varsta > 80  && $varsta != 0  && $varsta != 2016)
	       {
	       		$peste_80++;
	       		/*echo "3cnp".$cnp = $row->cnp;
	       		echo "</br>";	*/       	
	       }
	   		
	    }

	    /*echo "*****: __";   
	    print_r($sub_30);
	    echo ",";	  
	    print_r($rg_31_40);	  
	    echo ",";
	    print_r($rg_41_50);	  
	    echo ","; 
	    print_r($rg_51_60);	  
	    echo ",";
	    print_r($rg_61_70);	  
	    echo ",";
	    print_r($rg_71_80);	  
	    echo ",";
	    print_r($peste_80);	 */ 
	    

	    //die();

	    $statistica['sub_30']   = $sub_30;
	    $statistica['rg_31_40'] = $rg_31_40;
	    $statistica['rg_41_50'] = $rg_41_50;
	    $statistica['rg_51_60'] = $rg_51_60;
	    $statistica['rg_61_70'] = $rg_61_70;
	    $statistica['rg_71_80'] = $rg_71_80;
	    $statistica['peste_80'] = $peste_80;


	    return $statistica;
	}	

	function count_gender($sex)
	{	
		$gender = $sex;		
		$this->db->where('gender', $gender);
		//$this->db->where('password',$password);
		$this->db->from('patients');
		$count = $this->db->count_all_results();
	    return $count;
	}	



}
