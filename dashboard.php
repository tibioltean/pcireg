<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class dashboard extends CI_Controller {

 
    public function __construct()
    {
        parent::__construct();

        $this->load->database();

        $this->load->helper('url');

        $this->load->library('grocery_CRUD');
        $this->load->model('user_model');

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
        $this->load->view('dashboard_view.php',$output);
    }

    public function index()
    {
        $this->_admin_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
        
    }

    public function brand()
    {

        $output = $this->grocery_crud->render(); 
        $this->_admin_output($output);
    }

    
 function database()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('patients');
        $crud->set_subject('Patient');
        //$crud->display_as('compartiment_name','Compartiment');

        $crud->columns('cnp','first_name','last_name','date_of_birth','sex','city','height','weight');
              
        $crud->field_type('sex','dropdown',
            array('Male' => 'Male', 'Female' => 'Female'));

        $crud->add_action('Interventions', '', '','ui-icon-heart',array($this,'go_intervention'));
        $crud->add_action('Follow-Up', '', '','ui-icon-calculator',array($this,'go_followup'));

        $output = $crud->render();   
        $this->_admin_output($output);


    }

    function go_intervention($primary_key , $row)
    {
        return site_url('dashboard/interventions').'?p_id='.$row->id;
    }
 
    function go_followup($primary_key , $row)
    {
        return site_url('dashboard/followup').'?p_id='.$row->id;
    }

    function interventions()
    {
        //die("int");
       

        $crud = new grocery_CRUD();
        //verifica daca get este setata sa previn eroarea "undefine index variable" si verifica daca are valoare
          
        if(isset($_GET["p_id"]) != NULL)
        {
        
            // setez o variabila sesiune 
            $this->session->set_userdata('patient_id',$_GET['p_id']);
            $pid = $this->session->userdata('patient_id');
            //print_r("ID_pacient: ".$pid);
            
            //echo $_GET['pacient_id'].' sesiune settata';
         
       
        } else {
            $pid = $this->session->userdata('patient_id');
            //echo "hau".$pid."nu are"; 
            //print_r("ID_pacient: ".$pid);
        }

        //aici fac filtrarea pentru pacient a spitalizarilor dupa variabila sesiune
        $crud->where('patient_id',$pid);
        

        // Configurez modelul pentru afisare
        $crud->set_theme('datatables');
        $crud->set_table('interventions');
        $crud->set_subject('PCI Intervention');

        //Configurare coloane
         $crud->columns('date_of_procedure','hospital_id','trasnferred','201','203');  

        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        $crud->field_type('user_id', 'hidden');
        $crud->field_type('edit_user', 'hidden');
        $crud->field_type('edit_time', 'hidden');



        // Afisare DB in Formular
         $crud->display_as('hospital_id','Hospital ID');
         $crud->display_as('trasnferred','Transferred form another hospital');
        // $crud->display_as('201','History of previews myocardial infarction (MI)');
        // $crud->display_as('203','History of congestive heart failure (CHF)');
        

        // Meniuri drop down
        $crud->field_type('trasnferred','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 

        $output = $crud->render();   
        $this->_admin_output($output);
    }

    function followup()
    {
       $crud = new grocery_CRUD();
        //verifica daca get este setata sa previn eroarea "undefine index variable" si verifica daca are valoare
          
        if(isset($_GET["p_id"]) != NULL)
        {
        
            // setez o variabila sesiune 
            $this->session->set_userdata('patient_id',$_GET['p_id']);
            $pid = $this->session->userdata('patient_id');
            //print_r("ID_pacient: ".$pid);
            
            //echo $_GET['pacient_id'].' sesiune settata';
         
       
        } else {
            $pid = $this->session->userdata('patient_id');
            //echo "hau".$pid."nu are"; 
            //print_r("ID_pacient: ".$pid);
        }

        //aici fac filtrarea pentru pacient a spitalizarilor dupa variabila sesiune
        $crud->where('patient_id',$pid);
        

        // Configurez modelul pentru afisare
        $crud->set_theme('datatables');
        $crud->set_table('folow_up');
        $crud->set_subject('PCI Follow-Up');

        //Configurare coloane
         $crud->columns('date','aspirin','other_antiplatelet','anticoagulants','beta_blockers','ace_inhibitors');  

        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        // $crud->field_type('user_id', 'hidden');
        // $crud->field_type('edit_user', 'hidden');
        // $crud->field_type('edit_time', 'hidden');



        // Afisare DB in Formular
         $crud->display_as('non_statin','Non statin lipid lowering ag');
        // $crud->display_as('trasnferred','Transferred form another hospital');
        // $crud->display_as('201','History of previews myocardial infarction (MI)');
        // $crud->display_as('203','History of congestive heart failure (CHF)');
        

        // Meniuri drop down
        $crud->field_type('aspirin','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 
        $crud->field_type('other_antiplatelet','dropdown',
             array('1' => 'Triclopidine', '2' => 'Triclopidine/clopidogrel','Other antiplatele' => 'Other antiplatele medication','Unknown' => 'Unknown')); 
        $crud->field_type('anticoagulants','dropdown',
             array('No' => 'No', 'Vit. K' => 'Vit. K antagonists','Other' => 'Other ','Unknown' => 'Unknown')); 
        $crud->field_type('beta_blockers','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown ')); 
        $crud->field_type('ace_inhibitors','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown '));  
        $crud->field_type('angiotensin','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown ')); 
        $crud->field_type('statins','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown ')); 
        $crud->field_type('diabetic_control','dropdown',
             array('None' => 'None', 'Insulin and oral agent' => 'Insulin and oral agent','Insulin' => 'Insulin','Oral agent' => 'Oral Agent','Diet only' => 'Diet only','Unknown' => 'Unknown')); 
        $crud->field_type('non_statin','dropdown',
             array('None' => 'None', 'Ezetimibe' => 'Ezetimibe','Fibrates' => 'Fibrates','Unknown' => 'Unknown ')); 


        $output = $crud->render();   
        $this->_admin_output($output);
    }
}
