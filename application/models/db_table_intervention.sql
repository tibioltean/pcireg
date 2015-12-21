
-- --------------------------------------------------------
-- Host:                         193.226.0.74
-- Server version:               5.5.46 - MySQL Community Server (GPL) by Remi
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;



-- Dumping structure for table pci.inervention
CREATE TABLE IF NOT EXISTS `inerventions2` (

  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `edit_user` int(11) NOT NULL,
  `edit_time` datetime NOT NULL,
  `date_of_procedure` date NOT NULL,



  -- 1.Past History relevand to Coronary Artery Diesease
  `history_mi` varchar(150) NOT NULL COMMENT 'History of previous myocardial infarction (MI)',
  `history_chf` varchar(150) NOT NULL COMMENT 'History of congestive heart failure (CHF)',
  `history _stroke` varchar(150) NOT NULL COMMENT 'History of stroke',
  `history_vascular` varchar(150) NOT NULL COMMENT 'History of peripheral vascular diesease',
  `history_renal` varchar(150) NOT NULL COMMENT 'History of chronic renal failure',
  `prev_pci` varchar(150) NOT NULL COMMENT 'Previous percutaneous corany intervention(PCI)',
  `cabg` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft (CABG)',
  `history_valvular_h` varchar(150) NOT NULL COMMENT 'History of valvular heart diesease',

  -- 2. Risk factors for Coronary Artery Disease
  `smoking_status` varchar(150) NOT NULL COMMENT 'Smoking status',
  `diabets_mellitus` varchar(150) NOT NULL COMMENT 'Diabets mellitus',
  `history_hypertension` varchar(150) NOT NULL COMMENT 'History of hypertension',
  `history_hypercholesterol` varchar(150) NOT NULL COMMENT 'History of hypercholesterolemia',


   -- 3. Admision Details and initial Assessment 
  `indication_pci` varchar(150) NOT NULL COMMENT 'Indication for percutaneous coronary intervetion PCI',
  `symptom_acs` varchar(150) NOT NULL COMMENT 'Symptom onset date and time (ACS patients)',
  `date_time_arival` datetime NOT NULL COMMENT 'Date and time of admission/arrival at hospital (for ACS patients)',
  `elevated_biochemical` varchar(150) NOT NULL COMMENT 'Elevated biochemical marker pre procedure',
  `date_time_percutaneous` varchar(150) NOT NULL COMMENT 'Date and time of percutaneous coronary (PCI)',
  `cardiogenic_pci` varchar(150) NOT NULL COMMENT 'Cardiogenic shock at start of PCI',
  `hemodynamic` varchar(150) NOT NULL COMMENT 'Haemodynamic support',

   -- 4. Investigations for Coronary Artery Disease 
  `lv_opt` varchar(150) NOT NULL COMMENT 'Left ventricular (LV)',

          -- (Angiogram result)
  `right_coronary` varchar(150) NOT NULL COMMENT 'Proximal right coronary artery (segment 1)',
  `mrca` varchar(150) NOT NULL COMMENT 'Mid-right coronary artery conduit (mRCA)',
  `drca` varchar(150) NOT NULL COMMENT 'Distal right coronary artery conduit (dRCA)',
  `rpda` varchar(150) NOT NULL COMMENT 'Right posterior descending artery (rPDA)',
  `lm_artery` varchar(150) NOT NULL COMMENT 'Left main artery (LM)',
  `plad` varchar(150) NOT NULL COMMENT 'Proximal LAD artery (pLAD)',
  `mlad` varchar(150) NOT NULL COMMENT 'Mid-LAD artery (mLAD)',
  `dlad` varchar(150) NOT NULL COMMENT 'Distal LAD artery (dLAD)',
  `1_diagonal` varchar(150) NOT NULL COMMENT 'First diagonal branch (1st Diag)',
  `2_diagonal` varchar(150) NOT NULL COMMENT 'Second diagonal branch (2nd Diag)',
  `pcirc` varchar(150) NOT NULL COMMENT 'Proximal circumflex coronary (pCIRC)',
  `om` varchar(150) NOT NULL COMMENT 'First obtuse marginal branch (1st OM)',
  `circ` varchar(150) NOT NULL COMMENT 'Mid Circumflex artery (CIRC)',
  `obtuse_segments` varchar(150) NOT NULL COMMENT 'Other obtuse segments',
  `posteo_segment` varchar(150) NOT NULL COMMENT 'Right posterolateral segment and branch',
  `main_stem` varchar(150) NOT NULL COMMENT 'Left main stem protected',

   -- 5. Percutaneous Coronary interventions
  `segment_no` varchar(150) NOT NULL COMMENT 'Segment No',
  `type_lesion` varchar(150) NOT NULL COMMENT 'Type of lesion',
  `re_stenosis` varchar(150) NOT NULL COMMENT 'In-stent re-stenosis',
  `bifurcation` varchar(150) NOT NULL COMMENT 'Bifurcation',
  `tmi_before` varchar(150) NOT NULL COMMENT 'TIMI Flow before PCI',
  `tmi_after` varchar(150) NOT NULL COMMENT 'TIMI Flow after PCI',
  `stenosis_b_pci` varchar(150) NOT NULL COMMENT '%Stenosis before PCI',
  `stenosis_a_pci` varchar(150) NOT NULL COMMENT '%Stenosis after PCI',
  `stent` varchar(150) NOT NULL COMMENT 'Stent',
  `direct_stenting` varchar(150) NOT NULL COMMENT 'Direct stenting',
  `stent_type` varchar(150) NOT NULL COMMENT 'Stent Type',
  `drug_eluting_type` varchar(150) NOT NULL COMMENT 'Drug eluting type',
  `stent_size` varchar(150) NOT NULL COMMENT 'Stent/Baloon size',
  `length` varchar(150) NOT NULL COMMENT 'Lenght of stent',


   -- 6. Percutaneous Coronary interventions (other details)
  `percutaneous_arterial` varchar(150) NOT NULL COMMENT 'Percutaneous arterial acces',
  `diagnostic_device` varchar(150) NOT NULL COMMENT 'Diagnostic device used during procedure',
  `therapeutic_device` varchar(150) NOT NULL COMMENT 'Therapeutic device used',
  `procedural_complications` varchar(150) NOT NULL COMMENT 'Peri-Procedural complications',
  `coronary_artery_cabg` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft (CABG)',
  `vascular_closure` varchar(150) NOT NULL COMMENT 'Vascular closure device',
  `perc_arterial_complications` varchar(150) NOT NULL COMMENT 'Percutaneous arterial complications',


   -- 7. Medication at time of PCI
  `aspirin` varchar(150) NOT NULL COMMENT 'Aspirin',
  `other_antiplatele` varchar(150) NOT NULL COMMENT 'Other antiplatelet',
  `anticoagulant` varchar(150) NOT NULL COMMENT 'Anticoagulants',
  `glycoprotein` varchar(150) NOT NULL COMMENT 'Glycoprotein llb/llla',
  `heparin` varchar(150) NOT NULL COMMENT 'Heparin/low molecular weight heparin',


  -- 8. Outcome
  `elevated` varchar(150) NOT NULL COMMENT 'Elevated biochemical marker post procedure',
  `myocardial_post` varchar(150) NOT NULL COMMENT 'Myocardial (re)infarction post procedure',
  `bleeding_hospital` varchar(150) NOT NULL COMMENT 'Bleeding during hospital stay',
  `stroke` varchar(150) NOT NULL COMMENT 'Stroke',
  `renal_failure` varchar(150) NOT NULL COMMENT 'Renal failure requiring dialysis',
  `survival_status` varchar(150) NOT NULL COMMENT 'Survival status at dischange',
  `date_discharge` varchar(150) NOT NULL COMMENT 'Date of dischange/death',
  `discharge_destination` varchar(150) NOT NULL COMMENT 'Discharge destination',


  -- 9. Medication at discharge
  `aspirin2` varchar(150) NOT NULL COMMENT 'Aspirin',
  `other_antiplatele2` varchar(150) NOT NULL COMMENT 'Other antiplatele',
  `anticoagulant2` varchar(150) NOT NULL COMMENT 'Anticoagulants',
  `beta-blockers` varchar(150) NOT NULL COMMENT 'Beta-blockers',
  `ace_inhibitors` varchar(150) NOT NULL COMMENT 'ACE inhibitors',
  `angiotensin_repector` varchar(150) NOT NULL COMMENT 'Angiotensin II repetor blockers',
  `diabetic_control` varchar(150) NOT NULL COMMENT 'Diabetic control',
  `statins` varchar(150) NOT NULL COMMENT 'Statins',
  `non_statin` varchar(150) NOT NULL COMMENT 'Non-statin lipid lowering agents',
  `glycoprotein2` varchar(150) NOT NULL COMMENT 'Glycoprotein llb/llla',
  `heparin2` varchar(150) NOT NULL COMMENT 'Heparin/low molecular weight heparin',

   PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='PCI Intervetion patient';



-- **** FOLLOW UP database 



-- Dumping structure for table pci.inervention
CREATE TABLE IF NOT EXISTS `follow_up` (

  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) DEFAULT NULL,

  -- 1. Follow Up (30 days and 12 months)
  `date` date NOT NULL COMMENT 'Date of folow up',
  `survival_status` varchar(150) NOT NULL COMMENT 'Survival status at folow up',
  `date_of_death` date NOT NULL COMMENT 'Date of death',
  `death_cause` varchar(150) NOT NULL COMMENT 'Primary cause of death',
  `anginal_status` varchar(150) NOT NULL COMMENT 'Anginal status',
  `dyspnoea` varchar(150) NOT NULL COMMENT 'Dyspnoea',
  `date_readmission` date NOT NULL COMMENT 'Date of firs hospital readmission since discharge ',
  `mi` varchar(150) NOT NULL COMMENT 'Myocardial infarction [MI]',
  `mi_date` date NOT NULL COMMENT 'Myocardial infarction date [MI]',
  `stroke` varchar(150) NOT NULL COMMENT 'Stroke',
  `stroke_date` varchar(150) NOT NULL COMMENT 'Stroke date',
  `pci` varchar(150) NOT NULL COMMENT 'Percutaneous coronary intervention [PCI]',
  `pci_date` varchar(150) NOT NULL COMMENT 'Percutaneous coronary intervention date [PCI]',
  `coronary_bypass` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft [CABG]',
  `coronary_bypass_date` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft [CABG] date',
  `cardiac_rehabilitation` varchar(150) NOT NULL COMMENT 'Cardiac rehabilitation program',

 -- 2. Medication at follow Up (30 days and 12 months)
  `aspirin` varchar(50) NOT NULL,
  `other_antiplatelet` varchar(50) NOT NULL,
  `anticoagulants` varchar(50) NOT NULL,
  `beta_blockers` varchar(50) NOT NULL,
  `ace_inhibitors` varchar(50) NOT NULL,
  `angiotensin` varchar(50) NOT NULL,
  `diabetic_control` varchar(50) NOT NULL,
  `statins` varchar(50) NOT NULL,
  `non_statin` varchar(50) NOT NULL,
  
   -- 3. Info text for follow Up
  `obs` text NOT NULL,

  PRIMARY KEY (`id`)



) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='PCI Follow up patient';



-- Dumping data for table pci.inervention: ~0 rows (approximately)
/*!40000 ALTER TABLE `inervention` DISABLE KEYS */;
/*!40000 ALTER TABLE `inervention` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;









