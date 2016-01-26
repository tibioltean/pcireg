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
        
        $this->_admin_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
        
    }

   

    function users()
    {
        $crud = new grocery_CRUD();
     
        $crud->set_theme('datatables');
        $crud->set_table('user');
        $crud->display_as('login','Username');
        $crud->display_as('user_name','Name');

       
        $crud->set_subject('User');
        $crud->columns('login','user_type','user_name','email','mobile');
        $crud->required_fields('login','user_type','user_name','email','mobile');
        $crud->set_rules('email', 'Email', 'trim|required|valid_email');
       
        $crud->change_field_type('password','password');

        // Cripatare password
        $crud->callback_before_insert(array($this,'encrypt_password_callback'));
        $crud->callback_edit_field('password',array($this,'set_password_input_to_empty'));
        $crud->callback_before_update(array($this,'encrypt_password_callback'));
        //$crud->callback_edit_field('password',array($this,'decrypt_password_callback'));
      
        // Realatii baza de date
        //$crud->set_relation('grup','grup','grup_name');
      
        //$crud->set_field_upload('imagine_monitor','assets/uploads/files');
        
         $crud->field_type('user_type','dropdown',
                     array(
                      'admin' => 'admin',
                      'user' => 'user'
                      ));  

        $output = $crud->render();   
        $this->_admin_output($output);
    }

    function encrypt_password_callback($post_array, $primary_key = null)
    {
      $this->load->library('encrypt');

    if(!empty($post_array['password']))
    {
      $key = 'super-secret-key';
      //$post_array['password'] = $this->encrypt->encode($post_array['password'], $key);
      $password =$post_array['password'];
      $post_array['password'] = hash('sha256', $password . SALT);
    }else
    {
        unset($post_array['password']);
    }


      return $post_array;
    }

    function decrypt_password_callback($value)
    {
      $this->load->library('encrypt');
      $key = 'super-secret-key';
      //$decrypted_password = $this->encrypt->decode($value, $key);
      $decrypted_password = $this->encrypt->decode($value, $key);

      return "<input type='password' name='password' value='$decrypted_password' />";
    }
    

    function set_password_input_to_empty() 
    {
    return "<input type='password' name='password' value='' />";
   }

    function user_activities() 
    {
       $crud = new grocery_CRUD();
     
        $crud->set_theme('datatables');
        $crud->set_table('logs');
       // $crud->display_as('login','Username');
   
       
        //$crud->set_subject('Users Activities');
        $crud->columns('id','user_name','action','info','ip_location','date');

        // unset actions
        $crud->unset_delete();
        $crud->unset_add();
        $crud->unset_edit();

       
        $crud->callback_column('user_name',array($this,'_users'));

       
        
        $output = $crud->render();   
        $this->_admin_output($output);



    }

     function _users($value, $row)
    { 

     // Interogare follow up
     //****************************************** 
      $id = $row->user_id;


      $this->db->select('user_name');
      $this->db->where('user_id ='.$id);
      $query = $this->db->get('user');     
      $result = $query->result_array();
      //******************************************
      
      $username = $result['0']['user_name'];
      
      return   $username;
    }




}
