<?php 

class Cron extends CI_Controller {
 
    function __construct()
    {
        parent::__construct();
 
        // this controller can only be called from the command line
        //if (!$this->input->is_cli_request()) show_error('Direct access is not allowed');


        $this->load->database();
        $this->load->helper('url');
        $this->load->model('user_model');
        $this->load->model('patient_model');
        $this->load->model('followup_model');

    }

    function index(){

      echo "Acces restrictionat";
    
    }
  
    function notificare()
    {
      
      // CLI COMMAND index.php/cron/notificare
      // extrag administratorii din db
      $users= $this->user_model->get_all_users();  

      $data_de_azi = date("d-m-Y");
      //$data_test = date("d-m-Y",strtotime($data_de_azi ."+30 days"));

      //!!!! de configurat dezactivat data de astazi....
      //$data_de_azi = "10-03-2016";

       foreach($users as $key =>$id)
      {
          print_r("user_id user =>".$id);
          echo "...";
          echo "<br>";

          // get email admin 
          $email = $this->user_model->get_user_email($id);
          print_r($email);


           // flag 1 trimit mail la user 
           $flag = 0;
           //contor pentru nr de pacienti
           $contor = 0; 

           $pacienti = $this->patient_model->get_patients_by_admin($id);
           foreach ($pacienti as $key => $id) {
              
                      $data_de_sunat = $this->date_followup($id);
                      echo $data_de_sunat;
                      echo " pacient";
                      echo $id;
                      echo " ...".$data_de_azi;
                      echo "<br>";

                      //daca data de azi == cu data follow=up atunci trimit mail la pacient
                      if($data_de_azi == $data_de_sunat){

                      $flag = 1;
                      
                      $contor++;
                        
                      }
           }

           if($flag == 1){

                echo "trimit mail la". $email ." ai ".$contor." pacienti de sunat ";
                $email_to = $email;
                $this->sendMail($email_to,$contor);
           } 

           echo "Flag =". $flag;
           echo "<br>";

           echo "contor". $contor;
           echo "<br>";
      }

         
       //var_dump($pacient);
      var_dump($data_de_azi);
      print_r($flag);

    }



public function sendMail($email_to ,$contor)
  {
      $config = Array(
      'protocol' => 'smtp',
      'smtp_host' => 'ssl://smtp.googlemail.com',
      'smtp_port' => 465,
      'smtp_user' => 'pci@cardio.ro', // change it to yours
      'smtp_pass' => "abelcet!@#123", // change it to yours
      'mailtype' => 'html',
      'charset' => 'iso-8859-1',
      'wordwrap' => TRUE
      );
          $to =$email_to;
          $message = 'Hello, you have to contact '.$contor.' patients of the PCI-registry today. Thank you';   
          $subiect = 'Follow-up notification';
          $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
        $this->email->from('pci@cardio.ro'); // change it to yours
        $this->email->to($to);// change it to yours
        $this->email->subject($subiect);
        $this->email->message($message);
        if($this->email->send())
         {
          echo 'Done Cron > Email sent by Tibi.';
         }
         else
        {
         show_error($this->email->print_debugger());
        }

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






}