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
    
    
 function database()
    {
        $crud = new grocery_CRUD();     
        $crud->set_theme('datatables');
        $crud->set_table('patients');
        $crud->set_subject('Patient');
        
        $crud->display_as('fo_nr','ID FO');
        $crud->display_as('city','City or Locality');
        $crud->display_as('gp_phone','GP Phone');


        $crud->columns('fo_nr','cnp','first_name','last_name','date_of_birth','sex','city','status');
        
        $crud->field_tip('cnp', 'Personal ID No.');
        $crud->field_tip('sex', 'The sex of the patient');
        $crud->field_tip('height', 'Height in cm');
        $crud->field_tip('weight', 'Weight in cm');



        $crud->field_type('sex','dropdown',
            array('Male' => 'Male', 'Female' => 'Female'));

        $crud->field_type('country','dropdown',
                     array(
                      'Romania' => 'Romania',
                      'Other' => 'Other',                                
                      'Unknown' => 'Unknown'                     
                      ));  

        $crud->set_relation('county','county','county');
        
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

        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 

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
        $crud->columns('date_of_procedure','status');

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



       

        // Afisare DB in Formular 
        // -- 1.Past History relevand to Coronary Artery Diesease
        $crud->display_as('PAST_HISTORY','*** Past History relevand to Coronary Artery Diesease');
        $crud->field_type('PAST_HISTORY', 'readonly');



        $crud->display_as('transferred','Transferred form other hospital');
        $crud->field_tip('transferred', '*transferred ID No.');
        $crud->field_tip('heart_rate', 'Enter value of pulse');

       
        $crud->display_as('history_mi','History of previous myocardial infarction (MI)');
        $crud->field_tip('history_mi', 'Indicate if the patient has at least one previous myocardial infarction before this admission');
        $crud->display_as('history_chf','History of congestive heart failure (CHF)');
        $crud->field_tip('history_chf', 'Indicate');
        $crud->display_as('history_stroke','History of stroke');
        $crud->display_as('history_vascular','History of peripheral vascular diesease');
        $crud->display_as('history_renal','History of chronic renal failure');
        $crud->display_as('prev_pci','Previous percutaneous corany intervention(PCI)');
        $crud->display_as('cabg','Coronary artery bypass graft (CABG)');
        $crud->display_as('history_valvular_h','History of valvular heart diesease');
      
        // -- 2. Risk factors for Coronary Artery Disease
        $crud->display_as('RISK_STATUS','***  Risk factors for Coronary Artery Disease');
        $crud->field_type('RISK_STATUS', 'readonly');

        $crud->display_as('smoking_status','Smoking status');
        $crud->display_as('diabets_mellitus','Diabets mellitus');
        $crud->display_as('history_hypertension','History of hypertension');
        $crud->display_as('history_hypercholesterol','History of hypercholesterolemia');

        // -- 3. Admision Details and initial Assessment 
        $crud->display_as('ADMISION_DETAILS','*** Admision Details and initial Assessment');
        $crud->field_type('ADMISION_DETAILS', 'readonly');

        $crud->display_as('indication_pci','Indication for percutaneous coronary intervetion PCI');
        $crud->display_as('symptom_acs','Symptom onset date and time (ACS patients)');
        $crud->display_as('date_time_arival','Date and time of admission/arrival at hospital (for ACS patients)');
        $crud->display_as('elevated_biochemical','Elevated biochemical marker pre procedure');
        $crud->display_as('date_time_percutaneous','Date and time of percutaneous coronary (PCI)');
        $crud->display_as('cardiogenic_pci','Cardiogenic shock at start of PCI');
        $crud->display_as('hemodynamic','Haemodynamic support');


        //-- 4. Investigations for Coronary Artery Disease 
        $crud->display_as('INVESTIGATION_CORONARY','*** Investigations for Coronary Artery Disease');
        $crud->field_type('INVESTIGATION_CORONARY', 'readonly');
        
        $crud->display_as('ANGIOGRAM_RESULT','*** ANGIOGRAM RESULT ***');
        $crud->field_type('ANGIOGRAM_RESULT', 'readonly');
        

        $crud->display_as('lv_opt','Left ventricular ejection fraction (LVEF, %) ');
        $crud->display_as('right_coronary','Proximal right coronary artery (segment 1)');
        $crud->display_as('mrca','Mid-right coronary artery conduit (segment 2)');
        $crud->display_as('drca','Distal right coronary artery conduit (segment 3)');
        $crud->display_as('rpda','Right posterior descending artery (segment 4)');
        $crud->display_as('lm_artery','Left main artery (segment 5)');
        $crud->display_as('plad','Proximal LAD artery (segment 6)');
        $crud->display_as('mlad','Mid-LAD artery (segment 7)');
        $crud->display_as('dlad','Distal LAD artery (segment 8)');
        $crud->display_as('1_diagonal','First diagonal branch (segment 9)');
        $crud->display_as('2_diagonal','Second diagonal branch (segment 10)');
        $crud->display_as('pcirc','Proximal circumflex coronary (segment 11)');
        $crud->display_as('intart','Intermediate artery (segment 12)');
        $crud->display_as('om','First obtuse marginal branch (segment 12a)');
        $crud->display_as('som','Second obtuse marginal branch (segment 12b)');
        $crud->display_as('circ','Mid/Dist Circumflex artery (segment 13)');
        $crud->display_as('obtuse_segments','Other obtuse segments (segment 14)');
        $crud->display_as('lpda','Left posterior descending artery (segment 15)');
        $crud->display_as('posteo_segment','Right posterolateral branch (segment 16)');
        $crud->display_as('no_vessels','No. of diseased vessels');
        $crud->display_as('left_main_d','Left main stem disease');
        $crud->display_as('main_stem','Left main stem protected');

        //-- ****** 5. Percutaneous Coronary interventions
        $crud->display_as('PCI','*** Percutaneous Coronary interventions');
        $crud->field_type('PCI', 'readonly');
        

        $crud->display_as('segment_no','Segment No');
       // $crud->display_as('type_lesion','Type of lesion');
        $crud->display_as('re_stenosis','In-stent restenosis');
        $crud->display_as('bifurcation','Bifurcation');
        $crud->display_as('bifurcation_yes','Medina class');

        $crud->display_as('tmi_before','TIMI Flow before PCI');
        $crud->display_as('tmi_after','TIMI Flow after PCI');
        $crud->display_as('stenosis_b_pci','%Stenosis before PCI');
        $crud->display_as('stenosis_a_pci','%Stenosis after PCI');
        $crud->display_as('stent','Stent');
        $crud->display_as('direct_stenting','Direct stenting');
        $crud->display_as('stent_type','Stent Type');
        $crud->display_as('drug_eluting_type','DES type');
        $crud->display_as('stent_size','Stent diameter');
        $crud->display_as('length','Lenght of stent');


        //**** -- 6. Percutaneous Coronary interventions (other details)
        $crud->display_as('PCI_other','*** Percutaneous Coronary interventions (other details)');
        $crud->field_type('PCI_other', 'readonly');

        $crud->display_as('percutaneous_arterial','Percutaneous acces');
        $crud->display_as('diagnostic_device','Diagnostic device used during procedure');
        $crud->display_as('therapeutic_device','Therapeutic device used');
        $crud->display_as('procedural_complications','Peri-Procedural complications');
        // Complicatii relatie N to N        
        //$crud->set_relation_n_n('Peri_Procedural_Complications', 'interv_compl','complication','intervention_id', 'complication_id','complication_name','priority');



        $crud->display_as('coronary_artery_cabg','Coronary artery bypass graft (CABG)');
        $crud->display_as('vascular_closure','Vascular closure device');
        $crud->display_as('perc_arterial_complications','Percutaneous acces complications');

        // Laboratory 
        $crud->display_as('LABORATORY','*** Laboratory analysis');
        $crud->field_type('LABORATORY', 'readonly');


        //-- 7. Medication at time of PCI 
        $crud->display_as('MEDICATION_PCI','*** Medication at time of PCI ');
        $crud->field_type('MEDICATION_PCI', 'readonly');

 
        $crud->display_as('aspirin','Aspirin');
        $crud->display_as('other_antiplatele','Other antiplatelet');
        $crud->display_as('anticoagulant','Anticoagulants');
        $crud->display_as('glycoprotein','Glycoprotein llb/llla');
        $crud->display_as('heparin','Heparin/low molecular weight heparin');

        //-- 8. Outcome
        $crud->display_as('OUTCOME','*** Outcome ');
        $crud->field_type('OUTCOME', 'readonly');


        $crud->display_as('elevated','Elevated biochemical marker post procedure');
        $crud->display_as('myocardial_post','Myocardial (re)infarction post procedure');
        $crud->display_as('bleeding_hospital','Bleeding during hospital stay');
        $crud->display_as('stroke','Stroke');
        $crud->display_as('renal_failure','Renal failure requiring dialysis');
        $crud->display_as('survival_status','Survival status at dischange');
        $crud->display_as('date_discharge','Date of dischange/death');
        $crud->display_as('discharge_destination','Discharge destination');
        

        //-- 9. Medication at discharge
        $crud->display_as('MEDICATION_DISCHARGE','*** Medication at discharge ');
        $crud->field_type('MEDICATION_DISCHARGE', 'readonly');


        $crud->display_as('aspirin2','Aspirin');
        $crud->display_as('other_antiplatele2','Other antiplatelet');
        $crud->display_as('anticoagulant2','Anticoagulants');
        $crud->display_as('beta-blockers','Beta-blockers');
        $crud->display_as('ace_inhibitors','ACE inhibitors');
        $crud->display_as('angiotensin_repector','Angiotensin II repetor blockers');
        $crud->display_as('diabetic_control','Diabetic control');
        $crud->display_as('statins','Statins');
        $crud->display_as('non_statin','Non-statin lipid lowering agents');
        $crud->display_as('glycoprotein2','Glycoprotein llb/llla');
        $crud->display_as('heparin2','Heparin/low molecular weight heparin');
        
        //-- 10. INFO CHAPTER
        $crud->display_as('INFO','*** Other Informations ');
        $crud->field_type('INFO', 'readonly');
         $crud->field_tip('status', 'Status of Complete Intervention');

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
                      'Presure wire' => 'Presure wire',
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
                      'Allergic reactions' => 'Alergic reactions',
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

        $crud->field_type('perc_arterial_complications','dropdown',
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


        $crud->field_type('bleeding_hospital','dropdown',
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

        

        //***** Finish form wiht progress option
        $crud->field_type('status','dropdown',
             array('In progress' => 'In progress', 'Finished' => 'Finished','Delete' => 'Delete')); 



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
        $crud->set_table('follow_up');
        $crud->set_subject('PCI Follow-Up');

        //Configurare coloane
         $crud->columns('date','aspirin','other_antiplatelet','anticoagulants','beta_blockers','ace_inhibitors');  

        // Formatare cod
        $crud->field_type('patient_id', 'hidden', $pid);
        // $crud->field_type('user_id', 'hidden');
        // $crud->field_type('edit_user', 'hidden');
        // $crud->field_type('edit_time', 'hidden');



        // Afisare nume formular follow-up
        //-- 1. Follow Up (30 days and 12 months)
        $crud->display_as('date','Date of folow up');
        $crud->display_as('survival_status','Survival status at folow up');
        $crud->display_as('death_cause','Primary cause of death');
        $crud->display_as('anginal_status','Anginal status');
        $crud->display_as('date_readmission','Date of firs hospital readmission since discharge');
        $crud->display_as('mi','Myocardial infarction [MI]');
        $crud->display_as('mi_date','Myocardial infarction date [MI]');
        $crud->display_as('stroke','Stroke');
        $crud->display_as('pci','Percutaneous coronary intervention date [PCI]');
        $crud->display_as('pci_date','Percutaneous coronary intervention date [PCI] date');

        $crud->display_as('coronary_bypass','Coronary artery bypass graft [CABG]');
        $crud->display_as('coronary_bypass_date','Coronary artery bypass graft [CABG] date');
        $crud->display_as('cardiac_rehabilitation','Cardiac rehabilitation program');

         //-- 1. Follow Up (30 days and 12 months)

        $crud->display_as('angiotensin','Angiotensin II receptor blockers');
        $crud->display_as('non_statin','Non statin lipid lowering ag');
        

          

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


        $output = $crud->render();   
        $this->_admin_output($output);
    }
}
