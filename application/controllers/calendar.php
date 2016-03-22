<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Calendar extends CI_Controller {

 
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

       
        $this->load->view('calendar_view.php',$output);

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
            'next_prev_url'   => base_url() . 'calendar/my_calendar'
            );

        $prefs['template'] = '

             {table_open}<table border="0" cellpadding="15" cellspacing="5" class="calendar">{/table_open}

             {heading_row_start}<tr>{/heading_row_start}

             {heading_previous_cell}<th><a href="{previous_url}">&lt;&lt;</a></th>{/heading_previous_cell}
             {heading_title_cell}<th colspan="{colspan}">{heading}</th>{/heading_title_cell}
             {heading_next_cell}<th><a href="{next_url}">&gt;&gt;</a></th>{/heading_next_cell}

             {heading_row_end}</tr>{/heading_row_end}

             {week_row_start}<tr>{/week_row_start}
             {week_day_cell}<td>{week_day}</td>{/week_day_cell}
             {week_row_end}</tr>{/week_row_end}

             {cal_row_start}<tr>{/cal_row_start}
             {cal_cell_start}<td>{/cal_cell_start}

             {cal_cell_content}<a href="{content}">{day}</a>{/cal_cell_content}
             {cal_cell_content_today}<div class="highlight"><a href="{content}">{day}</a></div>{/cal_cell_content_today}

             {cal_cell_no_content}{day}{/cal_cell_no_content}
             {cal_cell_no_content_today}<div class="highlight">{day}</div>{/cal_cell_no_content_today}

             {cal_cell_blank}&nbsp;{/cal_cell_blank}

             {cal_cell_end}</td>{/cal_cell_end}
             {cal_row_end}</tr>{/cal_row_end}

             {table_close}</table>{/table_close}
          ';

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
          
          // echo $i++;
          // echo "  id ".$id;
          // echo " ***Luna curenta ".$luna_curenta ." =>";
          // echo  $zi_fup."***Luna FP  ".$luna_fup ;
          // echo "<br>";

         $ids[] = $id;
       
        // $info_cal[$zi_fup] = site_url('followup/patients')."?"."day=".$zi_fup;
        // $date_c[] = $id;
        
        }else
        {
           /* echo " ***Luna curenta ".$luna_curenta ." =>";
            echo  $zi_fup."Luna FP  ".$luna_fup ;
            echo "<br>";
          */
           $info_cal[$zi_fup] = null;

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
          
          // echo $i++;
          // echo "  id ".$id;
          // echo " Luna curenta ".$luna_curenta ." =>";
          // echo  $zi_fup."Luna FP  ".$luna_fup ;
          // echo "<br>";

         $ids[] = $id;
       
         $info_cal[$zi_fup] = site_url('calendar/patients')."?"."day=".$zi_fup;
         $ids_ui[] = $id;
        
        }else
        {
            // echo " Luna curenta ".$luna_curenta ." =>";
            // echo  $zi_fup."Luna FP  ".$luna_fup ;
            // echo "<br>";
           $info_cal[$zi_fup] = null;

        }    

      }
      }    
        
       $this->session->set_userdata('ids_ui',$ids_ui);

       //print_r($ids); 
       // generez calculatorul
     //  var_dump($info_cal);

       $tluna_curenta = date("Y/m");
      // echo $tluna_curenta;


       // design calendar
       ?>
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="utf-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>PCI Registry</title>
          <link rel="stylesheet" href="<?=base_url()?>public/third-party/css/bootstrap.min.css" />
          <link rel="stylesheet" href="<?=base_url()?>public/css/style.css" />
      <!-- <?php 
      foreach($css_files as $file): ?>
          <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
      <?php endforeach; ?>
      <?php foreach($js_files as $file): ?>
          <script src="<?php echo $file; ?>"></script>
      <?php endforeach; ?> -->
      <style type='text/css'>
      body
      {
        font-family: Arial;
        font-size: 14px;
      }
      a {
          color: blue;
          text-decoration: none;
          font-size: 18px;
      }
      a:hover
      {
        text-decoration: underline;
      }
      .calendar{
        font-family: Arial; 
        font-size: 20px; 
      }
      /*table.calendar(

      )*/
    

      table{
      border: 2px solid #25BAE4;
      border-collapse:collapse;
      margin-top: 0px;
      margin-left: 80px;
      margin-bottom: 30px;
      }
      td{
      width: 50px;
      height: 50px;
      text-align: center;
      border: 1px solid #e2e0e0;
      font-size: 18px;
      font-weight: bold;
      }
      th{
      height: 50px;
      padding-bottom: 8px;
      background:#25BAE4;
      font-size: 20px;
      }
      .prev_sign a, .next_sign a{
      color:white;
      text-decoration: none;
      }
      tr.week_name{
      font-size: 16px;
      font-weight:400;
      color:red;
      width: 10px;
      background-color: #efe8e8;
      }
      .highlight{
      background-color:#25BAE4;
      color:white;
      height: 27px;
      padding-top: 13px;
      padding-bottom: 7px;
      }
      </style>
      </head>
      <body>


      <div class="navbar">
          <div class="navbar-inner">
              <div class="container">
                  <span class="brand">My Follow-up Agenda</span>
                  <ul class="nav">
                     <li><a href="<?=site_url('dashboard/database')?>">Patients</a></li>
                    <!--   <li><a href="<?=site_url('dashboard/assignment')?>">Assignment</a></li> -->
                      <?php 
                       $drp = $this->session->userdata('user_type');
                       //print_r($drp);
                       if($drp == "admin"){          
             
                       ?>
                       <?php $luna = date("Y/m"); ?>
                      <li><a href="<?php echo site_url('calendar/my_calendar/')?><?php echo "/".$luna ?>">My Follow-up</a></li>           
                      <li><a href="<?php echo site_url('admin/users')?>">Settings</a></li>
                       <?php } ?>        
                      <li class="pull-right"><a href="<?=site_url('dashboard/logout')?>">Logout</a></li>
                  </ul>
              </div>
          </div>
        </div>
  
        <div style='height:30px; margin-left:5px;'>
        <h3> <?php  if(!empty($extra)) echo $extra;  ?>   </h3>
         </div>  
        <div class="container">
      

           
           <?php 
           echo $this->calendar->generate($year, $month, $info_cal);
           ?>
        </div>

          </div>
        <!-- end:container -->

        <div class="container">
            <div class="row">
                <div class="col-md-12" align="right">
                            &copy; <?php echo date("Y"); ?> IUBCvT | By : Registry for Percutaneous Coronary Interventions
                 </div>

            </div>
        </div>   

        </body>
        </html>
        </body>
        </html>

  
       <?php 
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
       
        // var_dump($date_cal);
        // echo "<br>";
        // var_dump($ids_ui_ses);
        // print_r($day_get);
        
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


        $crud->unset_add();
        $crud->unset_edit();  
        $crud->unset_delete();

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