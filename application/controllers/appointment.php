<?php

class Appointment extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();

        $this->load->database();

        $this->load->helper('url');

        $this->load->library('grocery_CRUD');
        $this->load->model('user_model');
        $this->load->model('patient_model');
        $this->load->model('followup_model');

       
    }
    // ------------------------------------------------------------------------
    
    public function index($year =null, $month=null)
    {
       
        $prefs = array(
        
        'month_type'   => 'long',
        'day_type'     => 'short',
        'show_next_prev'  => TRUE,
        'next_prev_url'   => base_url() . 'appointment/'
        );

        $this->load->library('calendar', $prefs);



        
        $data = array(
                  3  => 'http://example.com/news/article/2006/03/',
                  7  => 'http://example.com/news/article/2006/07/',
                 13 => 'http://example.com/news/article/2006/13/',
                 26 => 'http://example.com/news/article/2006/26/'
        );

       //echo $this->calendar->generate(2016, 6, $data);


        //echo $this->calendar->generate();
        echo $this->calendar->generate($this->uri->segment(3), $this->uri->segment(4));

    }
    
    // ------------------------------------------------------------------------
    
     public function calculator_followup()
    {
       
       $id_pacient =42;
      
       $this->db->select('intrevention_id, patient_id, date_time_percutaneous');
       $this->db->where('patient_id ='.$id_pacient);
       $query = $this->db->get('intervention');
       $result = $query->result_array();       
       $date_pci = $result[0]['date_time_percutaneous'];
        
      
       $date_followup = date('d-m-Y', strtotime($date_pci ."+30 days"));

       print_r($date_followup);
    }
    
    // ----------
  
    
}