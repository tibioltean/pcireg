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

-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for information_schema


-- Dumping database structure for admin_pci_registry
CREATE DATABASE IF NOT EXISTS `admin_pci_registry` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `admin_pci_registry`;


-- Dumping structure for table admin_pci_registry.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.accounts: ~4 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `account_type`, `description`) VALUES
	(1, 'administrator', 'Admin'),
	(2, 'medic', 'Medic'),
	(3, 'statistics', 'Statistics'),
	(4, 'registrator', 'Registrator');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.attending_cardiologist
CREATE TABLE IF NOT EXISTS `attending_cardiologist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardiologist_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.attending_cardiologist: ~21 rows (approximately)
/*!40000 ALTER TABLE `attending_cardiologist` DISABLE KEYS */;
INSERT INTO `attending_cardiologist` (`id`, `cardiologist_name`) VALUES
	(1, 'dr. Mihaela ISPAS'),
	(2, 'dr. Mihaela MALOS'),
	(3, 'dr. Daniela MARGINEAN'),
	(4, 'dr. Ernestina SCRIPA'),
	(5, 'dr. Carmen OPRIS'),
	(6, 'dr. Dan DOBREANU'),
	(7, 'dr. Mihail DINESCH'),
	(8, 'dr. Violeta DINECSH'),
	(9, 'dr. Adrian MATEI'),
	(10, 'dr. Liliana MATEI'),
	(11, 'dr. Ionel VITA'),
	(12, 'dr. Mihaela OPRIS'),
	(13, 'dr. Mihai STEFANESCU'),
	(14, 'dr. Voichita SIRBU'),
	(15, 'dr. Marius CLOCOTAN'),
	(16, 'dr. Cosmin MACARIE'),
	(17, 'dr. Simona COMAN'),
	(18, 'dr. Ladislau GYORI'),
	(19, 'dr. Dorel NASTASE MELICOVICI'),
	(20, 'dr. Ildiko BEKE'),
	(21, 'dr. Roxana RUDZIK');
/*!40000 ALTER TABLE `attending_cardiologist` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.complication
CREATE TABLE IF NOT EXISTS `complication` (
  `complication_id` int(11) NOT NULL AUTO_INCREMENT,
  `complication_name` varchar(100) NOT NULL,
  PRIMARY KEY (`complication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.complication: ~14 rows (approximately)
/*!40000 ALTER TABLE `complication` DISABLE KEYS */;
INSERT INTO `complication` (`complication_id`, `complication_name`) VALUES
	(1, 'No Peri-Procedural complications'),
	(2, 'Acute segment closure'),
	(3, 'Side branch occlusion'),
	(4, 'Coronary perforation'),
	(5, 'No flow/slow flow phenomenon'),
	(6, 'Heart block requiring pacing'),
	(7, 'DC cardioversion'),
	(8, 'Ventilated'),
	(9, 'Tamponade'),
	(10, 'Shock induced by procedure'),
	(11, 'Allergic reactions'),
	(12, 'Stroke'),
	(13, 'Cardiac arrest'),
	(14, 'Unknown');
