<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class admin extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *      http://example.com/index.php/welcome
     *  - or -
     *      http://example.com/index.php/welcome/index
     *  - or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */

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
        $this->load->view('admin_view.php',$output);
    }

    public function index()
    {
        // $this->load->view('inc/header_view');
        // $this->load->view('dashboard_view');
        $this->_admin_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
        //$this->load->view('inc/footer_view');
    }

    public function brand()
    {

        $output = $this->grocery_crud->render(); 
        $this->_admin_output($output);
    }

    function sisteme()
    {
        $crud = new grocery_CRUD();
     
        $crud->set_theme('datatables');
        $crud->set_table('sisteme');
        $crud->display_as('compartiment','Sectie/Compartiment');
        $crud->set_subject('Sistem');
        $crud->columns('grup','compartiment','etaj','ip','sistem_operare','procesor','memorie','hdd','office','anul_fabricatiei','status_sistem');
        
        // Realatii baza de date
        $crud->set_relation('grup','grup','grup_name');
        $crud->set_relation('compartiment','compartimente','compartiment_name');
        $crud->set_relation('etaj','etaj','etaj');
        $crud->set_relation('brand','brand','nume_brand');
        $crud->set_relation('memorie','memorie','memorie');
        $crud->set_relation('hdd','hdd','hdd');
        $crud->set_relation('memorie','memorie','memorie');
        $crud->set_relation('sistem_operare','sistem_operare','os');
        $crud->set_relation('tipul_sistemului','tip_sistem','tip_name');
        $crud->set_relation('status_sistem','status_sistem','status_name');
        $crud->set_relation('antivirus','antivirus','antivirus_name');
        $crud->set_field_upload('imagine','assets/uploads/files');
        //$crud->set_field_upload('imagine_monitor','assets/uploads/files');
     
        $output = $crud->render();   
        $this->_admin_output($output);
    }

  

    function imprimante()
    {

        $crud = new grocery_CRUD();
     
        $crud->set_theme('datatables');
        $crud->set_table('imprimante');
        $crud->display_as('compartiment','Sectie/Compartiment');
        $crud->set_subject('Imprimanta');
        $crud->columns('grup','compartiment','etaj','ip_network','brand','anul_fabricatiei','status_printer');

        $crud->set_relation('grup','grup','grup_name');
        $crud->set_relation('compartiment','compartimente','compartiment_name');
        $crud->set_relation('etaj','etaj','etaj');
        $crud->set_relation('brand','printer_brand','printer_name');
        $crud->set_relation('status_printer','status_sistem','status_name');

        $crud->set_field_upload('imagine','assets/uploads/files');

        $output = $crud->render();   
        $this->_admin_output($output);

    }

     function servere()
    {

        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('servere');
        //$crud->display_as('compartiment','Sectie/Compartiment');
        $crud->set_subject('Server');
        $crud->columns('server','ip1','ip2','brand','sistem_operare','anul_fabricatiei','memorie','locatie');

        //$crud->set_relation('grup','grup','grup_name');
        //$crud->set_relation('compartiment','compartimente','compartiment_name');
        //$crud->set_relation('etaj','etaj','etaj');
        //$crud->set_relation('brand','printer_brand','printer_name');
        //$crud->set_relation('status_printer','status_sistem','status_name');
        $crud->set_field_upload('file_config','assets/uploads/files');
        $crud->set_field_upload('imagine','assets/uploads/files');

        $output = $crud->render();   
        $this->_admin_output($output);
    }

    function echipamente()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('echipament_retea');
        $crud->set_subject('Echipament');
        $crud->columns('tip_echipament','ip','brand','nume_echipament','an_fabricatie','locatie','etaj');

        $crud->set_relation('tip_echipament','tip_echipamente','nume_echipament');
        $crud->set_relation('etaj','etaj','etaj');
        $crud->set_field_upload('config_file','assets/uploads/files');

        $output = $crud->render();   
        $this->_admin_output($output);

    }

    function service()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('service');
        $crud->set_subject('Fisa noua');
        $crud->columns('tip_fisa','nr_inregistrare','prioritate','data_inregistrarii','subiect','status_fisa','nume_responsabil');


        $crud->set_relation('prioritate','prioritate_service','prioritate');  
        $crud->set_relation('nume_responsabil','user','nume');         
        $crud->set_relation('tip_fisa','tip_fisa','tip_fisa');
        $crud->set_relation('status_fisa','status_op','status_name');
        //$crud->set_relation('status_fisa','status_op','status_name');

        // $crud->field_type('status_fisa','dropdown',
        //     array('1' => 'active', '2' => 'private','3' => 'spam' , '4' => 'deleted'));

        $crud->set_field_upload('atasament','assets/uploads/files');


        $output = $crud->render();   
        $this->_admin_output($output);

    }

     function backup()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('backup');
        $crud->set_subject('Fisa Back-up');
        $crud->columns('data','nr_fisa','subiect','responsabil');

        $crud->set_relation('responsabil','user','nume'); 
        $crud->unset_print();

        $output = $crud->render();   
        $this->_admin_output($output);
    }

    function setari()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('compartimente');
        $crud->set_subject('compartiment');
        $crud->display_as('compartiment_name','Compartiment');

        $crud->set_relation('grup','grup','grup_name');
        $crud->set_relation('etaj','etaj','etaj');

        $output = $crud->render();   
        $this->_admin_output($output);


    }

}
