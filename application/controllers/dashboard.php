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
        $this->load->model('patient_model');

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
        $this->_admin_output((object)array('output' => '' ,'js_files' => array() , 'css_files' => array()));
        
    }
    
    
 function database()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('patients');
        $crud->set_subject('Patient');
        
        $crud->display_as('fo_nr','Medical Record number');
         $crud->field_tip('fo_nr', 'eg: 1234/2016');
        $crud->display_as('city','City or Locality');
        $crud->display_as('gp_phone','GP Phone'); 
        $crud->display_as('GP_info','Notes');


        $crud->columns('id','fo_nr','cnp','last_name','first_name','date_of_birth','gender','status','signature');
        
        $crud->field_tip('cnp', 'Personal ID No.');
        $crud->field_tip('gender', 'The gender of the patient');
        $crud->field_tip('height', 'Height in cm');
        $crud->field_tip('weight', 'Weight in kg');
        $crud->required_fields('cnp','first_name','last_name','signature','status');


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
        //$crud->set_relation('city','coduripostale','Localitate');
        
        $drp = $this->session->userdata('user_type');
        //print_r($drp);

        $crud->add_action('Interventions', '', '','ui-icon-heart',array($this,'go_intervention'));
        $crud->add_action('Follow-Up', '', '','ui-icon-calculator',array($this,'go_followup'));

        // User Level Unset
        if($drp == "user"){          
          $crud->unset_delete();
          $crud->unset_export();
          $crud->unset_print();
        }
        
        $crud->callback_column('date_of_birth2',array($this,'valueToEuro'));
        
        $crud->unique_fields('cnp');
        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 



       
        $output = $crud->render();      
        // $output->extra = '<h3>Pacient</h3>'; Adauga valori extra pentru view

        $this->_admin_output($output);


    }
    function valueToEuro($value, $row)
    {
      return $value.' &euro;';
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
        
         // User Level Unset
        $drp = $this->session->userdata('user_type');
        //print_r($drp);
        if($drp == "user"){          
          $crud->unset_delete();
          $crud->unset_export();
          $crud->unset_print();
        }

        // Configurez modelul pentru afisare
        $crud->set_theme('datatables');
        $crud->set_table('intervention');
        $crud->set_subject('PCI Intervention');

        //Configurare coloane
        // Afisare Coloane in lista
        $crud->columns('date_time_percutaneous','attending_cardiologist','interventional_cardiologist','status','signature');
        $crud->required_fields('signature','status');
        $crud->set_relation('signature','user','user_name');
        //Afisare compuri in add si edit  
       /* $crud->fields('patient_id',
                      'date_of_procedure',
                      'coronary_artery_cabg',
                      'Peri_Procedural_Complications');*/


        // Afisare campuri in Afisarea READ 
        /*$crud->set_read_fields('date_of_procedure',
                              'Peri_Procedural_Complications',
                              'coronary_artery_cabg');
*/
        //$crud->field_tip('date_of_procedure', 'Tibike draga');
        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        $crud->field_type('user_id', 'hidden');
        $crud->field_type('edit_user', 'hidden');
        $crud->field_type('edit_time', 'hidden');



        $crud->field_tip('ID_procedure','Indicate Procedure Registry number');
       

        // Afisare DB in Formular 
        // -- 1.Past History relevand to Coronary Artery Diesease
        $crud->display_as('PAST_HISTORY','*** Past History relevant to Coronary Artery Disease');
        $crud->field_type('PAST_HISTORY', 'readonly');


        $crud->display_as('transferred','Transferred form other hospital');
        $crud->field_tip('transferred', 'Indicate if the patient was transferred from other hospital');

        $crud->field_tip('heart_rate', 'Enter value of heart rate before PCI '); 
        $crud->field_tip('BP', 'Enter value of blood pressure before PCI ex: 120/70 ');
       
        $crud->display_as('history_mi','History of previous myocardial infarction (MI)');
        $crud->field_tip('history_mi', 'Indicate if the patient has had at least one previous myocardial infarction before this admission.');
        
        $crud->display_as('history_chf','History of congestive heart failure (CHF)');
        $crud->field_tip('history_chf', 'Indicate if the patient has a history and/or has previously been treated for congestive heart failure');

        $crud->field_tip('attending_cardiologist', 'Indicate the attending cardiologist of the patient');
        $crud->field_tip('interventional_cardiologist', 'Indicate the interventional cardiologist who performed the PCI');

        $crud->display_as('history_stroke','History of stroke');
        $crud->field_tip('history_stroke', 'Indicate if the patient has a history of cerebrovascular accident / stroke, as evidenced by persistent neurological deficit due to ischaemia. ');

        $crud->display_as('history_vascular','History of peripheral vascular diesease');
        $crud->field_tip('history_vascular', 'History or evidence of aneurysm or occlusive peripheral vascular/carotid disease, aortic aneurysm, prev. vascular surgery, reduced/absent peripheral pulses and/or angiographic stenosis of more than 50%.  ');

        $crud->display_as('history_renal','History of chronic renal failure');
        $crud->field_tip('history_renal', 'History of: creatinine >2.0 mg/dl (200 umol/l), or on dialysis, or has had a renal transplantation');

        $crud->display_as('prev_pci','Previous percutaneous corany intervention(PCI)');
        $crud->field_tip('prev_pci', 'Indicate if the patient has had a previous PCI of any type before the current PCI');

        $crud->display_as('cabg','Coronary artery bypass graft (CABG)');
        $crud->field_tip('cabg', 'Indicate if the patient had a coronary artery bypass graft (CABG) done prior to this admission');

        $crud->display_as('history_valvular_h','History of valvular heart diesease');
        $crud->field_tip('history_valvular_h', 'History of haemodynamically significant valvular heart disease or prior valvular heart  surgery/replacement/intervention.');

        // -- 2. Risk factors for Coronary Artery Disease
        $crud->display_as('RISK_STATUS','***  Risk factors for Coronary Artery Disease');
        $crud->field_type('RISK_STATUS', 'readonly');

        $crud->display_as('smoking_status','Smoking status');
        $crud->field_tip('smoking_status', 'History of any form of tobacco use; former smoking indicates that the patient has quit smoking >30 days before this admission.');

        $crud->display_as('diabets_mellitus','Diabets mellitus');
        $crud->field_tip('diabets_mellitus', 'Indicate if the patient has a history of diabetes mellitus diagnosed prior to the current admission');

        $crud->display_as('history_hypertension','History of hypertension');
        $crud->field_tip('history_hypertension', 'Indicate if the patient has a history of hypertension diagnosed and/or treated by a physician');

        $crud->display_as('history_hypercholesterol','History of hypercholesterolemia');
        $crud->field_tip('history_hypercholesterol', 'Indicate if the patient has a documented history of hypercholesterolemia diagnosed and/or treated by a physician.');

        // -- 3. Admision Details and initial Assessment 
        $crud->display_as('ADMISION_DETAILS','*** Admission Details and initial Assessment');
        $crud->field_type('ADMISION_DETAILS', 'readonly');

        $crud->display_as('indication_pci','Indication for percutaneous coronary intervention PCI');
        $crud->field_tip('indication_pci', 'Indicate the reason why the percutaneous coronary intervention was performed');

        $crud->display_as('symptom_acs','Symptom onset date and time (ACS patients)');
        $crud->field_tip('symptom_acs', 'Indicate the time of symptom onset that triggered the decision for PCI.');
      
        $crud->display_as('arrival_acs','Date and time of arrival to UPU SMURD TG Mures ');
        $crud->field_tip('arrival_acs', ' ONLY for ACS patients');
       
        $crud->display_as('date_time_arival','Date and time of hospital admission ');
        $crud->field_tip('date_time_arival', 'Date/time of admission to IUBCvT');

        $crud->display_as('elevated_biochemical','Elevated biochemical marker pre procedure');
        $crud->field_tip('elevated_biochemical', 'Troponin T/I, CK-MB and/or CK were raised above the levels indicatig acute myocardial infarction pre-procedure. ');

        $crud->display_as('date_time_percutaneous','Date and time of percutaneous coronary (PCI)');
        $crud->field_tip('date_time_percutaneous', 'Indicate the date and time the PCI was performed');

        $crud->display_as('cardiogenic_pci','Cardiogenic shock at start of PCI');
        $crud->field_tip('cardiogenic_pci', 'Indicate if the patient presented with cardiogenic shock before the PCI procedures');

        $crud->display_as('hemodynamic','Mechanical haemodynamic support');
        $crud->field_tip('hemodynamic', 'Indicate if haemodynamic support was needed before the start of the PCI procedure');

        $crud->display_as('scr','Cardiac arrest before PCI');
        $crud->field_tip('scr', 'Indicate if the ACS for which the patient was hospitalized, was complicated by cardiac arrest BEFORE the PCI procedure');

        //-- 4. Investigations for Coronary Artery Disease 
        $crud->display_as('INVESTIGATION_CORONARY','*** Investigations for Coronary Artery Disease');
        $crud->field_type('INVESTIGATION_CORONARY', 'readonly');
        
        $crud->display_as('lv_opt','Left ventricular ejection fraction (LVEF, %) ');
        $crud->field_tip('lv_opt', 'Indicate the patients  estimated or calculated left ventricular [LV] function (lowest value during hospitalization)');


        $crud->display_as('ANGIOGRAM_RESULT','*** ANGIOGRAM RESULT ***');
        $crud->field_type('ANGIOGRAM_RESULT', 'readonly');
        

        $crud->display_as('right_coronary','Proximal right coronary artery (segment 1)');
        $crud->field_tip('right_coronary', 'Indicate stenosis severity');
        $crud->field_type('right_coronary','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  



        $crud->display_as('mrca','Mid-right coronary artery  (segment 2)');
        $crud->field_tip('mrca', 'Indicate stenosis severity');
        $crud->field_type('mrca','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('drca','Distal right coronary artery (segment 3)');
        $crud->field_tip('drca', 'Indicate stenosis severity');
        $crud->field_type('drca','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  


        $crud->display_as('rpda','Right posterior descending artery (segment 4)');
        $crud->field_tip('rpda', 'Indicate stenosis severity');
        $crud->field_type('rpda','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('lm_artery','Left main artery (segment 5)');
        $crud->field_tip('lm_artery', 'Indicate stenosis severity');
        $crud->field_type('lm_artery','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('plad','Proximal LAD artery (segment 6)');
        $crud->field_tip('plad', 'Indicate stenosis severity');
        $crud->field_type('plad','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('mlad','Mid-LAD artery (segment 7)');
        $crud->field_tip('mlad', 'Indicate stenosis severity');
        $crud->field_type('mlad','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('dlad','Distal LAD artery (segment 8)');
        $crud->field_tip('dlad', 'Indicate stenosis severity');
        $crud->field_type('dlad','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  


        $crud->display_as('1_diagonal','First diagonal branch (segment 9)');
        $crud->field_tip('1_diagonal', 'Indicate stenosis severity');
        $crud->field_type('1_diagonal','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  


        $crud->display_as('2_diagonal','Second diagonal branch (segment 10)');
        $crud->field_tip('2_diagonal', 'Indicate stenosis severity');
        $crud->field_type('2_diagonal','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  


        $crud->display_as('pcirc','Proximal circumflex coronary (segment 11)');
        $crud->field_tip('pcirc', 'Indicate stenosis severity');
        $crud->field_type('pcirc','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('intart','Intermediate artery (segment 12)');
        $crud->field_tip('intart', 'Indicate stenosis severity');
        $crud->field_type('intart','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('om','First obtuse marginal branch (segment 12a)');
        $crud->field_tip('om', 'Indicate stenosis severity');
        $crud->field_type('om','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('som','Second obtuse marginal branch (segment 12b)');
        $crud->field_tip('som', 'Indicate stenosis severity');
        $crud->field_type('som','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('circ','Mid/Dist Circumflex artery (segment 13)');
        $crud->field_tip('circ', 'Indicate stenosis severity');
        $crud->field_type('circ','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('obtuse_segments','Other obtuse segments (segment 14)');
        $crud->field_tip('obtuse_segments', 'Indicate stenosis severity');
        $crud->field_type('obtuse_segments','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('lpda','Left posterior descending artery (segment 15)');
        $crud->field_tip('lpda', 'Indicate stenosis severity');
        $crud->field_type('lpda','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('posteo_segment','Right posterolateral branch (segment 16)');
        $crud->field_tip('posteo_segment', 'Indicate stenosis severity');
        $crud->field_type('posteo_segment','dropdown',
                     array(
                      '<25% (luminal irregularities)' => '<25% (luminal irregularities)',
                      '25 - 49% (mild stenosis)' => '25 - 49% (mild stenosis)',
                      '50 - 74% (intermediate stenosis)' => '50 - 74% (intermediate stenosis)',
                      '75 - 90% (severe stenosis)' => '75 - 90% (severe stenosis)',
                      '90 - 99% (critical stenosis)' => '90 - 99% (critical stenosis)',                      
                      '100% (complete occlusion)' => '100% (complete occlusion)'                     
                      ));  

        $crud->display_as('no_vessels','No. of diseased vessels');
        $crud->field_tip('no_vessels', 'Indicate the number of vessels with at least one ≥50% stenosis: RCA (segm. 1,2,3,4,16); LAD (segm. 6,7,8,9,10); LCX (segm. 11,12,12a,12b,13,14,15). ');

        $crud->display_as('left_main_d','Left main stem disease');
        $crud->field_tip('left_main_d', 'Indicate if the left main stem (segment 5) is at least 50% stenosed.');

        $crud->display_as('main_stem','Left main stem protected');
        $crud->field_tip('main_stem', 'Complete this field ONLY if PCI of segment 5 (left main) was attempted. A protected left main is defined as a patent graft to either LAD or LCX.');
        $crud->field_tip('dominance', 'Indicate the type of coronary artery dominance');



        //-- ****** 5. Percutaneous Coronary interventions
        $crud->display_as('PCI','*** Percutaneous Coronary interventions');
        $crud->field_type('PCI', 'readonly');
        

        $crud->display_as('segment_no','Segment No');
        $crud->field_tip('segment_no', 'Number of the treated segment (1-16 or arterial/venous by-pass conduit).');
       // $crud->display_as('type_lesion','Type of lesion');
        $crud->display_as('re_stenosis','In-stent restenosis');
        $crud->field_tip('re_stenosis', 'Indicate for the treated segment if there is in-stent re-stenosis');       

        $crud->field_tip('stent_thrombosis', 'Indicate for the treated segment if there is stent thrombosis');

        $crud->display_as('bifurcation','Bifurcation');
        $crud->field_tip('bifurcation', 'Indicate if the treated lesion is at the site of coronary artery bifurcation including at least 1 side branch of ≥1.5 mm diameter');

        $crud->display_as('bifurcation_yes','Medina class');
        $crud->field_tip('bifurcation_yes', 'select Medina class ONLY if the treated lesion is a bifurcation');

        $crud->display_as('cto','Chronic total occlusion ');
        $crud->field_tip('cto', 'Indicate if the treated lesion is a complete occlusion since minimum three months');

        $crud->display_as('tmi_before','TIMI Flow before PCI');
        $crud->field_tip('tmi_before', 'Indicate for the segment identified the pre-PCI TIMI flow');

        $crud->display_as('tmi_after','TIMI Flow after PCI');
             $crud->field_tip('tmi_after', 'Indicate for the segment identified the post-PCI TIMI flow');

        //$crud->display_as('stenosis_b_pci','%Stenosis before PCI');
        //$crud->field_tip('stenosis_b_pci', 'Indicate for the treated segment the pre-PCI percent stenosis');

        $crud->display_as('stenosis_a_pci','%Stenosis after PCI');
        $crud->field_tip('stenosis_a_pci', 'Indicate for the treated segment the post- PCI percent stenosis');

        $crud->display_as('stent','Stent');
        $crud->field_tip('stent', 'Indicate for the treated segment if a stent was used');

        $crud->display_as('direct_stenting','Direct stenting');
        $crud->field_tip('direct_stenting', 'Indicate for the treated segment if  direct stenting was carried out, I.e. direct stent placement without balloon predilatation of the target lesion');

        $crud->display_as('stent_type','Stent Type');
        $crud->field_tip('stent_type', 'Indicate for the treated segment the stent type');

        $crud->display_as('drug_eluting_type','DES type');
        $crud->field_tip('drug_eluting_type', 'Indicate the drug-eluting stent type');

        $crud->display_as('stent_size','Stent diameter');
        $crud->field_tip('stent_size', 'Indicate for the treated segment the largest [maximum] stent diameter in millimetres');

        $crud->display_as('length','Lenght of stent');
        $crud->field_tip('length', 'Indicate the longest stented segment (or balloon if no stents) in millimetres used during the intervention. Add the length of all contiguous stents.');



        //**** -- 6. Percutaneous Coronary interventions (other details)
        $crud->display_as('PCI_other','*** Percutaneous Coronary interventions (other details)');
        $crud->field_type('PCI_other', 'readonly');

        $crud->display_as('percutaneous_arterial','Percutaneous acces');
        $crud->field_tip('percutaneous_arterial', 'Indicate the primary location of percutaneous arterial entry');

        $crud->display_as('diagnostic_device','Diagnostic device used during procedure');
        $crud->field_tip('diagnostic_device', 'Indicate diagnostic device (s) was used during this procedure');

        $crud->display_as('therapeutic_device','Therapeutic device used');
        $crud->field_tip('therapeutic_device', 'Indicate for the treated segment the intracoronary device(s) used.  Tick in chronological order.');

        $crud->display_as('procedural_complications','Peri-Procedural complications');
        $crud->field_tip('procedural_complications', 'Indicate the peri-procedural complications');
        // Complicatii relatie N to N        
        //$crud->set_relation_n_n('Peri_Procedural_Complications', 'interv_compl','complication','intervention_id', 'complication_id','complication_name','priority');


        $crud->display_as('coronary_artery_cabg','Coronary artery bypass graft (CABG)');
        $crud->field_tip('coronary_artery_cabg', 'Indicate if the patient underwent a CABG');

        $crud->display_as('vascular_closure','Vascular closure device');
        $crud->field_tip('vascular_closure', 'Indicate if a vascular closure device for percutaneous arterial management was used during or after this PCI procedure');

        $crud->display_as('perc_arterial_complications','Percutaneous acces complications');
        $crud->field_tip('perc_arterial_complications', 'Indicate if there were arterial percutaneous complications post PCI  procedure.');

        $crud->display_as('fluo_time','Fluoroscopy time');
        $crud->field_tip('fluo_time', 'Indicate fluoroscopy time in hour:min:sec (eg: 00:01:59)');


        $crud->display_as('AK','Air Kerma');
        $crud->field_tip('AK', 'Indicate radiation dose in mGray');

        // Laboratory 
        $crud->display_as('LABORATORY','*** Laboratory analysis');
        $crud->field_type('LABORATORY', 'readonly');

        $crud->field_tip('creatinine', 'Enter the first in-hospital creatinine value determined before PCI');
        $crud->field_tip('hemoglobin', 'Enter the first in-hospital hemoglobin value determined before PCI ');
        $crud->field_tip('leucocyte', 'Enter the first in-hospital white blood cell count determined before PCI');
        $crud->field_tip('thrombocyte', 'Enter the first in-hospital thrombocyte count determined before PCI');

        //-- 7. Medication at time of PCI 
        $crud->display_as('MEDICATION_PCI','*** Medication at time of PCI ');
        $crud->field_type('MEDICATION_PCI', 'readonly');

 
        $crud->display_as('aspirin','Aspirin');
        $crud->field_tip('aspirin', 'Indicate whether the patient was on aspirin at the time of PCI');

        $crud->display_as('other_antiplatele','Other antiplatelet');
        $crud->field_tip('other_antiplatele', 'Indicate if the patient was given antiplatelet (other than aspirin) medication at the time of PCI');

        $crud->display_as('anticoagulant','Anticoagulants');
        $crud->field_tip('anticoagulant', 'Indicate if the patient was given  anticoagulant medication at the time of PCI');

        $crud->display_as('glycoprotein','Glycoprotein llb/llla');
        $crud->field_tip('glycoprotein', 'Indicate the glycoprotein IIb/IIIa type administered at the time of PCI procedure');

        $crud->display_as('heparin','Heparin/low molecular weight heparin');
        $crud->field_tip('heparin', 'Indicate if heparin and/or LMWH were administered at the time of PCI');

        //-- 8. Outcome
        $crud->display_as('OUTCOME','*** Outcome ');
        $crud->field_type('OUTCOME', 'readonly');


        $crud->display_as('elevated','Elevated biochemical marker post procedure');
        $crud->field_tip('elevated', 'Troponin T/I, CK-MB and/or CK were raised above the levels indicatig acute myocardial infarction post-PCI');

        $crud->display_as('myocardial_post','Myocardial (re)infarction post procedure');
        $crud->field_tip('myocardial_post', 'Indicate if  the patient developed a myocardial (re)infarction after the index PCI procedure');

        $crud->display_as('bleeding_hospital','Bleeding during hospital stay');
        $crud->field_tip('bleeding_hospital', 'Bleeding during the hospital stay that required close monitoring and/ or specific treatment, e.g. transfusion. Major: overt clinical bleeding associated with a drop in Hgb of >5 g/dl (0.5g/l) or in Htc of 15% (absolute).');

        $crud->display_as('stroke','Stroke');
        $crud->field_tip('stroke', 'Indicate if the patient experienced a cerebrovascular accident/stroke after the PCI, as evidenced by persistent neurological deficit due to ischaemia.');

        $crud->display_as('cin','Contrast induced nephropathy');
        $crud->field_tip('cin', 'Indicate if there was an absolute (>0.5mg/dL/>44μmol/l) or relative (>25%) increase in creatinine at 48-72 hours after PCI, compared to baseline values.');

        $crud->display_as('renal_failure','Renal failure requiring dialysis');
        $crud->field_tip('renal_failure', 'Indicate if renal failure requiring dialysis occurred during this hospital admission');

        $crud->display_as('survival_status','Survival status at dischange');
        $crud->field_tip('survival_status', 'Indicate vital status at discharge');

        $crud->display_as('date_discharge','Date of dischange/death');
        $crud->field_tip('date_discharge', 'Indicate the date the patient was discharged from hospital or if patient died record the date of death');

        $crud->display_as('discharge_destination','Discharge destination');
        $crud->field_tip('discharge_destination', 'Indicate the patient discharge destination');
        

        //-- 9. Medication at discharge
        $crud->display_as('MEDICATION_DISCHARGE','*** Medication at discharge ');
        $crud->field_type('MEDICATION_DISCHARGE', 'readonly');


        $crud->display_as('aspirin2','Aspirin');
        $crud->field_tip('aspirin2', 'Indicate if the patient was prescribed aspirin on discharge from hospital');

        $crud->display_as('other_antiplatele2','Other antiplatelet');
        $crud->field_tip('other_antiplatele2', 'Indicate if the patient was prescribed antiplatelet medication (other than aspirin) on discharge from hospital');

        $crud->display_as('anticoagulant2','Anticoagulants');
        $crud->field_tip('anticoagulant2', 'Indicate if the patient was prescribed anticoagulant medication on discharge from hospital.');

        $crud->display_as('beta-blockers','Beta-blockers');
        $crud->field_tip('beta-blockers', 'Indicate if the patient was prescribed Beta-Blockers on discharge from hospital');

        $crud->display_as('ace_inhibitors','ACE inhibitors');
        $crud->field_tip('ace_inhibitors', 'Indicate if the patient was prescribed ACE inhibitors on discharge from hospital');

        $crud->display_as('angiotensin_repector','Angiotensin II repetor blockers');
        $crud->field_tip('angiotensin_repector', 'Indicate if the patient was prescribed angiotensin II receptor blockers on discharge from hospital');

        $crud->display_as('diabetic_control','Diabetic control');
        $crud->field_tip('diabetic_control', 'Indicate the main method of diabetic treatment the patient was prescribed on discharge from hospital');

        $crud->display_as('statins','Statins');
        $crud->field_tip('statins', 'Indicate if the patient was prescribed statins on discharge from hospital');

        $crud->display_as('non_statin','Non-statin lipid lowering agents');
        $crud->field_tip('non_statin', 'Indicate if the patient was prescribed non-statin lipid lowering agents on discharge from hospital');

        $crud->display_as('glycoprotein2','Glycoprotein llb/llla');
        $crud->field_tip('glycoprotein2', 'Indicate the use of Glycoprotein IIb/IIIa inhibitors on discharge from hospital');

        $crud->display_as('heparin2','Heparin/low molecular weight heparin');
        $crud->field_tip('heparin2', 'Indicate if the patient was prescribed unfractionated heparin/LMWH on discharge.');
        
        //-- 10. INFO CHAPTER
        $crud->display_as('INFO','*** Other informations ');
        $crud->field_type('INFO', 'readonly');
        $crud->field_tip('status', 'Indicate status of intervention insert data process');
        $crud->field_tip('notes', 'Indicate notes of intervention insert data process');

        // Meniuri drop down
        //****************  -- 1.Past History relevand to Coronary Artery Diesease
        $crud->field_type('transferred','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 
        $crud->field_type('history_mi','dropdown',
                     array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 
        $crud->field_type('history_chf','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        $crud->field_type('history_stroke','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        $crud->field_type('history_vascular','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        $crud->field_type('history_renal','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));         
        $crud->field_type('prev_pci','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));
        $crud->field_type('cabg','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));
        $crud->field_type('history_valvular_h','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('cto','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        $crud->field_type('cin','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
                
        //****************  -- 2. Risk factors for Coronary Artery Disease
         $crud->field_type('smoking_status','dropdown',
             array('Never' => 'Never', 'Current' => 'Current','Former' => 'Former','Unknown' => 'Unknown'));  
                

        $crud->field_type('diabets_mellitus','dropdown',
                     array(
                      'Non-diabetic' => 'Non-diabetic',
                      'Diabetic (dietary control)' => 'Diabetic (dietary control)',
                      'Diabetic (oral medication)' => 'Diabetic (oral medication)',
                      'Diabetic (insulin)' => 'Diabetic (insulin)',
                      'Diabetic (insulin + oral medication)' => 'Diabetic (insulin + oral medication)',
                      'Newly diagnosed diabetic' => 'Newly diagnosed diabetic',                      
                      'Unknown' => 'Unknown'                     
                      ));  

        $crud->field_type('history_hypertension','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        $crud->field_type('history_hypercholesterol','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        //****************  -- 3. Admision Details and initial Assessment
        $crud->field_type('indication_pci','dropdown',
                     array(
                      'STEMI / primary PCI' => 'STEMI / primary PCI',
                      'STEMI / rescue PCI' => 'STEMI / rescue PCI',
                      'STEMI / facilitated PCI' => 'STEMI / facilitated PCI',
                      'NSTACS (immediate PCI,< 2h)' => 'NSTACS (immediate PCI,< 2h)',                      
                      'NSTACS (early PCI,< 24h)' => 'NSTACS (early PCI,< 24h)',                      
                      'NSTACS (invasive strategy,< 72h)' => 'NSTACS (invasive strategy,< 72h)',
                      'Post STEMI (stabilised)' => 'Post STEMI (stabilised)',                      
                      'Post unstable angina (stabilised)' => 'Post unstable angina (stabilised)',                      
                      'Elective PCI (stable angina and/ or documented ischemia)' => 'Elective PCI (stable angina and/ or documented ischemia)',                      
                      'Others' => 'Others',                       
                      'Unknown' => 'Unknown'                     
                      ));  
        $crud->field_type('elevated_biochemical','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));   

        $crud->field_type('cardiogenic_pci','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('hemodynamic','dropdown',
                     array('No' => 'No', 'Yes (IABP/CP bypass)' => 'Yes (IABP/CP bypass)','Unknown' => 'Unknown'));  
         $crud->field_type('scr','dropdown',
                     array('No' => 'No', 'Yes ' => 'Yes ','Unknown' => 'Unknown'));  


        //****************4. Investigations for Coronary Artery Disease 
        /*  $crud->field_type('lv_opt','dropdown',
                     array(
                      'Normal (>50%)' => 'Normal (>50%)',
                      'Slightly reduced (41-50%)' => 'Slightly reduced (41-50%)',
                      'Moderately reduced (31-40%)' => 'Moderately reduced (31-40%)',
                      'Severely reduced (<30%)' => 'Severely reduced (<30%)', 
                      'Unknown' => 'Unknown'                     
                      ));    */
     
        $crud->field_type('no_vessels','dropdown',
                     array(
                      '1' => '1',
                      '2' => '2',
                      '3' => '3',
                      ));    

        $crud->field_type('left_main_d','dropdown',
             array('No' => 'No', 'Yes' => 'Yes'));   

        

        $crud->field_type('dominance','dropdown',
                     array(
                      'right' => 'right',
                      'left' => 'left',
                      'codominance' => 'codominance',
                      'Unknown' => 'Unknown'                     
                      ));    
        
        $crud->field_type('main_stem','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

    
        $crud->field_type('segment_no','multiselect',
                     array(
                      'segment 1' => 'segment 1',
                      'segment 2' => 'segment 2',
                      'segment 3' => 'segment 3',
                      'segment 4' => 'segment 4',
                      'segment 5' => 'segment 5',
                      'segment 6' => 'segment 6',
                      'segment 7' => 'segment 7',
                      'segment 8' => 'segment 8',
                      'segment 9' => 'segment 9',
                      'segment 10' => 'segment 10',
                      'segment 11' => 'segment 11',
                      'segment 12' => 'segment 12',
                      'segment 12a' => 'segment 12a',
                      'segment 12b' => 'segment 12b',
                      'segment 13' => 'segment 13',
                      'segment 14' => 'segment 14',
                      'segment 15' => 'segment 15',
                      'segment 16' => 'segment 16',
                      'arterial by-pass conduit' => 'arterial by-pass conduit',                     
                      'venous by-pass conduit' => 'venous by-pass conduit'                     
                      ));    

        //****************5. Investigations for Coronary Artery Disease  

      /*  $crud->field_type('type_lesion','dropdown',
                     array(
                      'TYPE A' => 'TYPE A',
                      'TYPE B' => 'TYPE B',
                      'TYPE C' => 'TYPE C',
                      'Unknown' => 'Unknown'                     
                      ));    */

        //$crud->field_type('type_lesion','dropdown',
           //  array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('re_stenosis','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('stent_thrombosis','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('bifurcation','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

         $crud->field_type('bifurcation_yes','dropdown',
                     array(
                      '1-1-1' => '1-1-1',
                      '1-1-0' => '1-1-0',
                      '1-0-0' => '1-0-0',
                      '1-0-1' => '1-0-1',
                      '0-1-1' => '0-1-1',
                      '0-1-0' => '0-1-0',
                      '0-0-1' => '0-0-1',
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->field_type('tmi_before','dropdown',
                     array(
                      'TIMI 0' => 'TIMI 0',
                      'TIMI 1' => 'TIMI 1',
                      'TIMI 2' => 'TIMI 2',
                      'TIMI 3' => 'TIMI 3',
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->field_type('tmi_after','dropdown',
                     array(
                      'TIMI 0' => 'TIMI 0',
                      'TIMI 1' => 'TIMI 1',
                      'TIMI 2' => 'TIMI 2',
                      'TIMI 3' => 'TIMI 3',
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->field_type('stent','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  
        
        $crud->field_type('direct_stenting','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('stent_type','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('stent_type','multiselect',
                     array(
                      'Bare Metal' => 'Bare Metal',
                      'Drug-eluting' => 'Drug-eluting',
                      'Stent-graft' => 'Stent-graft',
                      'Bioabsorbable VS' => 'Bioabsorbable VS',
                      'Other' => 'Other',
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->display_as('bare_metal','Bare metal stent');
        $crud->field_tip('bare_metal','indicate the number of implanted bare metal stents');
        $crud->field_type('bare_metal','dropdown',
                     array(                    
                      '1' => '1',
                      '2' => '2',
                      '3' => '3', 
                      '4' => '4',
                      '5' => '5',
                      '6' => '6',
                      '7' => '7'
                      )); 

        $crud->display_as('drug_eluting','Drug-eluting stent');
        $crud->field_tip('drug_eluting','indicate the number of implanted drug-eluting stents');
        $crud->field_type('drug_eluting','dropdown',
                     array(                    
                      '1' => '1',
                      '2' => '2',
                      '3' => '3', 
                      '4' => '4',
                      '5' => '5',
                      '6' => '6',
                      '7' => '7'
                      ));       

        $crud->display_as('stent_graft','Stent-graft');
        $crud->field_tip('stent_graft','indicate the number of implanted stent grafts ');
        $crud->field_type('stent_graft','dropdown',
                     array(                 
                      '1' => '1',
                      '2' => '2',
                      '3' => '3', 
                      '4' => '4',
                      '5' => '5',
                      '6' => '6',
                      '7' => '7'
                      ));     

        $crud->display_as('bioabsorbable','Bioabsorbable VS');
        $crud->field_tip('bioabsorbable','indicate the number of implanted bioabsorbable vascular scaffolds ');
        $crud->field_type('bioabsorbable','dropdown',
                     array(                   
                      '1' => '1',
                      '2' => '2',
                      '3' => '3', 
                      '4' => '4',
                      '5' => '5',
                      '6' => '6',
                      '7' => '7'
                      ));     

        $crud->field_type('drug_eluting_type','multiselect',
                     array(
                      'Promus' => 'Promus',
                      'Orsiro' => 'Orsiro',
                      'Resolute' => 'Resolute',
                      'Onyx' => 'Onyx',
                      'Xience' => 'Xience',
                      'Nobori' => 'Nobori',
                      'Trial DES' => 'Trial DES',
                      'Other DES' => 'Other DES',
                      'Unknown' => 'Unknown'                     
                      ));    


        //  -- 6. Percutaneous Coronary interventions (other details)

        $crud->field_type('percutaneous_arterial','dropdown',
                     array(
                      'Femoral' => 'Femoral',
                      'Radial' => 'Radial',
                      'Brachial' => 'Brachial',
                      'Combined (Femoral + radial)' => 'Combined (Femoral + radial)',
                      'Combined (Bifemoral)' => 'Combined (Bifemoral)',
                      'Other' => 'Other',                      
                      'Unknown' => 'Unknown'                                        
                      ));    

         $crud->field_type('diagnostic_device','multiselect',
                     array(
                      'None' => 'None',
                      'OCT' => 'OCT',
                      'Presure wire' => 'Pressure wire',
                      'IVUS' => 'IVUS',
                      'Other' => 'Other',
                      'Unknown' => 'Unknown'                                        
                      ));    

         $crud->field_type('therapeutic_device','multiselect',
                     array(
                      'None' => 'None',
                      'Balloon predilatation' => 'Balloon predilatation',
                      'Balloon postdilatation' => 'Balloon postdilatation',
                      'Thrombectomy' => 'Thrombectomy',
                      'Distal Protection Device' => 'Distal Protection Device',
                      'Drug-eluting balloon' => 'Drug-eluting balloon',
                      'Rotablator' => 'Rotablator',
                      'Cutting ballon' => 'Cutting ballon',
                      'Other' => 'Other',
                      'Unknown' => 'Unknown'                                        
                      ));    

         $crud->field_type('procedural_complications','multiselect',
                     array(
                      'No Peri-Procedural complications' => 'No Peri-Procedural complications',
                      'Acute segment closure' => 'Acute segment closure',
                      'Side branch occlusion' => 'Side branch occlusion',
                      'Coronary perforation' => 'Coronary perforation',
                      'No flow/slow flow phenomenon' => 'No flow/slow flow phenomenon',
                      'Heart block requiring pacing' => 'Heart block requiring pacing',
                      'DC cardioversion' => 'DC cardioversion',
                      'Ventilated' => 'Ventilated',
                      'Tamponade' => 'Tamponade',
                      'Shock induced by procedure' => 'Shock induced by procedure',
                      'Allergic reactions' => 'Allergic reactions',
                      'Stroke' => 'Stroke',
                      'Cardiac arrest' => 'Cardiac arrest',
                      'Unknown' => 'Unknown'                                        
                      ));    


         $crud->field_type('coronary_artery_cabg','dropdown',
                     array(
                      'No' => 'No',
                      'Emergency' => 'Emergency',
                      'Planned' => 'Planned',
                      'Unknown' => 'Unknown'                                        
                      ));    


        $crud->field_type('vascular_closure','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

       
        $crud->field_type('perc_arterial_complications','multiselect',
                     array(
                      'None' => 'None',
                      'False aneurysm' => 'False aneurysm',
                      'Haemorrhage requiring surgery or transfusion' => 'Haemorrhage requiring surgery or transfusion',
                      'Arterial occlusion/dissection requiring interventions' => 'Arterial occlusion/dissection requiring interventions',
                      'AV Fistula' => 'AV Fistula',
                      'Infection' => 'Infection',
                      'Unknown' => 'Unknown'                                        
                      ));    


        //  -- 7. Medication at time of PCI
        $crud->field_type('aspirin','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('other_antiplatele','dropdown',
                     array(
                      'No' => 'No',
                      'Clopidogrel' => 'Clopidogrel',
                      'Ticagrelor' => 'Ticagrelor',
                      'Prasugrel' => 'Prasugrel',
                      'Other antiplatelet agent' => 'Other antiplatelet agent',
                      'Unknown' => 'Unknown'                                        
                      ));    


        $crud->field_type('anticoagulant','dropdown',
                     array(
                      'No' => 'No',
                      'Vit. K antagonists' => 'Vit. K antagonists',
                      'Oral thrombin inhibitors' => 'Oral thrombin inhibitors',
                      'Oral factor Xa inhibitors' => 'Oral factor Xa inhibitors',
                      'Other anticoagulants agents' => 'Other anticoagulant agent',
                      'Unknown' => 'Unknown'                                        
                      ));    

         $crud->field_type('glycoprotein','dropdown',
                     array(
                      'No' => 'No',
                      'Eptifibatide' => 'Eptifibatide',
                      'Unknown' => 'Unknown'                                        
                      ));    

        $crud->field_type('heparin','dropdown',
                     array(
                      'No' => 'No',
                      'Unfractionated heparin' => 'Unfractionated heparin',
                      'LMWH' => 'LMWH',
                      'LMWH + Unfractionated heparin' => 'LMWH + Unfractionated heparin',
                      'Unknown' => 'Unknown'                                        
                      ));    

        // -- 8. Outcome
        $crud->field_type('elevated','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('myocardial_post','dropdown',
                         array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('bleeding_hospital','multiselect',
                     array(
                      'No' => 'No',
                      'Intracranial bleed' => 'Intracranial bleed',
                      'Retroperitoneal bleed (major)' => 'Retroperitoneal bleed (major)',
                      'Gastrointestinal bleed (major)' => 'Gastrointestinal bleed (major)',
                      'Any other spontaneous bleed (major)' => 'Any other spontaneous bleed (major)',
                      'Unknown' => 'Unknown'                                        
                      )); 

        $crud->field_type('stroke','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('renal_failure','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        $crud->field_type('survival_status','dropdown',
                     array(
                      'Alive' => 'Alive',
                      'Dead' => 'Dead',
                      'Unknown' => 'Unknown'                                        
                      )); 

        $crud->field_type('discharge_destination','dropdown',
                     array(
                      'Home' => 'Home',
                      'Transferred to other hospital' => 'Transferred to other hospital',
                      'Covalescent/Rehabilitation center' => 'Covalescent/Rehabilitation center',
                      'Unknown' => 'Unknown'                                        
                      )); 

        //-- 9. Medication at discharge
        $crud->field_type('aspirin2','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));      

      
        $crud->field_type('other_antiplatele2','dropdown',
                     array(
                      'No' => 'No',
                      'Clopidogrel' => 'Clopidogrel',
                      'Ticagrelor' => 'Ticagrelor',
                      'Prasugrel' => 'Prasugrel',
                      'Other antiplatelet agent' => 'Other antiplatelet agent',
                      'Unknown' => 'Unknown'                                        
                      ));    


        $crud->field_type('anticoagulant2','dropdown',
                     array(
                      'No' => 'No',
                      'Vit. K antagonists' => 'Vit. K antagonists',
                      'Oral throbin inhibitors' => 'Oral throbin inhibitors',
                      'Oral factor Xa inhibitors' => 'Oral factor Xa inhibitors',
                      'Other anticoagulants agents' => 'Other anticoagulant agent',
                      'Unknown' => 'Unknown'                                        
                      ));    

        $crud->field_type('beta-blockers','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));      


        $crud->field_type('ace_inhibitors','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));      

        $crud->field_type('angiotensin_repector','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 
        
        $crud->field_type('diabetic_control','dropdown',
             array('None' => 'None', 'Insulin and oral agent' => 'Insulin and oral agent','Insulin' => 'Insulin','Oral agent' => 'Oral Agent','Diet only' => 'Diet only','Unknown' => 'Unknown')); 

         $crud->field_type('statins','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown ')); 



        $crud->field_type('non_statin','dropdown',
                     array(
                      'None' => 'None',
                      'Ezetimibe' => 'Ezetimibe',
                      'Fibrates' => 'Fibrates',
                      'Other Non-statin' => 'Other Non-statin',
                      'Unknown' => 'Unknown'                                        
                      ));    


       /* $crud->field_type('glycoprotein2','dropdown',
                     array(
                      'No' => 'No',
                      'Abciximab' => 'Abciximab',
                      'Unknown' => 'Unknown'                                        
                      ));    */

        


        $crud->field_type('heparin2','dropdown',
                     array(
                      'No' => 'No',
                      'Unfractionated heparin' => 'Unfractionated heparin',
                      'LMWH' => 'LMWH',
                      'LMWH + Unfractionated heparin' => 'LMWH + Unfractionated heparin',
                      'Unknown' => 'Unknown'                                        
                      ));    

        $crud->set_relation('attending_cardiologist','attending_cardiologist','cardiologist_name');
        $crud->set_relation('interventional_cardiologist','interventional_cardiologist','cardiologist_name');
        

        //***** Finish form wiht progress option
        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 



        $output = $crud->render(); 

        // aduc din baza de date prin model tabela pacient
        if(isset($_GET["p_id"]) != NULL)
        {
            $result = $this->patient_model->get([
                'id' => $pid ]);

        }
        // extrag din array nume si prenume 
        $nume = $result[0]['first_name'];
        $prenume = $result[0]['last_name'];        
        // trimit prin variabila extra din obiect in view

        $output->extra = "Patient: ".$nume." ".$prenume;
  
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
        $crud->set_table('follow_up');
        $crud->set_subject('PCI Follow-Up');

        //Configurare coloane
        $crud->columns('date','survival_status','date_of_death','status','signature');  
        $crud->required_fields('signature','status');
        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        // $crud->field_type('user_id', 'hidden');
        // $crud->field_type('edit_user', 'hidden');
        // $crud->field_type('edit_time', 'hidden');
        $crud->set_relation('signature','user','user_name');
          // User Level Unset
        $drp = $this->session->userdata('user_type');
        //print_r($drp);
        if($drp == "user"){          
          $crud->unset_delete();
          $crud->unset_export();
          $crud->unset_print();
        }

        // Afisare nume formular follow-up
        //-- 1. Follow Up (30 days and 12 months)
        $crud->display_as('date','Date of follow up');
        $crud->field_tip('date', 'Indicate the date of last follow up alive. This may be the date of follow up or the date the patient is last seen alive by verifiable sources');

        $crud->display_as('survival_status','Survival status at folow up');
        $crud->field_tip('survival_status', 'Indicate vital status at follow up');

        $crud->display_as('death_cause','Primary cause of death');
        $crud->field_tip('death_cause', 'If the patient died indicate the cause of death');

        $crud->display_as('anginal_status','Anginal status');
        $crud->field_tip('anginal_status', 'Indicate the patients anginal status at the time of follow-up');

        $crud->display_as('date_readmission','Date of first hospital readmission since discharge');
        $crud->field_tip('date_readmission', 'If the patient is readmitted to hospital indicate the date');
        
        $crud->field_tip('dyspnoea', 'Grade breathing status according to the New York Heart Association (NYHA) functional classification.');

        $crud->display_as('mi','Myocardial infarction [MI]');
        $crud->field_tip('mi', 'Indicate if the patient was diagnosed as having an MI since discharge');

        $crud->display_as('mi_date','Myocardial infarction date [MI]');
        $crud->field_tip('mi_date', 'Indicate the date the patient had the myocardial infarction');

        $crud->display_as('stroke','Stroke');
        $crud->field_tip('stroke', 'Indicate if the patient was diagnosed as having a stroke since discharge, as evidenced by persistent loss of neurological function caused by an ischaemic event.');
        
        $crud->field_tip('stroke_date', 'Indicate the date of stroke');


        $crud->display_as('pci','Percutaneous coronary intervention date [PCI]');
        $crud->field_tip('pci', 'Indicate if the patient had a percutaneous coronary intervention since the date of discharge');

        $crud->display_as('pci_date','Percutaneous coronary intervention date [PCI] date');
        $crud->field_tip('pci_date', 'Indicate the date of PCI');

        $crud->display_as('coronary_bypass','Coronary artery bypass graft [CABG]');
        $crud->field_tip('coronary_bypass', 'Indicate if the patient had a coronary artery bypass graft [CABG] since the date of  discharge');

        $crud->display_as('coronary_bypass_date','Coronary artery bypass graft [CABG] date');
        $crud->field_tip('coronary_bypass_date', 'Indicate the date of CABG');

        $crud->display_as('cardiac_rehabilitation','Cardiac rehabilitation program');
        $crud->field_tip('cardiac_rehabilitation', 'Indicate if the patient attended or is attending a cardiac rehabilitation programme since discharge');

         //-- 1. Follow Up (30 days and 12 months)
        $crud->field_tip('aspirin', 'On follow-up indicate if the patient is  taking aspirin regularly');
        $crud->field_tip('other_antiplatelet', 'On follow-up indicate if the patient is taking antiplatelet medication (other than aspirin) regularly ');
        $crud->field_tip('anticoagulants', 'On follow-up indicate if the patient is  taking anticoagulant medication regularly');
        $crud->field_tip('beta_blockers', 'On follow-up indicate if the patient is taking Beta-blockers regularly');
        $crud->field_tip('ace_inhibitors', 'On follow-up indicate if the patient is taking ACE inhibitors regularly');

        $crud->display_as('angiotensin','Angiotensin II receptor blockers');
        $crud->field_tip('angiotensin', 'On follow-up indicate if the patient is  taking angiotensin II receptor blockers regularly');
        $crud->field_tip('diabetic_control', 'On follow-up indicate the main method of diabetic control the patient is regularly receiving');
        $crud->field_tip('statins', 'On follow-up indicate if the patient is taking statins regularly');


        $crud->display_as('non_statin','Non statin lipid lowering agents');
        $crud->field_tip('non_statin', 'On follow-up indicate if the patient is non-statin lipid lowering agents regularly');
        
        $crud->field_tip('status', 'Indicate status of intervention insert data process');
        $crud->field_tip('notes', 'Indicate notes of intervention insert data process');
          

        // Dropdown menu
        // -- 1. Follow Up (30 days and 12 months)
        $crud->field_type('survival_status','dropdown',
                     array(
                      'Alive' => 'Alive',
                      'Dead' => 'Dead',
                      'Unknown' => 'Unknown'                                        
                      )); 


        $crud->field_type('death_cause','dropdown',
                     array(
                      'Cardiovascular' => 'Cardiovascular',
                      'Non-Cardiovascular' => 'Non-Cardiovascular',
                      'Unknown' => 'Unknown'                                        
                      )); 

        $crud->field_type('anginal_status','dropdown',
                     array(
                      'CCS 0' => 'CCS 0',
                      'CCS I' => 'CCS I',
                      'CCS II' => 'CCS II',
                      'CCS III' => 'CCS III',
                      'CCS IV' => 'CCS IV',
                      'Unknown' => 'Unknown'                                        
                      )); 

        $crud->field_type('dyspnoea','dropdown',
                     array(
                      'NYHA I' => 'NYHA I',
                      'NYHA II' => 'NYHA II',
                      'NYHA III' => 'NYHA III',
                      'NYHA IV' => 'NYHA IV',                    
                      'Unknown' => 'Unknown'                                        
                      )); 

        $crud->field_type('mi','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 

        $crud->field_type('stroke','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 

        $crud->field_type('pci','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 

        $crud->field_type('coronary_bypass','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 

        $crud->field_type('cardiac_rehabilitation','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 


        // -- 2. Medication at follow Up (30 days and 12 months)
        $crud->field_type('aspirin','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown')); 
        
        
        $crud->field_type('other_antiplatelet','dropdown',
                     array(
                      'No' => 'No',
                      'Clopidogrel' => 'Clopidogrel',
                      'Ticagrelor' => 'Ticagrelor',
                      'Prasugrel' => 'Prasugrel',
                      'Other antiplatelet agent' => 'Other antiplatelet agent',
                      'Unknown' => 'Unknown'                                        
                      ));    


         $crud->field_type('anticoagulants','dropdown',
                     array(
                      'No' => 'No',
                      'Vit. K antagonists' => 'Vit. K antagonists',
                      'Oral throbin inhibitors' => 'Oral throbin inhibitors',
                      'Oral factor Xa inhibitors' => 'Oral factor Xa inhibitors',
                      'Other anticoagulants agents' => 'Other anticoagulant agent',
                      'Unknown' => 'Unknown'                                        
                      ));    

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

        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 


        $output = $crud->render();

        // aduc din baza de date prin model tabela pacient
        if(isset($_GET["p_id"]) != NULL)
        {
            $result = $this->patient_model->get([
                'id' => $pid ]);

        }
        // extrag din array nume si prenume 
        $nume = $result[0]['first_name'];
        $prenume = $result[0]['last_name'];        
        // trimit prin variabila extra din obiect in view
        
        $output->extra = "Patient: ".$nume." ".$prenume; 
        $this->_admin_output($output);
    }
}