/*!40000 ALTER TABLE `complication` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.county
CREATE TABLE IF NOT EXISTS `county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `county` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='judete Romania';

-- Dumping data for table admin_pci_registry.county: ~41 rows (approximately)
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` (`id`, `county`) VALUES
	(1, 'ARAD'),
	(2, 'ARGES'),
	(3, 'BACAU'),
	(4, 'BIHOR'),
	(5, 'BISTRITA-NASAUD'),
	(6, 'BOTOSANI'),
	(7, 'BRAILA'),
	(8, 'BRASOV'),
	(9, 'BUCURESTI'),
	(10, 'BUZAU'),
	(11, 'CALARASI'),
	(12, 'CARAS-SEVERIN'),
	(13, 'CLUJ'),
	(14, 'CONSTANTA'),
	(15, 'COVASNA'),
	(16, 'DIMBOVITA'),
	(17, 'DOLJ'),
	(18, 'GALATI'),
	(19, 'GIURGIU'),
	(20, 'GORJ'),
	(21, 'HARGHITA'),
	(22, 'HUNEDOARA'),
	(23, 'IALOMITA'),
	(24, 'IASI'),
	(25, 'ILFOV'),
	(26, 'MARAMURES'),
	(27, 'MEHEDINTI'),
	(28, 'MURES'),
	(29, 'NEAMT'),
	(30, 'OLT'),
	(31, 'PRAHOVA'),
	(32, 'SALAJ'),
	(33, 'SATU MARE'),
	(34, 'SIBIU'),
	(35, 'SUCEAVA'),
	(36, 'TELEORMAN'),
	(37, 'TIMIS'),
	(38, 'TULCEA'),
	(39, 'VASLUI'),
	(40, 'VALCEA'),
	(41, 'VRANCEA');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.follow_up
CREATE TABLE IF NOT EXISTS `follow_up` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) DEFAULT NULL,
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
  `stroke_date` date NOT NULL COMMENT 'Stroke date',
  `pci` varchar(150) NOT NULL COMMENT 'Percutaneous coronary intervention [PCI]',
  `pci_date` date NOT NULL COMMENT 'Percutaneous coronary intervention date [PCI]',
  `coronary_bypass` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft [CABG]',
  `coronary_bypass_date` date NOT NULL COMMENT 'Coronary artery bypass graft [CABG] date',
  `cardiac_rehabilitation` varchar(150) NOT NULL COMMENT 'Cardiac rehabilitation program',
  `aspirin` varchar(50) NOT NULL,
  `other_antiplatelet` varchar(50) NOT NULL,
  `anticoagulants` varchar(50) NOT NULL,
  `beta_blockers` varchar(50) NOT NULL,
  `ace_inhibitors` varchar(50) NOT NULL,
  `angiotensin` varchar(50) NOT NULL,
  `diabetic_control` varchar(50) NOT NULL,
  `statins` varchar(50) NOT NULL,
  `non_statin` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='PCI Follow up patient';

-- Dumping data for table admin_pci_registry.follow_up: ~6 rows (approximately)
/*!40000 ALTER TABLE `follow_up` DISABLE KEYS */;
INSERT INTO `follow_up` (`id`, `patient_id`, `date`, `survival_status`, `date_of_death`, `death_cause`, `anginal_status`, `dyspnoea`, `date_readmission`, `mi`, `mi_date`, `stroke`, `stroke_date`, `pci`, `pci_date`, `coronary_bypass`, `coronary_bypass_date`, `cardiac_rehabilitation`, `aspirin`, `other_antiplatelet`, `anticoagulants`, `beta_blockers`, `ace_inhibitors`, `angiotensin`, `diabetic_control`, `statins`, `non_statin`, `notes`, `status`) VALUES
	(1, 3, '2015-12-22', 'Alive', '2015-12-22', 'Non-Cardiovascular', 'CCS II', 'NYHA IV', '2015-12-14', 'No', '2015-12-23', 'No', '2015-12-23', 'Yes', '2015-12-14', '', '2015-12-21', 'Yes', 'Yes', '2', 'Other', 'Unknown', 'Yes', 'Yes', 'Insulin', 'Yes', 'Fibrates', '<p>\n ddfdsf</p>\n', ''),
	(2, 3, '2015-12-22', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA I', '2015-12-21', 'No', '2015-12-22', 'Unknown', '2015-12-22', 'No', '2015-12-22', 'No', '2015-12-22', 'No', 'No', 'Ticagrelor', 'Oral throbin inhibitors', 'Yes', 'No', 'No', 'Diet only', 'No', 'Fibrates', '<p>\r\n fdsfsd</p>\r\n', ''),
	(6, 6, '2015-12-29', 'Alive', '0000-00-00', '', 'CCS I', 'NYHA I', '2015-12-29', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'None', 'No', 'None', '', 'Finished'),
	(7, 12, '2015-12-29', 'Alive', '0000-00-00', 'Non-Cardiovascular', 'CCS I', 'NYHA III', '2015-12-29', 'Yes', '2015-12-29', '', '2015-12-29', 'Yes', '2015-12-29', 'Unknown', '2015-12-29', 'No', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Yes', 'No', 'Insulin and oral agent', 'No', 'Ezetimibe', '', 'Finished'),
	(8, 12, '2015-12-01', 'Alive', '0000-00-00', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 'Ezetimibe', '', 'Finished'),
	(9, 13, '2016-02-02', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA II', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', '', 'Finished');
/*!40000 ALTER TABLE `follow_up` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.intervention
CREATE TABLE IF NOT EXISTS `intervention` (
  `intrevention_id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `edit_user` int(11) NOT NULL,
  `edit_time` datetime NOT NULL,
  `date_time_percutaneous` datetime NOT NULL COMMENT 'Date and time of percutaneous coronary (PCI)',
  `ID_procedure` varchar(50) NOT NULL,
  `attending_cardiologist` varchar(50) NOT NULL,
  `interventional_cardiologist` varchar(50) NOT NULL,
  `transferred` varchar(50) NOT NULL,
  `heart_rate` int(3) NOT NULL,
  `BP` varchar(7) NOT NULL,
  `PAST_HISTORY` varchar(7) NOT NULL,
  `history_mi` varchar(150) NOT NULL COMMENT 'History of previous myocardial infarction (MI)',
  `history_chf` varchar(150) NOT NULL COMMENT 'History of congestive heart failure (CHF)',
  `history_stroke` varchar(150) NOT NULL COMMENT 'History of stroke',
  `history_vascular` varchar(150) NOT NULL COMMENT 'History of peripheral vascular diesease',
  `history_renal` varchar(150) NOT NULL COMMENT 'History of chronic renal failure',
  `prev_pci` varchar(150) NOT NULL COMMENT 'Previous percutaneous corany intervention(PCI)',
  `cabg` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft (CABG)',
  `history_valvular_h` varchar(150) NOT NULL COMMENT 'History of valvular heart diesease',
  `RISK_STATUS` varchar(150) NOT NULL,
  `smoking_status` varchar(150) NOT NULL COMMENT 'Smoking status',
  `diabets_mellitus` varchar(150) NOT NULL COMMENT 'Diabets mellitus',
  `history_hypertension` varchar(150) NOT NULL COMMENT 'History of hypertension',
  `history_hypercholesterol` varchar(150) NOT NULL COMMENT 'History of hypercholesterolemia',
  `ADMISION_DETAILS` varchar(150) NOT NULL,
  `indication_pci` varchar(150) NOT NULL COMMENT 'Indication for percutaneous coronary intervetion PCI',
  `symptom_acs` datetime NOT NULL COMMENT 'Symptom onset date and time (ACS patients)',
  `date_time_arival` datetime NOT NULL COMMENT 'Date and time of admission/arrival at hospital (for ACS patients)',
  `elevated_biochemical` varchar(150) NOT NULL COMMENT 'Elevated biochemical marker pre procedure',
  `cardiogenic_pci` varchar(150) NOT NULL COMMENT 'Cardiogenic shock at start of PCI',
  `hemodynamic` varchar(150) NOT NULL COMMENT 'Haemodynamic support',
  `INVESTIGATION_CORONARY` varchar(150) NOT NULL,
  `lv_opt` int(11) NOT NULL COMMENT 'Left ventricular (LV)',
  `ANGIOGRAM_RESULT` varchar(50) NOT NULL,
  `dominance` varchar(50) NOT NULL,
  `right_coronary` varchar(50) NOT NULL DEFAULT '0% (no stenosis)' COMMENT 'Proximal right coronary artery',
  `mrca` varchar(50) NOT NULL DEFAULT '0% (no stenosis)' COMMENT 'Mid-right coronary artery conduit (mRCA)',
  `drca` varchar(50) NOT NULL DEFAULT '0% (no stenosis)' COMMENT 'Distal right coronary artery conduit (dRCA)',
  `rpda` varchar(50) NOT NULL COMMENT 'Right posterior descending artery (rPDA)',
  `posteo_segment` varchar(50) NOT NULL COMMENT 'Right posterolateral segment and branch',
  `lm_artery` varchar(50) NOT NULL COMMENT 'Left main artery (LM)',
  `plad` varchar(50) NOT NULL COMMENT 'Proximal LAD artery (pLAD)',
  `mlad` varchar(50) NOT NULL COMMENT 'Mid-LAD artery (mLAD)',
  `dlad` varchar(50) NOT NULL COMMENT 'Distal LAD artery (dLAD)',
  `1_diagonal` varchar(50) NOT NULL COMMENT 'First diagonal branch (1st Diag)',
  `2_diagonal` varchar(50) NOT NULL COMMENT 'Second diagonal branch (2nd Diag)',
  `pcirc` varchar(50) NOT NULL COMMENT 'Proximal circumflex coronary (pCIRC)',
  `intart` varchar(50) NOT NULL,
  `om` varchar(50) NOT NULL COMMENT 'First obtuse marginal branch (1st OM)',
  `som` varchar(50) NOT NULL,
  `circ` varchar(50) NOT NULL COMMENT 'Mid Circumflex artery (CIRC)',
  `obtuse_segments` varchar(50) NOT NULL COMMENT 'Other obtuse segments',
  `lpda` varchar(50) NOT NULL,
  `no_vessels` varchar(150) NOT NULL,
  `left_main_d` varchar(150) NOT NULL,
  `main_stem` varchar(150) NOT NULL COMMENT 'Left main stem protected',
  `PCI` varchar(150) NOT NULL,
  `segment_no` varchar(150) NOT NULL COMMENT 'Segment No',
  `re_stenosis` varchar(150) NOT NULL COMMENT 'In-stent re-stenosis',
  `bifurcation` varchar(150) NOT NULL COMMENT 'Bifurcation',
  `bifurcation_yes` varchar(150) NOT NULL,
  `cto` varchar(150) NOT NULL,
  `tmi_before` varchar(150) NOT NULL COMMENT 'TIMI Flow before PCI',
  `tmi_after` varchar(150) NOT NULL COMMENT 'TIMI Flow after PCI',
  `stenosis_a_pci` varchar(150) NOT NULL COMMENT '%Stenosis after PCI',
  `stent` varchar(150) NOT NULL COMMENT 'Stent',
  `no_stents` int(1) NOT NULL,
  `direct_stenting` varchar(150) NOT NULL COMMENT 'Direct stenting',
  `stent_type` varchar(150) NOT NULL COMMENT 'Stent Type',
  `bare_metal` varchar(150) NOT NULL,
  `drug_eluting` varchar(150) NOT NULL,
  `drug_eluting_type` varchar(150) NOT NULL COMMENT 'Drug eluting type',
  `stent_graft` varchar(150) NOT NULL,
  `bioabsorbable` varchar(150) NOT NULL,
  `stent_size` varchar(150) NOT NULL COMMENT 'Stent/Baloon size',
  `length` varchar(150) NOT NULL COMMENT 'Lenght of stent',
  `PCI_other` varchar(150) NOT NULL,
  `percutaneous_arterial` varchar(150) NOT NULL COMMENT 'Percutaneous arterial acces',
  `diagnostic_device` varchar(150) NOT NULL COMMENT 'Diagnostic device used during procedure',
  `therapeutic_device` varchar(150) NOT NULL COMMENT 'Therapeutic device used',
  `procedural_complications` varchar(150) NOT NULL COMMENT 'Peri-Procedural complications',
  `coronary_artery_cabg` varchar(150) NOT NULL COMMENT 'Coronary artery bypass graft (CABG)',
  `vascular_closure` varchar(150) NOT NULL COMMENT 'Vascular closure device',
  `perc_arterial_complications` varchar(150) NOT NULL COMMENT 'Percutaneous arterial complications',
  `fluo_time` time NOT NULL DEFAULT '00:00:00',
  `AK` int(11) NOT NULL,
  `LABORATORY` varchar(150) NOT NULL,
  `creatinine` float NOT NULL,
  `hemoglobin` float NOT NULL,
  `leucocyte` float NOT NULL,
  `thrombocyte` float NOT NULL,
  `MEDICATION_PCI` varchar(50) NOT NULL,
  `aspirin` varchar(150) NOT NULL COMMENT 'Aspirin',
  `other_antiplatele` varchar(150) NOT NULL COMMENT 'Other antiplatelet',
  `anticoagulant` varchar(150) NOT NULL COMMENT 'Anticoagulants',
  `glycoprotein` varchar(150) NOT NULL COMMENT 'Glycoprotein llb/llla',
  `heparin` varchar(150) NOT NULL COMMENT 'Heparin/low molecular weight heparin',
  `OUTCOME` varchar(150) NOT NULL,
  `elevated` varchar(150) NOT NULL COMMENT 'Elevated biochemical marker post procedure',
  `myocardial_post` varchar(150) NOT NULL COMMENT 'Myocardial (re)infarction post procedure',
  `bleeding_hospital` varchar(150) NOT NULL COMMENT 'Bleeding during hospital stay',
  `stroke` varchar(150) NOT NULL COMMENT 'Stroke',
  `cin` varchar(150) NOT NULL,
  `renal_failure` varchar(150) NOT NULL COMMENT 'Renal failure requiring dialysis',
  `survival_status` varchar(150) NOT NULL COMMENT 'Survival status at dischange',
  `date_discharge` date NOT NULL COMMENT 'Date of dischange/death',
  `discharge_destination` varchar(150) NOT NULL COMMENT 'Discharge destination',
  `MEDICATION_DISCHARGE` varchar(150) NOT NULL,
  `aspirin2` varchar(150) NOT NULL COMMENT 'Aspirin',
  `other_antiplatele2` varchar(150) NOT NULL COMMENT 'Other antiplatele',
  `anticoagulant2` varchar(150) NOT NULL COMMENT 'Anticoagulants',
  `beta-blockers` varchar(150) NOT NULL COMMENT 'Beta-blockers',
  `ace_inhibitors` varchar(150) NOT NULL COMMENT 'ACE inhibitors',
  `angiotensin_repector` varchar(150) NOT NULL COMMENT 'Angiotensin II repetor blockers',
  `diabetic_control` varchar(150) NOT NULL COMMENT 'Diabetic control',
  `statins` varchar(150) NOT NULL COMMENT 'Statins',
  `non_statin` varchar(150) NOT NULL COMMENT 'Non-statin lipid lowering agents',
  `heparin2` varchar(150) NOT NULL COMMENT 'Heparin/low molecular weight heparin',
  `INFO` varchar(150) NOT NULL,
  `notes` text NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`intrevention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1 COMMENT='PCI Intervetion patient';

-- Dumping data for table admin_pci_registry.intervention: ~13 rows (approximately)
/*!40000 ALTER TABLE `intervention` DISABLE KEYS */;
INSERT INTO `intervention` (`intrevention_id`, `patient_id`, `user_id`, `edit_user`, `edit_time`, `date_time_percutaneous`, `ID_procedure`, `attending_cardiologist`, `interventional_cardiologist`, `transferred`, `heart_rate`, `BP`, `PAST_HISTORY`, `history_mi`, `history_chf`, `history_stroke`, `history_vascular`, `history_renal`, `prev_pci`, `cabg`, `history_valvular_h`, `RISK_STATUS`, `smoking_status`, `diabets_mellitus`, `history_hypertension`, `history_hypercholesterol`, `ADMISION_DETAILS`, `indication_pci`, `symptom_acs`, `date_time_arival`, `elevated_biochemical`, `cardiogenic_pci`, `hemodynamic`, `INVESTIGATION_CORONARY`, `lv_opt`, `ANGIOGRAM_RESULT`, `dominance`, `right_coronary`, `mrca`, `drca`, `rpda`, `posteo_segment`, `lm_artery`, `plad`, `mlad`, `dlad`, `1_diagonal`, `2_diagonal`, `pcirc`, `intart`, `om`, `som`, `circ`, `obtuse_segments`, `lpda`, `no_vessels`, `left_main_d`, `main_stem`, `PCI`, `segment_no`, `re_stenosis`, `bifurcation`, `bifurcation_yes`, `cto`, `tmi_before`, `tmi_after`, `stenosis_a_pci`, `stent`, `no_stents`, `direct_stenting`, `stent_type`, `bare_metal`, `drug_eluting`, `drug_eluting_type`, `stent_graft`, `bioabsorbable`, `stent_size`, `length`, `PCI_other`, `percutaneous_arterial`, `diagnostic_device`, `therapeutic_device`, `procedural_complications`, `coronary_artery_cabg`, `vascular_closure`, `perc_arterial_complications`, `fluo_time`, `AK`, `LABORATORY`, `creatinine`, `hemoglobin`, `leucocyte`, `thrombocyte`, `MEDICATION_PCI`, `aspirin`, `other_antiplatele`, `anticoagulant`, `glycoprotein`, `heparin`, `OUTCOME`, `elevated`, `myocardial_post`, `bleeding_hospital`, `stroke`, `cin`, `renal_failure`, `survival_status`, `date_discharge`, `discharge_destination`, `MEDICATION_DISCHARGE`, `aspirin2`, `other_antiplatele2`, `anticoagulant2`, `beta-blockers`, `ace_inhibitors`, `angiotensin_repector`, `diabetic_control`, `statins`, `non_statin`, `heparin2`, `INFO`, `notes`, `status`) VALUES
	(60, 12, 0, 0, '0000-00-00 00:00:00', '2015-12-29 00:00:00', '313123', '2', '1', 'Yes', 31, '13', '', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', '', 'Never', 'Diabetic (dietary control)', 'Yes', 'No', '', 'STEMI / rescue PCI', '2015-12-29 00:00:00', '2015-12-22 00:00:00', 'No', 'No', 'Yes (IABP/CP bypass)', '', 31, '', 'right', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '2', 'No', 'Yes', '', 'segment 2,segment 3,segment 5,segment 6,segment 7,segment 10', 'No', 'No', '1-0-0', '', 'TIMI 2', 'TIMI 1', '23', 'No', 3, 'Yes', 'Drug-eluting,Stent-graft,Bioabsorbable VS', '2', '1', 'Orsiro,Onyx', '1', '2', '31', '13', '', 'Radial', 'OCT,Presure wire,Other', 'Balloon postdilatation,Distal Protection Device', 'No Peri-Procedural complications,Coronary perforation,No flow/slow flow phenomenon', 'Emergency', 'No', 'False aneurysm,Haemorrhage requiring surgery or transfusion,Arterial occlusion/dissection requiring interventions', '00:00:23', 23, '', 23, 323, 23, 23, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Unknown', 'Unfractionated heparin', '', 'No', 'Yes', 'Retroperitoneal bleed (major)', 'Yes', '', 'No', 'Dead', '2015-12-29', 'Covalescent/Rehabilitation center', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'Ezetimibe', 'Unfractionated heparin', '', '', 'Finished'),
	(61, 13, 0, 0, '0000-00-00 00:00:00', '2015-12-29 16:00:00', '4012y2015', '1', '1', 'No', 55, '120', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'Yes', '', 'STEMI / primary PCI', '2015-12-29 12:15:00', '2015-12-29 15:26:00', 'No', 'No', 'No', '', 40, '', 'right', '', '50 - 74% (intermediate stenosis)', '100% (complete occlusion)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2,segment 3', 'No', 'Yes', '1-1-0', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Promus', '', '', '2.75, 3.0, 3.0', '32, 28, 20', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:02', 947, '', 1.2, 14.5, 8500, 225500, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', 'Alive', '2015-12-31', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished'),
	(63, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(64, 16, 0, 0, '0000-00-00 00:00:00', '2016-01-05 22:13:00', '15/2016', '15', '1', 'Yes', 0, '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2015-01-05 09:30:00', '2016-01-05 21:36:00', 'Yes', 'No', 'No', '', 45, '', 'right', '', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', 'segment 2', 'No', 'No', '', '', 'TIMI 0', 'TIMI 3', '', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '30mm', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '05:43:00', 5, '', 0.72, 13.4, 11230, 208, '', 'Yes', 'Clopidogrel', '', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress'),
	(65, 17, 0, 0, '0000-00-00 00:00:00', '2016-12-05 13:30:00', '11/2016', '16', '1', 'No', 140, '70', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '2015-12-29 19:44:00', 'No', 'No', 'No', '', 55, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '2', 'Yes', '', '', 'segment 6', 'No', '', '', '', '', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '26mm', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:17', 2716, '', 1.33, 11, 17.01, 159, '', 'Yes', 'Ticagrelor', 'No', 'No', 'LMWH', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(67, 19, 0, 0, '0000-00-00 00:00:00', '2015-12-30 02:55:00', '4018Y2015', '1', '1', 'No', 70, '114/84', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2015-12-29 20:00:00', '2015-12-30 02:50:00', 'Yes', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6', 'No', 'Yes', '0-1-0', '', 'TIMI 1', 'TIMI 2', '20%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '4.0', '28', '', 'Femoral', '', 'Thrombectomy', 'No flow/slow flow phenomenon', '', 'No', 'None', '08:14:00', 1227, '', 0.86, 15.1, 11300, 302000, '', '', 'Ticagrelor', '', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(68, 19, 0, 0, '0000-00-00 00:00:00', '2016-01-05 12:00:00', '9Y2016', '3', '1', 'No', 70, '115/75', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Post STEMI (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6,segment 12', 'No', 'Yes', '0-1-0', '', 'TIMI 2', 'TIMI 3', '0', 'No', 0, '', '', '', '', '', '', '', '', '', '', 'Femoral', '', 'Balloon postdilatation', 'No Peri-Procedural complications', '', 'No', '', '03:59:00', 900, '', 0.86, 15.1, 11300, 302000, '', 'Yes', 'Ticagrelor', '', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(69, 20, 0, 0, '0000-00-00 00:00:00', '2016-01-05 14:45:00', '12Y2016', '1', '1', '', 80, '120/78', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', 45, '', 'left', '', '75 - 90% (severe stenosis)', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '3', 'No', 'No', '', 'segment 6', '', 'No', '', '', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '38', '', 'Combined (Femoral + radial)', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', '', '07:16:00', 3063, '', 0.94, 16.6, 6910, 223000, '', 'Yes', 'Clopidogrel', '', '', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(70, 21, 0, 0, '0000-00-00 00:00:00', '2016-01-05 21:10:00', '14Y2016', '2', '1', 'Yes', 76, '121/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (insulin)', 'Yes', 'No', '', 'STEMI / primary PCI', '2016-01-01 17:00:00', '2016-01-05 21:04:00', 'Yes', 'No', 'No', '', 45, '', 'codominance', '100% (complete occlusion)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '1', 'No', 'No', '', 'segment 1,segment 2,segment 3', 'No', 'No', '', '', 'TIMI 0', 'TIMI 2', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Orsiro,Resolute', '', '', '3.0', '26', '', 'Femoral', '', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '10:05:00', 1772, '', 0.9, 17, 10200, 161000, '', 'Yes', '', '', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(71, 15, 0, 0, '0000-00-00 00:00:00', '2015-12-29 17:00:00', '4015', '10', '1', 'No', 66, '140/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'No', 'Yes', '', 'NSTACS (immediate PCI,< 2h)', '2015-12-28 02:00:00', '2015-12-29 17:00:00', 'Yes', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'Unknown', '', 'TIMI 0', 'TIMI 3', '20', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '1', '', '2.75', '30', '', 'Radial', 'None', 'Balloon predilatation', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '07:18:00', 728, '', 0.87, 13.8, 10700, 296000, '', 'No', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress'),
	(72, 15, 0, 0, '0000-00-00 00:00:00', '2016-01-04 09:30:00', '1', '10', '1', 'No', 0, '0', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'No', 'Yes', '', 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'Unknown', '', 'TIMI 3', 'TIMI 3', '0', 'No', 0, 'No', '', '', '', '', '', '', '', '', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '02:33:00', 281, '', 0.87, 13.8, 10700, 296000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress'),
	(74, 22, 0, 0, '0000-00-00 00:00:00', '2016-01-04 12:35:00', '4y2016', '17', '4', 'No', 74, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'No', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', 60, '', 'right', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '50 - 74% (intermediate stenosis)', '', '', '75 - 90% (severe stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '2', 'No', 'No', '', 'segment 6', 'No', 'No', 'Unknown', '', 'Unknown', 'Unknown', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3', '22', '', 'Unknown', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '06:09:00', 1047, '', 0.67, 9.9, 6980, 300000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n <strong>ANGIOPLASTIE CU IMPLANTARE DE STENT FARMACOLOGIC ACTIV ADA 2 IN ANTECEDENTE (2011) - STENT PERMEABIL</strong></p>\n', 'In progress'),
	(75, 23, 0, 0, '0000-00-00 00:00:00', '2016-01-05 12:30:00', '10y2016', '', '1', 'No', 0, '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', 60, '', 'right', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'Unknown', '', 'Unknown', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Promus', '', '', '4', '32', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '06:49:00', 1339, '', 1.19, 15.7, 10600, 262000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '0000-00-00', '', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', '');
/*!40000 ALTER TABLE `intervention` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.interventional_cardiologist
CREATE TABLE IF NOT EXISTS `interventional_cardiologist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardiologist_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.interventional_cardiologist: ~5 rows (approximately)
/*!40000 ALTER TABLE `interventional_cardiologist` DISABLE KEYS */;
INSERT INTO `interventional_cardiologist` (`id`, `cardiologist_name`) VALUES
	(1, 'dr. Laszlo HADADI'),
	(2, 'dr. Ioan TILEA'),
	(3, 'dr. Ayman ELKAHLOUT'),
	(4, 'dr. Alexandru BARDAS'),
	(5, 'dr. Razvan SERBAN');
/*!40000 ALTER TABLE `interventional_cardiologist` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.interv_compl
CREATE TABLE IF NOT EXISTS `interv_compl` (
  `complication_id` smallint(5) NOT NULL,
  `intervention_id` smallint(5) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela de n to n';

-- Dumping data for table admin_pci_registry.interv_compl: ~3 rows (approximately)
/*!40000 ALTER TABLE `interv_compl` DISABLE KEYS */;
INSERT INTO `interv_compl` (`complication_id`, `intervention_id`, `priority`) VALUES
	(2, 38, 0),
	(13, 38, 1),
	(11, 39, 0);
/*!40000 ALTER TABLE `interv_compl` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.locality
CREATE TABLE IF NOT EXISTS `locality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localitate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Localitati';

-- Dumping data for table admin_pci_registry.locality: ~0 rows (approximately)
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `date_log_in` datetime NOT NULL,
  `date_log_out` datetime NOT NULL,
  `ip_location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.patients
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fo_nr` varchar(50) NOT NULL,
  `cnp` varchar(13) NOT NULL,
  `country` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `patient_phone` int(11) NOT NULL,
  `patient_caregiver_phone` int(11) NOT NULL,
  `GP_name` varchar(50) NOT NULL,
  `gp_phone` int(11) NOT NULL,
  `GP_office_address` varchar(50) NOT NULL,
  `GP_email` varchar(50) NOT NULL,
  `patient_address` text NOT NULL,
  `GP_info` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.patients: ~8 rows (approximately)
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` (`id`, `fo_nr`, `cnp`, `country`, `county`, `city`, `first_name`, `last_name`, `sex`, `date_of_birth`, `height`, `weight`, `patient_phone`, `patient_caregiver_phone`, `GP_name`, `gp_phone`, `GP_office_address`, `GP_email`, `patient_address`, `GP_info`, `status`) VALUES
	(15, '7025/2015', '1878787878787', 'Romania', '28', 'Targu Mures', 'BUTIU', 'Maria', 'Female', '1946-06-10', 165, 68, 0, 0, '', 0, '', '', '', '', 'In progress'),
	(16, '65/2016', '2147483647', 'Romania', '28', 'Tarnaveni', 'BICHIS ', 'VASILE-MIRCEA', 'Male', '1967-09-18', 110, 75, 742176727, 771537745, 'Dr. Morar Precup', 0, '', '', '', '<p>\n Dr. Morar Precup -loc: Tarnaveni</p>\n', 'In progress'),
	(17, '7026/2015', '2147483647', 'Romania', '28', 'Sangeorgiu de Mures', 'FAZAKAS ', 'BELA ', 'Male', '1942-04-19', 180, 75, 365735911, 742121915, 'Dr. Nagi Adela', 0, '', '', '<p>\n Jud: Mures; Loc: Sangeorgiu de Mures; Str. Garii&nbsp;</p>\n', '', 'In progress'),
	(19, '7029/2015', '2147483647', 'Romania', '21', 'Hodosa', 'Ferencz Albert', 'Bogdan', 'Male', '1975-02-16', 174, 65, 747389464, 0, 'Ujica Mariana', 0, '', '', '<p>\n nr. 1154</p>\n', '', 'In progress'),
	(20, '42/2016', '2147483647', 'Romania', '21', 'odorheiu secuiesc', 'Csaba Istvan ', 'Sebestyen', 'Male', '1963-01-05', 180, 100, 762862421, 745809422, 'Nagy Levente Laszlo', 266218182, '535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, ', 'varoshaza@varoshaza.ro', '<p>\n str Szent Janos 72</p>\n', '<address address="" color:="" font-family:="" font-size:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:="" segoe="">\n <span itemprop="streetAddress">STR. GHIPES nr. 4&nbsp;</span>,&nbsp;<span itemprop="addressLocality">ODORHEIU SECUIESC</span>,&nbsp;<span itemprop="addressRegion">JUD. HARGHITA;&nbsp;</span><span 0266-218="" address="" background-color:="" font-size:="" font-weight:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:=""> <strong font-size:="" line-height:="" margin:="" padding:="" span="">0266-218382</strong></span></address>\n<div class="elerhetoseg" font-family:="" font-size:="" p="" padding:="">\n <strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:=""><strong p="" padding:="">&lt;strong 0px;=&quot;&quot; padding:=&quot;&quot; 0px;&quot;=&quot;&quot;&gt;Adresă::&nbsp;</strong>535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, Nr. 5, Judetul Harghita </strong></strong></div>\n<p>\n <strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:="">&nbsp;</strong></strong></strong></strong></strong></p>\n', 'In progress'),
	(21, '64/2016', '2147483647', 'Romania', '21', 'Toplita', 'Carol', 'Papai', 'Male', '1949-07-27', 175, 80, 266341813, 0, 'Pascan Loredana', 266, 'STR. VICTOR BABEŞ , bl. B sc. 2 ap. 3, TOPLIŢA, Co', '', '<p>\n Dealului 3P/3</p>\n', '', 'In progress'),
	(22, '7035/2015', '2147483647', 'Romania', '28', 'Targu Mures', 'DAVID', 'Marcela-Florina', 'Female', '1970-06-26', 170, 80, 0, 0, '', 0, '', '', '', '', 'In progress'),
	(23, '19/2016', '2147483647', 'Romania', '28', 'Gurghiu', 'MENYHART', 'Gavril', 'Male', '1951-03-29', 182, 70, 0, 768628122, '', 0, '', '', '<p>\n loc. Gurghiu, str. Glajarie, nr. 133</p>\n', '', 'In progress');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.percente
CREATE TABLE IF NOT EXISTS `percente` (
  `id_percent` int(11) NOT NULL AUTO_INCREMENT,
  `percent_name` int(11) NOT NULL,
  PRIMARY KEY (`id_percent`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.percente: ~3 rows (approximately)
/*!40000 ALTER TABLE `percente` DISABLE KEYS */;
INSERT INTO `percente` (`id_percent`, `percent_name`) VALUES
	(1, 1),
	(2, 2),
	(3, 3);
/*!40000 ALTER TABLE `percente` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `mobile` int(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.user: ~7 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `login`, `password`, `user_name`, `user_type`, `email`, `mobile`) VALUES
	(1, 'admin', '120ca595e2c87f33c323efa93916b03a61fc5ed0c33be4b36a16df2b4819c979', 'Oltean Tiberiu', 'admin', 'tiberiu@cardio.ro', 75783257),
	(25, 'susioana', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Ioana SUS', 'admin', 'susioana@yahoo.com', 740970553),
	(26, 'user', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'User demo', 'user', 'email@email.ro', 34234),
	(27, 'hadadilaci', '62d722ab8c74ecf66716d846937ae51c8daba30aa93f5203662daad14e4d4da0', 'Laszlo HADADI', 'admin', 'hadadilaci@yahoo.com', 742933819),
	(28, 'demjenzoltan', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Zoltan DEMJEN', 'admin', 'demjenzoltan@yahoo.com', 747920213),
	(29, 'cristina', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Cristina SOMKEREKI', 'admin', 'cristinasomkereki@yahoo.com', 742866376),
	(30, 'iuliagrancea', '5559b1c5047b9d4c22836a8e0d5d1ee2233b0beffd1d1d99902c9fc86d50868d', 'grancea iulia', 'admin', 'iuliagrancea@yahoo.com', 742459977);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
