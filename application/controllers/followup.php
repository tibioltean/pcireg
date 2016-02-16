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
    

    function my_calendar($year = null, $month = null){

        $prefs = array(        
            'month_type'   => 'long',
            'day_type'     => 'short',
            'show_next_prev'  => TRUE,
            'next_prev_url'   => base_url() . 'followup/my_calendar'
            );

        $this->load->library('calendar', $prefs);

      

      // scot pacientii din model 
      $patients = $this->patient_model->get_all_patients();

      //print_r($patients); // print id-uri din model 
      //$luna_curenta = date("Y-m-d");
       
      $luna_curenta = $month ."-".$year;
      // parcurg toti pacientii si le calculez data follow-up-lui - si fac array-ul pentru calendar
      
      //******************** LOOP Pentru filtrare pacienti luna curenta pentru a  evita rescrierea zilelor *******************
      $ids = null;
      $i=1; // [Parcurg toti pacientii si ii filtrez doar pe cei din luna curenta]
      foreach($patients as $key =>$id)
      {

         //calculez follow-up-ul pacientului
         $pat_fup = $this->date_followup($id);
         
         $zi_fup = $this->day($pat_fup);
         // extrag luna si anul din data follow-up-lui pentru cumparare  
         $luna_fup =$this->month($pat_fup);
         // formatez ziua pentru afisare in calendar
         $zi_fup = $this->good_day($zi_fup);

      // $luna_fup = trim($luna_fup);
      // $luna_curenta = trim($luna_curenta);

      if($luna_curenta == $luna_fup){
          
          echo $i++;
          echo "  id ".$id;
          echo " ***Luna curenta ".$luna_curenta ." =>";
          echo  $zi_fup."***Luna FP  ".$luna_fup ;
          echo "<br>";

         $ids[] = $id;
       
        // $info_cal[$zi_fup] = site_url('followup/patients')."?"."day=".$zi_fup;
        // $date_c[] = $id;
        
        }else
        {
            echo " ***Luna curenta ".$luna_curenta ." =>";
            echo  $zi_fup."Luna FP  ".$luna_fup ;
            echo "<br>";
          // $info_cal[$zi_fup] = null;

        }          
      }

    
      //*********************** LOOP PT CALENDAR *******************************
      // parcurg pacientii din luna curenta pentru afisare in calendar
      $info_cal = null;
      $ids_ui = null;
      // daca nu am pacienti in luna respectiva atunci nu fac afisare
      if($ids != null){
      foreach ($ids as $key => $id) {
        
          //calculez follow-up-ul pacientului
         $pat_fup = $this->date_followup($id);
         
         $zi_fup = $this->day($pat_fup);
         // extrag luna si anul din data follow-up-lui pentru cumparare  
         $luna_fup =$this->month($pat_fup);
         // formatez ziua pentru afisare in calendar
         $zi_fup = $this->good_day($zi_fup);

      // $luna_fup = trim($luna_fup);
      // $luna_curenta = trim($luna_curenta);

      if($luna_curenta == $luna_fup){
          
          echo $i++;
          echo "  id ".$id;
          echo " Luna curenta ".$luna_curenta ." =>";
          echo  $zi_fup."Luna FP  ".$luna_fup ;
          echo "<br>";

         $ids[] = $id;
       
         $info_cal[$zi_fup] = site_url('followup/patients')."?"."day=".$zi_fup;
         $ids_ui[] = $id;
        
        }else
        {
            echo " Luna curenta ".$luna_curenta ." =>";
            echo  $zi_fup."Luna FP  ".$luna_fup ;
            echo "<br>";
           $info_cal[$zi_fup] = null;

        }    

      }
      }    
        
       $this->session->set_userdata('ids_ui',$ids_ui);

       print_r($ids); 
       // generez calculatorul
       echo $this->calendar->generate($year, $month, $info_cal);
       
       var_dump($info_cal);

       $tluna_curenta = date("Y/m");
       echo $tluna_curenta;
       

    }


    function day($pat_fup){

        $stamp = strtotime($pat_fup); // outputs 1307708880
        $day = date("d", $stamp); 
        return $day;
    }

    function good_day($zi_fup){

      switch ($zi_fup) {
          case "01":
              $zi_fup = 1;
              break;
          case "02":
              $zi_fup = 2;
              break;
          case "03":
             $zi_fup = 3;;
             break;
          case "04":
             $zi_fup = 4;;
             break;
          case "05":
              $zi_fup = 5;
              break;
          case "06":
              $zi_fup = 6;
              break;
          case "07":
             $zi_fup = 7;
             break;
          case "08":
             $zi_fup = 8;;
             break;
          case "09":
             $zi_fup = 9;
             break; 
          default:
               $zi_fup = $zi_fup;
        }
          return $zi_fup;
    }

    function month($pat_fup){

        $stamp = strtotime($pat_fup); // outputs 1307708880
        $luna = date("m", $stamp); // it prints out the Month only like (Oct)
        $an = date("Y", $stamp);
        $luna = $luna."-".$an; 

        return $luna;
    }
   

    
     function date_followup($id)
    {



     // ID PACIENT
     //****************************************** 
     $id_pacient = $id;


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
      
       return $date_followup;
    }


     function patients()
    {
        $drp = $this->session->userdata('user_type');
        //primesc data din calendar  
         $day_get = $_GET["day"];
        // setez data din calendar variabila sesiune
        // $this->session->set_userdata('data_cal',$_GET['data']);
        $ids_ui_ses = $this->session->userdata('ids_ui');
        $date_cal = array(96,95,89);
       


        var_dump($date_cal);
        echo "<br>";
        var_dump($ids_ui_ses);
        print_r($day_get);
        
        //die();

        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');

       
        //nu merge cu asta
        //$crud->or_where('productName','Car'); 

        //$id = 95;
        $crud->set_table('patients');
        $crud->set_subject('Patient');


          
        foreach($ids_ui_ses as $key => $id)
         {

            $pat_fup = $this->date_followup($id);
            $zi_fup = $this->day($pat_fup);
            // extrag luna si anul din data follow-up-lui pentru cumparare  
            $luna_fup =$this->month($pat_fup);
            // formatez ziua pentru afisare in calendar
           $zi_fup = $this->good_day($zi_fup);

           if($zi_fup == $day_get)
              $crud->or_where('patients.id', $id);

         }

         //$crud->or_where('patients.id', $id);
        // aici pun filtrele pt admin
        //$crud->where('admin',1);
       
        
        $crud->display_as('fo_nr','Medical Record number');
        $crud->field_tip('fo_nr', 'eg: 1234/2016');
        $crud->display_as('city','City or Locality');
        $crud->display_as('gp_phone','GP Phone'); 
        $crud->display_as('GP_info','Notes');

        // User Level Unset
        if($drp == "user"){          
          $crud->unset_delete();
          $crud->unset_export();
          $crud->unset_print();

        // afisare fara statistici  // data 24.01.2017 
         $crud->columns('id','fo_nr','cnp','last_name','first_name','follow_up_date','status','signature');
        }
        // afisare in admin coloane cu statistici // data 24.01.2017
        $crud->columns('id','cnp','last_name','first_name','No_of_PCIs','Completed_FU_events','follow_up_date','status','signature','admin');

        
        $crud->field_tip('cnp', 'Personal ID No.');
        $crud->field_tip('gender', 'The gender of the patient');
        $crud->field_tip('height', 'Height in cm');
        $crud->field_tip('weight', 'Weight in kg');
        $crud->required_fields('cnp','first_name','last_name','admin','status');


        $crud->field_type('gender','dropdown',
            array('Male' => 'Male', 'Female' => 'Female'));

        $crud->field_type('country','dropdown',
                     array(
                      'Romania' => 'Romania',
                      'Other' => 'Other',                                
                      'Unknown' => 'Unknown'                     
                      ));  

        $crud->set_relation('county','county','county');
        $crud->set_relation('signature','user','user_name');
        $crud->set_relation('admin','user','user_name');

        $crud->add_action('Interventions', '', '','ui-icon-heart',array($this,'go_intervention'));
        $crud->add_action('Follow-Up', '', '','ui-icon-calculator',array($this,'go_followup'));
        
        $crud->callback_column('follow_up_date',array($this,'_followup'));




        $crud->callback_column('Completed_FU_events',array($this,'_nofollowup'));
        $crud->callback_column('No_of_PCIs',array($this,'_nointerv'));

        /*// log- user activities
        $crud->callback_after_insert(array($this, 'log_user_after_insert_patient'));
        $crud->callback_after_update(array($this, 'log_user_after_update_patient'));
        $crud->callback_after_delete(array($this, 'log_user_after_delete_patient'));
        */
        $crud->unique_fields('cnp');
        $crud->field_type('status','dropdown',
             array('New' => 'New','In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 


        //$extra = "info";
        //$output = $crud->render($extra);     
        $output = $crud->render();      
        // $output->extra = '<h3>Pacient</h3>'; Adauga valori extra pentru view

        $this->_admin_output($output);

    }


     function _followup($value, $row)
    { 

     // Interogare follow up
     //****************************************** 
     $id_pacient = $row->id;
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

        
      if(empty($result[0]['date_time_percutaneous'])){
              $pci_date = "";
      }else{  
              $pci_date = $result[0]['date_time_percutaneous'];
      } 
        

     //******************************************
    
     // verific data pci cu data curenta 
     // la 30 zile 182  si 365
     // dupa care data curenta o incrementez cu diferenta
     // returnez data urmatoare pana follow up
      //$data_next = date('d/m/Y');
      
      //data curenta
      //$date_now = date('d-m-Y');   

      // extrag data de pci
      //$date_pci = "2015-12-29";   
      // dauga zile la o data
      if($count_follow == 0 ){

         $date_followup = date('d-m-Y', strtotime($pci_date ."+30 days"));

      }elseif ($count_follow == 1 ) {

         $date_followup = date('d-m-Y', strtotime($pci_date ."+180 days"));

      }elseif ($count_follow == 2) {   

         $date_followup = date('d-m-Y', strtotime($pci_date ."+360 days"));

      }elseif ($count_follow > 2) {

         $date_followup = "Follow-Up Finished";
      }
      
      return   $date_followup;
    }


     function _nofollowup($value, $row)
    { 

     // Interogare follow up
     //****************************************** 
     $id_pacient = $row->id;
     $this->db->where('patient_id ='.$id_pacient);
     $query = $this->db->get('follow_up');
     $count_follow = $query->num_rows();

     return $count_follow;
    }

       function _nointerv($value, $row)
    { 

     // Interogare follow up
     //****************************************** 
     $id_pacient = $row->id;
     $this->db->where('patient_id ='.$id_pacient);
     $query = $this->db->get('intervention');
     $count_follow = $query->num_rows();

     return $count_follow;
    }

    function go_intervention($primary_key , $row)
    {
        return site_url('dashboard/interventions').'?p_id='.$row->id;
    }
 
    function go_followup($primary_key , $row)
    {
        return site_url('dashboard/followup').'?p_id='.$row->id;
    }
}