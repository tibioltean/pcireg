<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Followup extends CI_Controller {

 
    public function __construct()
    {
        parent::__construct();

        $this->load->database();
        $this->load->helper('url');
        $this->load->library('grocery_CRUD');
        $this->load->model('user_model');
        $this->load->model('patient_model');
        $this->load->model('followup_model');

        $user_id = $this->session->userdata('user_id');
        if (!$user_id) {
            $this->logout();
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/');
    }

    public function _admin_output($output = null)
    {
        $this->load->view('followup_view.php',$output);
    }

    public function index()
    {
        $this->_admin_output((object)array('output' => '' ,'js_files' => array() , 'css_files' => array()));
        
    }
    

    function follow_calendar($year = null, $month = null){

        $prefs = array(        
            'month_type'   => 'long',
            'day_type'     => 'short',
            'show_next_prev'  => TRUE,
            'next_prev_url'   => base_url() . 'followup/follow_calendar'
            );

        $this->load->library('calendar', $prefs);

        
        
       echo $this->calendar->generate($year, $month);

    }
    
    function my_calendar()
    {



     // ID PACIENT
     //****************************************** 
     $id_pacient = 50;


     //  FOLLOW UP *****************************
     $this->db->where('patient_id ='.$id_pacient);
     $query = $this->db->get('follow_up');
     $count_follow = $query->num_rows();
     //************************************

     // interogare in interventii 
     // ****************************************
          // trebuie sa scot date pci din primul din interventii
          // data_pci
      $this->db->select('intrevention_id, patient_id, date_time_percutaneous');
      $this->db->where('patient_id ='.$id_pacient);
      $this->db->order_by("intrevention_id", "asc"); 
      $query = $this->db->get('intervention');     
      $count_int = $query->num_rows();      
      $result = $query->result_array();

      // Afiseaza Array cu interogarea 
      //print_r($result);
        
      if(empty($result[0]['date_time_percutaneous'])){
              $pci_date = "";
      }else{  
              $pci_date = $result[0]['date_time_percutaneous'];
      } 
        

    
      if($count_follow == 0 ){

         $date_followup = date('d-m-Y', strtotime($pci_date ."+30 days"));

      }elseif ($count_follow == 1 ) {

         $date_followup = date('d-m-Y', strtotime($pci_date ."+180 days"));

      }elseif ($count_follow == 2) {   

         $date_followup = date('d-m-Y', strtotime($pci_date ."+360 days"));

      }elseif ($count_follow > 2) {

         $date_followup = "Follow-Up Finished";
      }
      
     print_r($date_followup);


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
                 15 => 'http://example.com/news/article/2006/13/',
                 22 => 'http://example.com/news/article/2006/26/'
        );

       echo $this->calendar->generate($date_followup);


        //echo $this->calendar->generate();
        //echo $this->calendar->generate($this->uri->segment(3), $this->uri->segment(4));

    

    }
}