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
        $crud->columns('date_of_procedure','status');  

        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        $crud->field_type('user_id', 'hidden');
        $crud->field_type('edit_user', 'hidden');
        $crud->field_type('edit_time', 'hidden');



        // Afisare DB in Formular 
        // -- 1.Past History relevand to Coronary Artery Diesease
        $crud->display_as('history_mi','History of previous myocardial infarction (MI)');
        $crud->display_as('history_chf','History of congestive heart failure (CHF)');
        $crud->display_as('history_stroke','History of stroke');
        $crud->display_as('history_vascular','History of peripheral vascular diesease');
        $crud->display_as('history_renal','History of chronic renal failure');
        $crud->display_as('prev_pci','Previous percutaneous corany intervention(PCI)');
        $crud->display_as('cabg','Coronary artery bypass graft (CABG)');
        $crud->display_as('history_valvular_h','History of valvular heart diesease');
      
        // -- 2. Risk factors for Coronary Artery Disease
        $crud->display_as('smoking_status','Smoking status');
        $crud->display_as('diabets_mellitus','Diabets mellitus');
        $crud->display_as('history_hypertension','History of hypertension');
        $crud->display_as('history_hypercholesterol','History of hypercholesterolemia');

        // -- 3. Admision Details and initial Assessment 
        $crud->display_as('indication_pci','Indication for percutaneous coronary intervetion PCI');
        $crud->display_as('symptom_acs','Symptom onset date and time (ACS patients)');
        $crud->display_as('date_time_arival','Date and time of admission/arrival at hospital (for ACS patients)');
        $crud->display_as('elevated_biochemical','Elevated biochemical marker pre procedure');
        $crud->display_as('date_time_percutaneous','Date and time of percutaneous coronary (PCI)');
        $crud->display_as('cardiogenic_pci','Cardiogenic shock at start of PCI');
        $crud->display_as('hemodynamic','Haemodynamic support');


        //-- 4. Investigations for Coronary Artery Disease 
        $crud->display_as('lv_opt','Left ventricular (LV)');
        $crud->display_as('right_coronary','Proximal right coronary artery (segment 1)');
        $crud->display_as('mrca','Mid-right coronary artery conduit (mRCA)');
        $crud->display_as('drca','Distal right coronary artery conduit (dRCA)');
        $crud->display_as('rpda','Right posterior descending artery (rPDA)');
        $crud->display_as('lm_artery','Left main artery (LM)');
        $crud->display_as('plad','Proximal LAD artery (pLAD)');
        $crud->display_as('mlad','Mid-LAD artery (mLAD)');
        $crud->display_as('dlad','Distal LAD artery (dLAD)');
        $crud->display_as('1_diagonal','First diagonal branch (1st Diag)');
        $crud->display_as('2_diagonal','Second diagonal branch (2nd Diag)');
        $crud->display_as('pcirc','Proximal circumflex coronary (pCIRC)');
        $crud->display_as('om','First obtuse marginal branch (1st OM)');
        $crud->display_as('circ','Mid Circumflex artery (CIRC)');
        $crud->display_as('obtuse_segments','Other obtuse segments');
        $crud->display_as('posteo_segment','Right posterolateral segment and branch');
        $crud->display_as('main_stem','Left main stem protected');

        //-- ****** 5. Percutaneous Coronary interventions

        $crud->display_as('segment_no','Segment No');
        $crud->display_as('type_lesion','Type of lesion');
        $crud->display_as('re_stenosis','In-stent re-stenosis');
        $crud->display_as('bifurcation','Bifurcation');
        $crud->display_as('tmi_before','TIMI Flow before PCI');
        $crud->display_as('tmi_after','TIMI Flow after PCI');
        $crud->display_as('stenosis_b_pci','%Stenosis before PCI');
        $crud->display_as('stenosis_a_pci','%Stenosis after PCI');
        $crud->display_as('stent','Stent');
        $crud->display_as('direct_stenting','Direct stenting');
        $crud->display_as('stent_type','Stent Type');
        $crud->display_as('drug_eluting_type','Drug eluting type');
        $crud->display_as('stent_size','Stent/Baloon size');
        $crud->display_as('length','Lenght of stent');


        //**** -- 6. Percutaneous Coronary interventions (other details)
        $crud->display_as('percutaneous_arterial','Percutaneous arterial acces');
        $crud->display_as('diagnostic_device','Diagnostic device used during procedure');
        $crud->display_as('therapeutic_device','Therapeutic device used');
        $crud->display_as('procedural_complications','Peri-Procedural complications');
        $crud->display_as('coronary_artery_cabg','Coronary artery bypass graft (CABG)');
        $crud->display_as('vascular_closure','Vascular closure device');
        $crud->display_as('perc_arterial_complications','Percutaneous arterial complications');


        //-- 7. Medication at time of PCI

              
        


        // Meniuri drop down
        //****************  -- 1.Past History relevand to Coronary Artery Diesease
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
                
        //****************  -- 2. Risk factors for Coronary Artery Disease
         $crud->field_type('smoking_status','dropdown',
             array('Never' => 'Never', 'Current' => 'Current','Former' => 'Former','Unknown' => 'Unknown'));  
                

        $crud->field_type('diabets_mellitus','dropdown',
                     array(
                      'Non-diabetic' => 'Non-diabetic',
                      'Diabetic (dietary control)' => 'Diabetic (dietary control)',
                      'Diabetic (oral medication)' => 'Diabetic (oral medication)',
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
                      'NSTEMI (ongoing instability)' => 'NSTEMI (ongoing instability)',                      
                      'Unstable angina (ongoing instability)' => 'Unstable angina (ongoing instability)',                      
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


        //****************4. Investigations for Coronary Artery Disease 
          $crud->field_type('lv_opt','dropdown',
                     array(
                      'Normal (>50%)' => 'Normal (>50%)',
                      'Slightly reduced (41-50%)' => 'Slightly reduced (41-50%)',
                      'Moderately reduced (31-40%)' => 'Moderately reduced (31-40%)',
                      'Severely reduced (<30%)' => 'Severely reduced (<30%)', 
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->field_type('main_stem','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


        //****************5. Investigations for Coronary Artery Disease  

        $crud->field_type('segment_no','dropdown',
                     array(
                      'TYPE A' => 'TYPE A',
                      'TYPE B' => 'TYPE B',
                      'TYPE C' => 'TYPE C',
                      'Unknown' => 'Unknown'                     
                      ));    

        $crud->field_type('type_lesion','dropdown',
             array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('re_stenosis','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

        $crud->field_type('bifurcation','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  

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


          $crud->field_type('stent_type','dropdown',
                 array('No' => 'No', 'Yes' => 'Yes','Unknown' => 'Unknown'));  


           $crud->field_type('stent_type','dropdown',
                     array(
                      'Bare Metal' => 'Bare Metal',
                      'Coated' => 'Coated',
                      'Drug-eluting' => 'Drug-eluting',
                      'Other' => 'Other',
                      'Unknown' => 'Unknown'                     
                      ));    


           $crud->field_type('drug_eluting_type','dropdown',
                     array(
                      'Cypher' => 'Cypher',
                      'Taxus' => 'Taxus',
                      'Trial drug eluting stent' => 'Trial drug eluting stent',
                      'Unknown' => 'Unknown'                     
                      ));    






        //***** Finish form wiht progress option
        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished')); 



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
