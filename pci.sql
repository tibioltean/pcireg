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
  `signature` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='PCI Follow up patient';

-- Dumping data for table admin_pci_registry.follow_up: ~8 rows (approximately)
/*!40000 ALTER TABLE `follow_up` DISABLE KEYS */;
INSERT INTO `follow_up` (`id`, `patient_id`, `date`, `survival_status`, `date_of_death`, `death_cause`, `anginal_status`, `dyspnoea`, `date_readmission`, `mi`, `mi_date`, `stroke`, `stroke_date`, `pci`, `pci_date`, `coronary_bypass`, `coronary_bypass_date`, `cardiac_rehabilitation`, `aspirin`, `other_antiplatelet`, `anticoagulants`, `beta_blockers`, `ace_inhibitors`, `angiotensin`, `diabetic_control`, `statins`, `non_statin`, `notes`, `status`, `signature`) VALUES
	(1, 3, '2015-12-22', 'Alive', '2015-12-22', 'Non-Cardiovascular', 'CCS II', 'NYHA IV', '2015-12-14', 'No', '2015-12-23', 'No', '2015-12-23', 'Yes', '2015-12-14', '', '2015-12-21', 'Yes', 'Yes', '2', 'Other', 'Unknown', 'Yes', 'Yes', 'Insulin', 'Yes', 'Fibrates', '<p>\n ddfdsf</p>\n', '', ''),
	(2, 3, '2015-12-22', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA I', '2015-12-21', 'No', '2015-12-22', 'Unknown', '2015-12-22', 'No', '2015-12-22', 'No', '2015-12-22', 'No', 'No', 'Ticagrelor', 'Oral throbin inhibitors', 'Yes', 'No', 'No', 'Diet only', 'No', 'Fibrates', '<p>\r\n fdsfsd</p>\r\n', '', ''),
	(6, 6, '2015-12-29', 'Alive', '0000-00-00', '', 'CCS I', 'NYHA I', '2015-12-29', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'None', 'No', 'None', '', 'Finished', ''),
	(7, 12, '2015-12-29', 'Alive', '0000-00-00', 'Non-Cardiovascular', 'CCS I', 'NYHA III', '2015-12-29', 'Yes', '2015-12-29', '', '2015-12-29', 'Yes', '2015-12-29', 'Unknown', '2015-12-29', 'No', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Yes', 'No', 'Insulin and oral agent', 'No', 'Ezetimibe', '', 'Finished', ''),
	(8, 12, '2015-12-01', 'Alive', '0000-00-00', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 'Ezetimibe', '', 'Finished', ''),
	(9, 13, '2016-02-02', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA II', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', '', 'Finished', ''),
	(10, 37, '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(11, 37, '0000-00-00', '', '0000-00-00', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `follow_up` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.intervention
CREATE TABLE IF NOT EXISTS `intervention` (
  `intrevention_id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `edit_user` int(11) NOT NULL,
  `edit_time` datetime NOT NULL,
  `date_time_arival` datetime NOT NULL COMMENT 'Date and time of admission/arrival at hospital (for ACS patients)',
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
  `arrival_acs` datetime NOT NULL,
  `elevated_biochemical` varchar(150) NOT NULL COMMENT 'Elevated biochemical marker pre procedure',
  `cardiogenic_pci` varchar(150) NOT NULL COMMENT 'Cardiogenic shock at start of PCI',
  `hemodynamic` varchar(150) NOT NULL COMMENT 'Haemodynamic support',
  `scr` varchar(150) NOT NULL,
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
  `stent_thrombosis` varchar(150) NOT NULL,
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
  `signature` varchar(150) NOT NULL,
  PRIMARY KEY (`intrevention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1 COMMENT='PCI Intervetion patient';

-- Dumping data for table admin_pci_registry.intervention: ~35 rows (approximately)
/*!40000 ALTER TABLE `intervention` DISABLE KEYS */;
INSERT INTO `intervention` (`intrevention_id`, `patient_id`, `user_id`, `edit_user`, `edit_time`, `date_time_arival`, `date_time_percutaneous`, `ID_procedure`, `attending_cardiologist`, `interventional_cardiologist`, `transferred`, `heart_rate`, `BP`, `PAST_HISTORY`, `history_mi`, `history_chf`, `history_stroke`, `history_vascular`, `history_renal`, `prev_pci`, `cabg`, `history_valvular_h`, `RISK_STATUS`, `smoking_status`, `diabets_mellitus`, `history_hypertension`, `history_hypercholesterol`, `ADMISION_DETAILS`, `indication_pci`, `symptom_acs`, `arrival_acs`, `elevated_biochemical`, `cardiogenic_pci`, `hemodynamic`, `scr`, `INVESTIGATION_CORONARY`, `lv_opt`, `ANGIOGRAM_RESULT`, `dominance`, `right_coronary`, `mrca`, `drca`, `rpda`, `posteo_segment`, `lm_artery`, `plad`, `mlad`, `dlad`, `1_diagonal`, `2_diagonal`, `pcirc`, `intart`, `om`, `som`, `circ`, `obtuse_segments`, `lpda`, `no_vessels`, `left_main_d`, `main_stem`, `PCI`, `segment_no`, `re_stenosis`, `stent_thrombosis`, `bifurcation`, `bifurcation_yes`, `cto`, `tmi_before`, `tmi_after`, `stenosis_a_pci`, `stent`, `no_stents`, `direct_stenting`, `stent_type`, `bare_metal`, `drug_eluting`, `drug_eluting_type`, `stent_graft`, `bioabsorbable`, `stent_size`, `length`, `PCI_other`, `percutaneous_arterial`, `diagnostic_device`, `therapeutic_device`, `procedural_complications`, `coronary_artery_cabg`, `vascular_closure`, `perc_arterial_complications`, `fluo_time`, `AK`, `LABORATORY`, `creatinine`, `hemoglobin`, `leucocyte`, `thrombocyte`, `MEDICATION_PCI`, `aspirin`, `other_antiplatele`, `anticoagulant`, `glycoprotein`, `heparin`, `OUTCOME`, `elevated`, `myocardial_post`, `bleeding_hospital`, `stroke`, `cin`, `renal_failure`, `survival_status`, `date_discharge`, `discharge_destination`, `MEDICATION_DISCHARGE`, `aspirin2`, `other_antiplatele2`, `anticoagulant2`, `beta-blockers`, `ace_inhibitors`, `angiotensin_repector`, `diabetic_control`, `statins`, `non_statin`, `heparin2`, `INFO`, `notes`, `status`, `signature`) VALUES
	(60, 12, 0, 0, '0000-00-00 00:00:00', '2015-12-22 00:00:00', '2015-12-29 00:00:00', '313123', '2', '1', 'Yes', 31, '13', '', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', '', 'Never', 'Diabetic (dietary control)', 'Yes', 'No', '', 'STEMI / rescue PCI', '2015-12-29 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'Yes (IABP/CP bypass)', '', '', 31, '', 'right', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '2', 'No', 'Yes', '', 'segment 2,segment 3,segment 5,segment 6,segment 7,segment 10', 'No', '', 'No', '1-0-0', '', 'TIMI 2', 'TIMI 1', '23', 'No', 3, 'Yes', 'Drug-eluting,Stent-graft,Bioabsorbable VS', '2', '1', 'Orsiro,Onyx', '1', '2', '31', '13', '', 'Radial', 'OCT,Presure wire,Other', 'Balloon postdilatation,Distal Protection Device', 'No Peri-Procedural complications,Coronary perforation,No flow/slow flow phenomenon', 'Emergency', 'No', 'False aneurysm,Haemorrhage requiring surgery or transfusion,Arterial occlusion/dissection requiring interventions', '00:00:23', 23, '', 23, 323, 23, 23, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Unknown', 'Unfractionated heparin', '', 'No', 'Yes', 'Retroperitoneal bleed (major)', 'Yes', '', 'No', 'Dead', '2015-12-29', 'Covalescent/Rehabilitation center', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'Ezetimibe', 'Unfractionated heparin', '', '', 'Finished', ''),
	(61, 13, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:26:00', '2015-12-29 16:00:00', '4012y2015', '1', '1', 'No', 55, '120', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'Yes', '', 'STEMI / primary PCI', '2015-12-29 12:15:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', '', 40, '', 'right', '', '50 - 74% (intermediate stenosis)', '100% (complete occlusion)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2,segment 3', 'No', '', 'Yes', '1-1-0', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Promus', '', '', '2.75, 3.0, 3.0', '32, 28, 20', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:02', 947, '', 1.2, 14.5, 8500, 225500, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', 'Alive', '2015-12-31', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', ''),
	(63, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(64, 16, 0, 0, '0000-00-00 00:00:00', '2016-01-05 19:24:00', '2016-01-05 22:13:00', '15/2016', '15', '1', 'Yes', 80, '100/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2016-01-05 09:30:00', '2016-01-05 20:30:00', 'Yes', 'No', 'No', '', '', 45, '', 'right', '', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '3', 'No', '', '', 'segment 2,segment 3', 'No', '', 'No', '', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '30', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:43', 743, '', 0.72, 13.4, 11230, 208000, '', 'Yes', 'Clopidogrel', '', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '29'),
	(65, 17, 0, 0, '0000-00-00 00:00:00', '2015-12-29 00:00:00', '2016-12-05 13:30:00', '11/2016', '6', '1', 'No', 70, '140', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'Yes', 'No', '', 'segment 5,segment 6', 'No', 'No', 'Yes', '1-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '26mm', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:17', 2716, '', 1.33, 11, 17.01, 159, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(67, 19, 0, 0, '0000-00-00 00:00:00', '2015-12-30 02:50:00', '2015-12-30 02:55:00', '4018Y2015', '3', '1', 'No', 70, '114/84', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2015-12-29 20:00:00', '0000-00-00 00:00:00', 'Yes', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6', 'No', '', 'Yes', '0-1-0', 'No', 'TIMI 1', 'TIMI 2', '20%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '4.0', '28', '', 'Femoral', 'None', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:08:14', 1227, '', 0.86, 15.1, 11300, 302000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(68, 19, 0, 0, '0000-00-00 00:00:00', '2015-12-30 02:50:00', '2016-01-05 12:00:00', '9Y2016', '3', '1', 'No', 70, '115/75', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Post STEMI (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6,segment 12', 'No', '', 'Yes', '0-1-0', 'No', 'TIMI 2', 'TIMI 3', '0', 'No', 0, '', '', '', '', '', '', '', '', '', '', 'Femoral', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:59', 900, '', 0.86, 15.1, 11300, 302000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(69, 20, 0, 0, '0000-00-00 00:00:00', '2016-01-05 10:00:00', '2016-01-05 14:45:00', '12Y2016', '1', '1', 'No', 80, '120/78', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '75 - 90% (severe stenosis)', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '3', 'No', 'No', '', 'segment 6', 'No', 'No', 'No', '', 'Unknown', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '38', '', 'Combined (Femoral + radial)', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:16', 3063, '', 0.94, 16.6, 6910, 223000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(70, 21, 0, 0, '0000-00-00 00:00:00', '2016-01-05 21:04:00', '2016-01-05 21:10:00', '14Y2016', '2', '1', 'Yes', 76, '121/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (insulin)', 'Yes', 'No', '', 'STEMI / primary PCI', '2016-01-05 17:00:00', '2016-01-05 20:30:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'codominance', '100% (complete occlusion)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '1', 'No', '', '', 'segment 1,segment 2,segment 3', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 2', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Orsiro,Resolute', '', '', '3.0', '52', '', 'Femoral', 'None', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:10:05', 1772, '', 0.9, 17, 10200, 161000, '', 'Yes', 'No', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-12', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Insulin', 'Yes', 'None', 'No', '', '<p>\n Fara tulburari de cinetica VD la internare sau dupa.</p>\n', 'Finished', '30'),
	(71, 15, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:11:00', '2015-12-29 17:05:00', '4015y2015', '10', '1', 'No', 80, '140/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'No', 'Yes', '', 'NSTACS (immediate PCI,< 2h)', '2015-12-28 02:00:00', '2015-12-29 09:13:00', 'Yes', 'No', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 0', 'TIMI 3', '20', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '30', '', 'Radial', 'None', 'Balloon predilatation', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:07:18', 728, '', 0.87, 13.8, 10700, 296000, '', 'No', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(72, 15, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:11:00', '2016-01-04 09:30:00', '1y2016', '10', '1', 'No', 70, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'No', 'Yes', '', 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 3', 'TIMI 3', '0', 'No', 0, 'No', '', '', '', '', '', '', '', '', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:02:33', 281, '', 0.87, 13.8, 10700, 296000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(74, 22, 0, 0, '0000-00-00 00:00:00', '2015-12-30 10:09:00', '2016-01-04 12:35:00', '4y2016', '17', '4', 'No', 74, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'No', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '50 - 74% (intermediate stenosis)', '', '', '75 - 90% (severe stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '2', 'No', 'No', '', 'segment 6', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:09', 1047, '', 0.67, 9.9, 6980, 300000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n <strong>ANGIOPLASTIE CU IMPLANTARE DE STENT FARMACOLOGIC ACTIV ADA 2 IN ANTECEDENTE (2011) - STENT PERMEABIL</strong></p>\n', 'Finished', '28'),
	(75, 23, 0, 0, '0000-00-00 00:00:00', '2016-01-04 09:27:00', '2016-01-05 12:30:00', '10y2016', '18', '1', 'No', 80, '140/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Promus', '', '', '4', '32', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:49', 1339, '', 1.19, 15.7, 10600, 262000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(76, 30, 0, 0, '0000-00-00 00:00:00', '2016-01-06 13:42:00', '2016-01-06 13:45:00', '23Y2016', '3', '4', 'No', 80, '120/89', '', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-06 09:30:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 35, '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '3', 'No', 'No', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '22', '', 'Femoral', '', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:02', 1879, '', 0.96, 12.17, 9490, 221000, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Unknown', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(77, 32, 0, 0, '0000-00-00 00:00:00', '2016-01-05 09:30:00', '2016-01-06 10:40:00', '18Y2016', '1', '1', 'No', 67, '118/67', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '75 - 90% (severe stenosis)', '25 - 49% (mild stenosis)', '', '', '', '100% (complete occlusion)', '', '', '', '100% (complete occlusion)', '', '', '2', 'No', 'No', '', 'segment 6,segment 11,segment 13', 'No', 'No', 'Yes', '1-1-0', 'Yes', 'TIMI 3', 'TIMI 3', '0%', 'No', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '26', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:09:44', 1879, '', 0.69, 13, 5460, 225000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'LMWH', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(78, 33, 0, 0, '0000-00-00 00:00:00', '2016-01-06 10:18:00', '2016-01-06 18:00:00', '28Y2016', '1', '1', 'No', 85, '180/90', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '90 - 99% (critical stenosis)', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '3.5', '12', '', 'Radial', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:25', 3378, '', 0.8, 14.4, 6120, 232000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(79, 29, 0, 0, '0000-00-00 00:00:00', '2015-12-11 04:33:00', '2016-01-06 16:30:00', '26/2016', '9', '1', 'No', 64, '160/80', '', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (insulin)', 'Yes', 'No', '', 'Post unstable angina (stabilised)', '2015-12-30 03:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '90 - 99% (critical stenosis)', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '', '', '90 - 99% (critical stenosis)', '', '50 - 74% (intermediate stenosis)', '', '3', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:46', 1705, '', 1.84, 10.4, 11200, 389000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'Unknown', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Insulin', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(80, 34, 0, 0, '0000-00-00 00:00:00', '2016-01-04 00:00:00', '2016-01-06 10:00:00', '17/2016', '7', '1', 'No', 60, '140', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '<25% (luminal irregularities)', '', '', '', '', '', '90 - 99% (critical stenosis)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '2', 'No', '', '', 'segment 6,segment 10', 'No', 'No', 'Yes', '0-1-1', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '34', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:21:19', 4512, '', 0.81, 14, 6540, 82000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(81, 35, 0, 0, '0000-00-00 00:00:00', '2016-01-06 14:47:00', '2016-01-07 15:50:00', '30y2016', '7', '5', 'No', 50, '130', '', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 65, '', 'right', '', '', '', '100% (complete occlusion)', '', '', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '3', 'No', '', '', 'segment 6,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'Yes', 'Drug-eluting', '', '2', 'Promus,Resolute', '', '', '3.5', '28', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:25', 1486, '', 1, 14.6, 6410, 182000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(82, 36, 0, 0, '0000-00-00 00:00:00', '2016-01-05 11:45:00', '2016-01-07 09:00:00', '30/2016', '17', '4', 'No', 60, '125/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'Unknown', 'Unknown', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '4.0', '22', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:25', 1486, '', 0.92, 13.8, 6120, 210000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(84, 17, 0, 0, '0000-00-00 00:00:00', '2015-12-29 19:44:00', '2015-12-29 19:53:00', '4016y2015', '6', '1', 'No', 70, '120/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'Yes', 'No', '', 'NSTACS (immediate PCI,< 2h)', '2015-12-29 13:34:00', '0000-00-00 00:00:00', 'Yes', 'Yes', 'No', 'Yes ', '', 50, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '2', 'Yes', '', '', 'segment 11', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '2.5', '15', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:54', 1614, '', 1.33, 11, 17000, 159000, '', 'No', 'No', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n TA de 120/70 mmHg la internare a fost masurata in conditii de administrare de adrenalina in PEV.</p>\n', 'Finished', '29'),
	(85, 37, 0, 0, '0000-00-00 00:00:00', '2016-01-08 03:07:00', '2016-01-19 00:00:00', '57Y2016', '12', '1', 'No', 105, '97/72', '', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Newly diagnosed diabetic', 'Yes', 'Yes', '', 'NSTACS (immediate PCI,< 2h)', '2016-01-06 12:00:00', '2016-01-08 12:00:00', 'Yes', 'Yes', 'Yes (IABP/CP bypass)', 'No', '', 35, '', 'codominance', '100% (complete occlusion)', '', '', '', '', '50 - 74% (intermediate stenosis)', '90 - 99% (critical stenosis)', '50 - 74% (intermediate stenosis)', '<25% (luminal irregularities)', '', '', '50 - 74% (intermediate stenosis)', '', '75 - 90% (severe stenosis)', '', '25 - 49% (mild stenosis)', '', '', '3', 'Yes', 'No', '', 'segment 5,segment 6,segment 11', 'No', 'No', 'Yes', '1-1-1', 'No', 'TIMI 2', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.5', '22', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:27:53', 3939, '', 1.57, 11.4, 9000, 457000, '', 'No', 'Clopidogrel', 'No', 'No', 'LMWH', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Dead', '2016-01-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Finished', '31'),
	(86, 38, 0, 0, '0000-00-00 00:00:00', '2016-01-08 13:10:00', '2016-01-11 00:00:00', '61Y2016', '3', '3', 'No', 60, '107/60', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'No', 'Yes', '', 'Post unstable angina (stabilised)', '2016-01-08 08:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '', '', '', '', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '3', 'No', 'No', '', 'segment 5,segment 6,segment 11', 'No', '', 'Yes', '0-1-1', 'No', 'Unknown', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '3.5', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:13:30', 3500, '', 0.76, 13.5, 6720, 245000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '51'),
	(87, 39, 0, 0, '0000-00-00 00:00:00', '2016-01-06 11:15:00', '2016-01-08 14:15:00', '53Y2016', '1', '1', 'No', 71, '154/99', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '', '', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '1', 'No', '', '', 'segment 3,segment 4,segment 16', 'Yes', 'No', 'Yes', '0-1-1', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.0', '15', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:20', 1138, '', 0.87, 13.9, 7010, 215000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(88, 40, 0, 0, '0000-00-00 00:00:00', '2016-01-07 10:00:00', '2016-01-11 11:00:00', '62Y2016', '4', '5', 'No', 64, '148/100', '', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (insulin)', 'Yes', 'No', '', 'Post STEMI (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '2', 'No', 'No', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '2.75', '48', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', '', 'No', 'None', '00:08:58', 2944, '', 0.83, 11, 6270, 247000, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'Insulin', 'Yes', 'None', '', '', '<p>\n Pericardita lichidiana mica-medie prezenta la internare (verosimil sindr. Dressler) stationara pe parcurs, cu indicatie de monitorizare la medicul curant cardiolog.</p>\n', 'Finished', '49'),
	(89, 41, 0, 0, '0000-00-00 00:00:00', '2016-01-09 15:00:00', '2016-01-11 00:00:00', '63Y2016', '2', '1', 'No', 72, '187/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2016-01-09 08:00:00', '0000-00-00 00:00:00', 'Yes', 'No', 'No', 'No', '', 50, '', 'left', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '', '2', 'No', '', '', 'segment 11', 'No', '', 'Yes', '1-0-0', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '22', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:17', 1664, '', 1.16, 15, 11500, 227000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', '', 'Yes', 'None', 'No', '', '', 'In progress', '49'),
	(90, 42, 0, 0, '0000-00-00 00:00:00', '2016-01-12 08:00:00', '2016-01-12 16:40:00', '84Y2016', '4', '1', 'No', 66, '170/75', '', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2015-10-12 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '4.0', '15', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:54', 914, '', 7.92, 11.1, 5900, 13700, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(91, 44, 0, 0, '0000-00-00 00:00:00', '2016-01-08 08:28:00', '2016-01-11 15:10:00', '68y2016', '17', '4', 'No', 65, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '26', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:32', 1827, '', 1.31, 11.3, 11240, 338000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '35'),
	(93, 45, 0, 0, '0000-00-00 00:00:00', '2016-01-02 11:41:00', '2016-01-12 11:41:00', '', '6', '3', 'No', 87, '140/75', '', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '3', 'No', '', '', 'segment 6,segment 7', 'No', 'No', 'Yes', '0-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:07', 2979, '', 0.93, 13.1, 8700, 169000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(94, 16, 0, 0, '0000-00-00 00:00:00', '2016-01-05 00:21:36', '2016-01-12 18:00:00', '86Y2016', '15', '1', 'No', 70, '120/70', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '2016-01-05 20:30:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '2', 'No', '', '', 'segment 13', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '', 'Resolute', '', '', '2.25', '22', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:01', 541, '', 0.72, 13.4, 11230, 208000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '29'),
	(95, 46, 0, 0, '0000-00-00 00:00:00', '2016-01-12 00:00:00', '2016-01-13 14:00:00', '95Y2016', '4', '3', 'No', 65, '135/75', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', '', 60, '', 'right', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '15', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:46', 1095, '', 0.82, 11.1, 4950, 212000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '30'),
	(96, 47, 0, 0, '0000-00-00 00:00:00', '2016-01-07 14:10:00', '2016-01-12 18:40:00', '102Y2016', '', '4', 'No', 114, '205/185', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 2', 'TIMI 3', '0', 'Yes', 1, 'No', '', '', '1', '', '', '', '', '', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:01', 836, '', 1.28, 13.4, 9000, 254000, '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '30'),
	(97, 48, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 14:40:00', '96Y2016', '14', '3', '', 73, '123/88', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2016-01-13 12:00:00', '2016-01-13 13:39:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 3', 'No', 'No', 'No', '', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '3.0', '16', '', 'Radial', 'None', 'Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:12:32', 2407, '', 1.25, 13.2, 9300, 196000, '', 'Yes', 'Clopidogrel', 'No', 'Eptifibatide', 'Unfractionated heparin', '', 'Yes', 'No', 'No', 'No', '', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '43'),
	(98, 49, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 15:35:00', '97Y2016', '7', '3', 'No', 75, '127/95', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'No', '', '00:14:03', 3457, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '41'),
	(99, 50, 0, 0, '0000-00-00 00:00:00', '2016-01-11 20:51:00', '2016-01-15 10:00:00', '', '12', '4', 'No', 87, '115/60', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Post STEMI (stabilised)', '2016-01-10 18:00:00', '2016-01-11 18:52:00', 'Yes', 'No', 'No', 'No', '', 25, '', 'Unknown', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 0, 'No', 'Bare Metal', '1', '', '', '', '', '3.0', '18', '', 'Femoral', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.98, 14.2, 10500, 156000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'LMWH', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '31'),
	(100, 51, 0, 0, '0000-00-00 00:00:00', '2016-01-11 19:40:00', '2016-01-15 13:50:00', '', '15', '4', 'No', 52, '110/60', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', '', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2015-12-10 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'codominance', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '25 - 49% (mild stenosis)', '90 - 99% (critical stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '2', '', '', '', 'segment 6', 'No', 'No', 'No', '', '', 'Unknown', 'TIMI 3', '0', 'Yes', 0, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '22', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.7, 13.3, 7390, 280000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'LMWH', '', 'Unknown', 'No', 'No', 'No', '', 'No', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '32'),
	(101, 50, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '31'),
	(102, 52, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-14 00:12:00', '116Y2016', '', '1', '', 86, '146/84', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:07:10', 1740, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '29'),
	(103, 53, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-14 20:00:00', '123Y2016', '', '3', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '29'),
	(104, 54, 0, 0, '0000-00-00 00:00:00', '2016-01-13 11:07:00', '2016-01-14 12:45:00', '117Y2016', '1', '1', 'No', 71, '176/101', '', 'Unknown', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '100% (complete occlusion)', '100% (complete occlusion)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 1', 'No', 'No', 'No', '', 'Yes', 'TIMI 0', 'TIMI 0', '100%', 'No', 0, '', '', '', '', '', '', '', '', '', '', 'Combined (Femoral + radial)', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:21:32', 2040, '', 0.8, 14.8, 3300, 115000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'Unknown', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '49'),
	(105, 55, 0, 0, '0000-00-00 00:00:00', '2016-01-14 00:00:00', '2016-01-12 00:00:00', '79Y2016', '17', '4', 'No', 68, '154/82', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (insulin + oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '3', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '18', '', 'Radial', '', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:27', 1368, '', 1.5, 12.7, 8400, 169000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '35'),
	(106, 56, 0, 0, '0000-00-00 00:00:00', '2016-01-11 00:00:00', '2016-01-12 00:00:00', '73Y2016', '7', '3', 'No', 76, '125/75', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '3', 'No', '', '', 'segment 7', 'No', 'No', 'Yes', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '18', '', 'Radial', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:50', 1019, '', 0.68, 12.7, 7130, 298000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '35'),
	(107, 57, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '7', '3', 'No', 75, '150/70', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (dietary control)', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'left', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '2', 'No', '', '', 'segment 15', '', '', '', '', '', 'TIMI 3', 'TIMI 3', '', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.75', '18', '', 'Radial', '', '', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.6, 10.7, 5590, 250000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Diet only', 'Yes', 'None', 'No', '', '', 'In progress', '41'),
	(108, 58, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 00:00:00', '90y2016', '7', '1', '', 62, '136/78', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '<25% (luminal irregularities)', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '', '', '', '', '', '1', 'No', '', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Promus,Resolute', '', '', '2.5', '38', '', 'Radial', '', '', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:31:49', 4208, '', 0.77, 13.1, 5280, 221000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '41');
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
  `gender` varchar(50) NOT NULL,
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
  `signature` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.patients: ~36 rows (approximately)
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` (`id`, `fo_nr`, `cnp`, `country`, `county`, `city`, `first_name`, `last_name`, `gender`, `date_of_birth`, `height`, `weight`, `patient_phone`, `patient_caregiver_phone`, `GP_name`, `gp_phone`, `GP_office_address`, `GP_email`, `patient_address`, `GP_info`, `status`, `signature`) VALUES
	(15, '7025/2015', '2460610264444', 'Romania', '28', 'Targu Mures', 'Maria', 'Butiu', 'Female', '1946-06-10', 165, 68, 0, 0, '', 0, '', '', '<p>\n Targu Mures, str. Muncii, nr. 13, ap 2, jud. Mures</p>\n', '<p>\n Pacienta era deja externata, am gasit doua numere de telefon pe internet care corespunde cu adresa din buletin</p>\n<p>\n <span><strong>0365 425 659 </strong>(BUTIU FLORE)</span><span> sau</span><span><strong> 0265256160</strong></span></p>\n<p>\n <span><strong>la follow-</strong></span><span><strong>up de intrebat medicul de familie</strong></span></p>\n<p>\n &nbsp;</p>\n', 'Finished', '28'),
	(16, '65/2016', '1670418267400', 'Romania', '28', 'Tarnaveni', 'Vasile-Mircea', 'Bichis', 'Male', '1967-09-18', 110, 75, 742176727, 771537745, 'Dr. Morar Precup', 0, '', '', '', '<p>\n Dr. Morar Precup -loc: Tarnaveni</p>\n', 'Finished', '29'),
	(17, '7026/2015', '1420419264391', 'Romania', '28', 'Sangeorgiu de Mures', 'Bela', 'Fazakas', 'Male', '1942-04-19', 180, 75, 365735911, 742121915, 'Dr. Nagi Adela', 0, '', '', '<p>\n Jud: Mures; Loc: Sangeorgiu de Mures; Str. Garii&nbsp;</p>\n', '', 'Finished', '29'),
	(19, '7029/2015', '1750216193782', 'Romania', '21', 'Hodosa', 'Ferencz Albert', 'Bogdan', 'Male', '1975-02-16', 174, 65, 747389464, 0, 'Ujica Mariana', 0, '', '', '<p>\n nr. 1154</p>\n', '', 'Finished', '30'),
	(20, '42/2016', '1630105120677', 'Romania', '21', 'Odorheiu Secuiesc', 'Csaba Istvan ', 'Sebestyen', 'Male', '1963-01-05', 180, 100, 762862421, 745809422, 'Nagy Levente Laszlo', 266218182, '535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, ', 'nleventedr@gmail.com ', '<p>\n str Szent Janos 72</p>\n', '<address address="" color:="" font-family:="" font-size:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:="" segoe="">\n <span><span><span itemprop="streetAddress">STR. GHIPES nr. 4&nbsp;</span>,&nbsp;<span itemprop="addressLocality">ODORHEIU SECUIESC</span>,&nbsp;<span itemprop="addressRegion">JUD. HARGHITA;&nbsp;</span><span 0266-218="" address="" background-color:="" font-size:="" font-weight:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:=""> <strong font-size:="" line-height:="" margin:="" padding:="" span="">0266-218382</strong></span></span></span></address>\n<div class="elerhetoseg" font-family:="" font-size:="" p="" padding:="">\n <span><span><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:=""><strong p="" padding:="">&lt;strong 0px;=&quot;&quot; padding:=&quot;&quot; 0px;&quot;=&quot;&quot;&gt;Adresă 2 :&nbsp;</strong>535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, Nr. 5, Judetul Harghi</strong></strong><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:=""><strong p="" padding:="">ta </strong></strong></strong></span></span></div>\n<p>\n <strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><span><span><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:="">&nbsp;</strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span></strong></strong></strong></strong></p>\n', 'Finished', '30'),
	(21, '64/2016', '1490727293790', 'Romania', '21', 'Toplita', 'Carol', 'Papai', 'Male', '1949-07-27', 176, 85, 266341813, 761126644, 'Pascan Loredana', 729618796, 'STR. VICTOR BABEŞ , bl. B sc. 2 ap. 3, TOPLIŢA', '', '<p>\n Dealului bl. 3P ap. 3, Toplita, jud Harghita</p>\n', '', 'Finished', '30'),
	(22, '7035/2015', '2700626260019', 'Romania', '28', 'Targu Mures', 'Marcela-Florina', 'David', 'Female', '1970-06-26', 170, 80, 745260027, 0, 'Dr. Florea Camelia', 265225002, 'Targu Mures, Str. Dorobanţilor nr. 1, TOPMED', '', '<p>\n loc. Targu Mures, Cal. Sighisoarei, nr.9, ap12, jud. Mures</p>\n', '', 'Finished', '28'),
	(23, '19/2016', '1510329261451', 'Romania', '28', 'Gurghiu', 'Gavril', 'Menyhart', 'Male', '1951-03-29', 182, 70, 0, 768628121, 'Dr. Ballok Jolanda', 265537177, 'SAT GLĂJĂRIE NR. 148/A, COM. GURGHIU, JUD. MUREŞ', '', '<p>\n loc. Gurghiu, str. Glajarie, nr. 133</p>\n', '', 'Finished', '28'),
	(29, '7033/2015', '2480925264408', 'Romania', '28', 'Targu Mures', 'Ana', 'Raffi', 'Female', '1948-09-25', 155, 85, 770818998, 757818998, 'Dr. Matefi Judit', 265, '', '', '', '', 'Finished', '29'),
	(30, '88/2016', '1441130267391', 'Romania', '28', 'Adamus', 'Ioan', 'Nan', 'Male', '1944-11-30', 170, 110, 0, 747504654, 'Oltean Laura', 0, '', '', '<p>\n comuna Dimbu, sat Adamus, nr 78A</p>\n', '<p>\n Numele medicului de familie - inainte de casatorie- pacientul nu cunoaste noul nume.</p>\n', 'In progress', '30'),
	(32, '31/2016', '2550919264392', 'Romania', '28', 'Targu Mures', 'Elisabeta', 'Farkas', 'Female', '1955-09-19', 156, 67, 745507159, 745507159, 'Szakaly Marta Eszter', 265, '', '', '<p>\n Aleea vrancea, 10/8</p>\n', '<p>\n <span font-family:="" line-height:="">Str. Principală Nr. 433, gornesti</span></p>\n', 'Finished', '30'),
	(33, '76/2016', '1460820267408', 'Romania', '28', 'Bobohalma', 'Ioan', 'Popa', 'Male', '1946-08-20', 165, 103, 265430063, 0, 'Kis Marinela', 265450011, 'Str. Principală nr. 10/A, Adămuş, Județul Mureș', '', '<p>\n bobohalma, nr 8A</p>\n', '<div background-color:="" font-family:="" font-size:="" line-height:="" margin:="" span="">\n 0265-45.00.11,<o:p></o:p></div>\n<div background-color:="" font-family:="" font-size:="" line-height:="" margin:="" span="">\n 0741-671.927</div>\n', 'Finished', '30'),
	(34, '32/2016', '1420401264378', 'Romania', '28', 'Targu Mures ', 'Adrian ', 'Dezso', 'Male', '1942-04-01', 168, 95, 365429551, 365429551, 'Dr. Fejer Dana', 0, '', '', '<p>\n Jud: Mures; Loc: Targu Mures; Str. Parangului; Nr.54/39</p>\n', '<p>\n Dr. Fejer Dana- Loc: Targu Mures; Dambu Pietros</p>\n', 'Finished', '29'),
	(35, '89/2016', '1410812264364', 'Romania', '28', 'Corunca', 'Vasile', 'Petrina', 'Male', '1941-08-12', 175, 80, 749277111, 749277112, 'Dr. Sonia Valentina ', 744477644, '', '', '<p>\n Jud: Mures; Loc: Corunca; Nr: 427</p>\n', '<p>\n Dr. Sonia Valentina-Centru Medical Sonea Sancrai.</p>\n', 'Finished', '29'),
	(36, '50/2016', '1550314321395', 'Romania', '34', 'Copsa Mica', 'Gheorghe', 'Prostean', 'Male', '1955-03-14', 170, 85, 758551475, 742804020, 'Dr. PENESCU OCTAVIA', 0, '', '', '<p>\n Jud: Sibiu; Localitatea Copsa Mica ; Str. Car 1 Dec 15/6;</p>\n', '<p>\n Dr. Penescu Octavia; Jud: Sibiu; Loc: Copsa Mica;</p>\n', 'Finished', '29'),
	(37, '137', '2470502264369', 'Romania', '28', 'Targu Mures', 'Maria', 'Gavrila', 'Female', '1947-05-02', 165, 65, 0, 0, '', 0, '', '', '', '', 'Finished', '31'),
	(38, '130/2016', '1560501264362', 'Romania', '28', 'Ungheni', 'Ioan-Floriner', 'Covrig', 'Male', '1956-05-01', 172, 72, 742846079, 743540350, 'Nagy (Suteu) Elena', 265328161, 'UNGHENI, str.Principală, nr.105', '', '<p>\n Loc. Ungheni, Nr. 95, Judet Mures</p>\n', '', 'Finished', '51'),
	(39, '79/2016', '1580806264371', 'Romania', '28', 'Targu Mures', 'Iosif', 'Iuga', 'Male', '1958-08-06', 171, 81, 746610391, 0, 'Pop Lupu Maria', 265265024, 'Târgu Mureş, Bulevardul 1 Decembrie 1918 nr. 28 B', '', '<p>\n strada Sighisoarei 11/9</p>\n', '', 'Finished', '30'),
	(40, '102/2016', '2390324191527', 'Romania', '21', 'Miercurea Ciuc', 'AGNETA', 'FEKETE', 'Female', '1939-03-24', 162, 75, 266323853, 266323853, 'BALASI MAGDOLNA', 266312218, 'Strada Petőfi Sándor 14, Miercurea Ciuc 530210', '', '<p>\n &lt;span arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 13px;=&quot;&quot; line-height:=&quot;&quot; 16.12px;&quot;=&quot;&quot;&gt;Strada Culmei, nr. 17, ap. 19, Miercurea Ciuc, Harghita - locuieste cu fiica - nr. de tel. fix</p>\n', '', 'Finished', '49'),
	(41, '133/2016', '1420912192466', 'Romania', '28', 'Eremieni', 'FRANCISC', 'NAGY-GYORGY', 'Male', '1942-09-12', 175, 75, 265345420, 746649484, 'POP VIORICA', 265576007, 'str.Teilor nr.54, MIERCUREA NIRAJULUI, judet Mures', '', '<p>\n com. Magherani, sat Eremieni, nr. 59, jud. Mures.&nbsp;</p>\n<p>\n Nr. tel. alternativ pacient: 0746649484</p>\n', '', 'Finished', '49'),
	(42, '174/2016', '2590703190345', 'Romania', '21', 'Cristuru-Secuiesc', 'Ilona', 'Benko', 'Female', '1959-07-03', 154, 64, 746959744, 742492946, 'DR. FARKAS RADULY SANDOR', 266243555, 'Cristuru Secuiesc, Str. Timafalvi, Nr. 10', '', '<p>\n Loc. Cristuru Secuiesc. &nbsp;Str. Kossuth Lajos, bl.A4 et.3 ap.14</p>\n', '', 'Finished', '51'),
	(44, '118/2016', '2710814321395', 'Romania', '34', 'Motis', 'Angela Victoria', 'Rus', 'Female', '1971-08-14', 159, 137, 763981576, 760841159, 'Pintea Zmeurica', 740246788, 'loc.Valea Viilor', '', '<p>\n loc.Motis, str. Teches nr.47</p>\n', '', 'Finished', '35'),
	(45, '7/2016', '1461213264367', 'Romania', '28', 'Targu Mures', 'ALEXANDRU ', 'ERDOS', 'Male', '1946-12-13', 176, 103, 365440044, 758642428, 'Dr. Dragan Eniko', 265212971, 'Pta Marasesti Nr.21 ', '', '', '<p>\n Dr. Dragan Eniko- Dora Medical ; P-ta Marasesti Nr.21; Tel: 0265212971; tel: 0733553970</p>\n', 'Finished', '29'),
	(46, '178/2016', '2380720060770', 'Romania', '5', 'Budesti-Fanate', 'Ileana', 'Budelecan', 'Female', '1938-07-20', 160, 69, 0, 752191047, 'Natalia Juncu', 0, 'STR. GHEORGHE MARINESCU nr. 50 , ', '0265211292', '', '', 'In progress', '30'),
	(47, '113/2016', '2500102131265', 'Romania', '3', 'Cotunba', 'Virginia', 'Stoica', 'Female', '1950-01-02', 167, 55, 743787577, 0, 'Neacsu Ciprian', 723522817, 'Agas, județul Bacau sat Cotumba nr.293', '', '', '', 'In progress', '30'),
	(48, '219/2016', '1570308261498', 'Romania', '28', 'Reghin', 'Laszlo', 'Zsigmond', 'Male', '1957-03-08', 185, 88, 2147483647, 741075059, 'Ghidro Iren', 0, '', '', '<p>\n Loc: Reghin, str: Garii, Nr.2/24</p>\n', '', 'In progress', '43'),
	(49, '148/2016', '1390308270593', 'Romania', '29', 'PIATRA NEAMT', 'CONSTANTIN ', 'CIURCAN', 'Male', '1939-03-08', 177, 85, 745532657, 743768002, 'Dr. Istin Dorin  ', 723597979, '', '', '', '<p>\n Dr. Istin Dorin-loc: Piatra Neamt.&nbsp;</p>\n', 'Finished', '41'),
	(50, '171/2016', '2310523260011', 'Romania', '28', 'Sarmasu', 'Ana', 'Uilecan', 'Female', '1931-05-23', 170, 80, 734397601, 745640262, '', 0, '', '', '<p>\n Strada 30 Decembrie, nr. 7, com. Sarmasu</p>\n', '', 'In progress', '31'),
	(51, '170/2016', '1540217263517', 'Romania', '28', 'SIGHISOARA', 'MARCEL ROBERT', 'DIAC', 'Male', '1954-02-17', 183, 82, 745665578, 0, '', 0, '', '', '', '', 'In progress', '32'),
	(52, '226/2016', '1461025267390', 'Romania', '', '', 'Ioan ', 'Szabo ', 'Male', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'In progress', '29'),
	(53, '204/2016', '2530309261465', '', '', '', 'VOICA', 'RACOTA', 'Female', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'In progress', '29'),
	(54, '208/2016', '1420927191324', 'Romania', '21', 'Miercurea Ciuc', 'Francisc ', 'Csorvasi', 'Male', '1942-09-27', 175, 80, 748693996, 743341526, 'Bota Sandor', 266312218, 'Miercurea Ciuc, Str. Petofi Sandor, Nr.14', '', '<p>\n Miercurea Ciuc, str. Revolutiei din Decembrie, nr. 9, sc B, ap 9.</p>\n', '<p>\n Apartinator - fiica : Csilla Csorvasi</p>\n', 'Finished', '49'),
	(55, '39/2016', '1491008264426', 'Romania', '28', 'Targu-Mures', 'Dumitru', 'Sipos', 'Male', '1949-10-08', 179, 99, 726228488, 743057371, 'Mathe Eva-Cornelia', 0, 'Tg-Mures, str.Stramba', '', '<p>\n str.Bld 1 Decembrie 1918 Nr.41/2</p>\n', '', 'In progress', '35'),
	(56, '150/2016', '2580910264376', 'Romania', '28', 'Cipau', 'Maria', 'Daraban', 'Female', '1958-09-10', 156, 58, 755347020, 745391701, 'Mihaila Maria', 0, '', '', '<p>\n Loc.Cipau, str.Principala Nr.105</p>\n', '', 'In progress', '35'),
	(57, '188/2016', '2481230240024', 'Romania', '26', 'Baia Mare', 'Ileana', 'Motet', 'Female', '1948-12-30', 160, 80, 0, 747218370, '', 0, '', '', '', '', 'In progress', '41'),
	(58, '128/2016', '1380219264401', 'Romania', '28', 'Ceuasu de Campie', 'Bela', 'Nagy', 'Male', '1938-02-19', 170, 75, 0, 740773095, '', 0, '', '', '', '', 'In progress', '41');
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
  `mobile` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.user: ~29 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `login`, `password`, `user_name`, `user_type`, `email`, `mobile`) VALUES
	(1, 'admin', '120ca595e2c87f33c323efa93916b03a61fc5ed0c33be4b36a16df2b4819c979', 'Oltean Tiberiu', 'admin', 'tiberiu@cardio.ro', '75783257'),
	(25, 'susioana', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Ioana SUS', 'admin', 'susioana@yahoo.com', '740970553'),
	(26, 'user', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'User demo', 'user', 'email@email.ro', '34234'),
	(27, 'hadadilaci', '62d722ab8c74ecf66716d846937ae51c8daba30aa93f5203662daad14e4d4da0', 'Laszlo HADADI', 'admin', 'hadadilaci@yahoo.com', '742933819'),
	(28, 'demjenzoltan', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Zoltan DEMJEN', 'admin', 'demjenzoltan@yahoo.com', '747920213'),
	(29, 'cristina', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Cristina SOMKEREKI', 'admin', 'cristinasomkereki@yahoo.com', '742866376'),
	(30, 'iuliagrancea', '5559b1c5047b9d4c22836a8e0d5d1ee2233b0beffd1d1d99902c9fc86d50868d', 'Grancea Iulia', 'admin', 'iuliagrancea@yahoo.com', '742459977'),
	(31, 'nistor.dan', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Nistor Dan', 'user', 'dr.dan.nistor@gmail.com', '745758678'),
	(32, 'mitricciprian', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'mitric ', 'user', 'mitric1985@gmail.com', '748248958'),
	(33, 'rodiana.gusu', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Gusu Rodiana', 'user', 'rodiana_gusu@yahoo.com', '754360840'),
	(34, 'mihaela.florea', '2d405296808fb3f11f41d7fb9f81d02c671c8cd9c1f9b07f52ca9661d422eb35', 'Florea Mihaela', 'user', 'mihaelaflorea_med@yahoo.com', '745230870'),
	(35, 'kibedi.ildiko', 'a0556c5492700052c1a32d041cc22b65f623db391e282cb5953b995d03aba86b', 'kibedi ildiko', 'user', 'ss_ildi@yahoo.com', '741052921'),
	(36, 'orlandea.cristina', '58e7c471d5e6f3d07bd10dd42c7dfb4742501344d6d4e5bb3d2e3c4ee5d124e9', 'Orlandea Cristina', 'user', 'criss_orl@yahoo.com', '744987709'),
	(37, 'baghiu anca', 'd84230b6e5df7405d26a86756f4da2aadabb43b9b5b41d459feb2717f8a23ca0', 'baghiu anca', 'user', 'anca_hadarig@yahoo.com', '751395519'),
	(38, 'danila mihaela', '421922c2edbf8e4b2ce94d94373da4e72f4d4aabeeab880425a4a80a6313368b', 'danila mihaela', 'user', 'mihaeladanila_md@yahoo.com', '743767623'),
	(39, 'gabrieladamatar', '65a7ecf1faf2a833a3d912df833290851117bb9538647bce3ecf59f3e0fd128d', 'gabriela damatar', 'user', 'gabrieladamatar@yahoo.com', '742321401'),
	(40, 'madalina', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'cazan madalina', 'user', 'mada21_xyz@yahoo.com', '722343539'),
	(41, 'alexandra', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'calugar alexandra', 'user', 'ionescualexandra2006@yahoo.com', '771320575'),
	(42, 'oanac', 'eb4d3a2f58b047e5652f205503429ec573c363f8c6f187bb1c5252200803d685', 'COBOROSANU OANA', 'user', 'coborosanuoana@yahoo.com', '755917092'),
	(43, 'kantorkatalin', 'f4ee7453502d1eab493e7fbceb6c0a3a9adcb6efe690b8836de1a8afe49f48eb', 'kantor katalin', 'user', 'kantor_kati@yahoo.com', '743319458'),
	(44, 'mezosibalazs', '615144ed9ccb40da17b2c394aeca118c39a22ebb50909bf4121641120b559cb9', 'Mezosi Balazs', 'user', 'mezosibalazs@yahoo.com', '753365639'),
	(45, 'csorjaadel', '68b4d8699b1ecb2d5c38074aa6ac7bf2e9f495c438a70f40aa71411b80c8fd07', 'Csorja Adel Andrea', 'user', 'csorjaa@gmail.com', '741634020'),
	(46, 'zierhella', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Zier Hella', 'user', 'hella_zier@yahoo.com', '743375646'),
	(47, 'sorin.bernea', '37ccecd4f4ef2817b6c9de844f160ab0d875fa71d070d45f72ae962010469b7a', 'Bernea Sorin', 'user', 'sorin.bernea@yahoo.com', '749079187'),
	(48, 'adorjan.istvan', '06d2134080314a0cf614d4d8127c9a0873ac3838f51c3202ebf03904b8fb8fd2', 'Adorjan Istvan', 'user', 'istvankaa@yahoo.com', '755331542'),
	(49, 'simon.valentin', '90d5c9e20b56e4c5f0d628ee44b8d4be9ffc0304dbdc62609b244674ca7d5572', 'Simon Valentin', 'admin', 'valentin_s_ro@yahoo.com', '742837571'),
	(50, 'marcelrusu', 'ddebd9425c86cefcba38649dde7f80b13085dbd5fb103feffd7e5a0958f6e538', 'Marcel Rusu', 'user', 'marcel_russu@yahoo.com', '758083953'),
	(51, 'oana.dascal', '8f25d57c44791b0c4a8e475f529727f2ebe90e7c9dbd83a7af6d9351cec54e59', 'Dascal Oana', 'admin', 'oanadascal90@gmail.com', '748121453'),
	(52, 'ioantilea', 'a36f829ce750c00497284627929a30b3542734fb71a364a32a19a2b429ebf314', 'Conf. Dr. Ioan TILEA', 'user', 'ioantilea2015@gmail.com', '0748164585');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
