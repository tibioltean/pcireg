<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class statistics extends CI_Controller {


 
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


    public function index()
    {

        //sis->_admin_output((object)array('output' => '' ,'js_files' => array() , 'css_files' => array()));
        $output['home'] = "Statistici PCI Registry";


        // apelez modelul
        $output['pacienti'] = $this->patient_model->count_patients();
        $output['pacienti_progress'] = $this->patient_model->progress_count_patients();
        $output['pacienti_new'] = $this->patient_model->new_count_patients();
        $output['pacienti_end'] = $this->patient_model->finished_count_patients();
        $output['dead'] = $this->patient_model->count_dead();
        $output['varsta'] = $this->patient_model->varsta();
        $output['gender_male'] = $this->patient_model->count_gender('male');
        $output['gender_female'] = $this->patient_model->count_gender('female');

        //echo "aici";
        //print_r( $output['varsta']['sub_30']);
        // die();
        $this->load->view('statistics_view.php',$output);
    }

    public function varsta()
    {

        $output['varsta'] = $this->patient_model->varsta();
        $output['gender_male'] = $this->patient_model->count_gender('male');

        echo  $output['gender_male'];
        # object oriented
        $from = new DateTime('1984-05-22');
        $to   = new DateTime('today');
        //echo $from->diff($to)->y;

        # procedural
       // echo date_diff(date_create('1970-02-01'), date_create('today'))->y;
    }
    
    public function teste()
    {

        $output['varsta'] = $this->patient_model->varsta();
        $output['gender_male'] = $this->patient_model->count_gender('male');

        echo  $output['gender_male'];
       

    }


}
