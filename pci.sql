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


-- Dumping structure for table admin_pci_registry.assignment
CREATE TABLE IF NOT EXISTS `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `cnp` varchar(13) NOT NULL,
  `pci_date_time` datetime NOT NULL,
  `respondent` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.assignment: ~18 rows (approximately)
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` (`id`, `date`, `patient_name`, `cnp`, `pci_date_time`, `respondent`, `notes`, `status`) VALUES
	(2, '2016-01-08', 'Gavrila Maria', '158080626471', '2016-01-10 15:40:00', '31', '<p>\n Sus Ioana</p>\n', 'Finished'),
	(6, '2016-01-20', 'Botian Tudor', '1630603261456', '2016-01-19 10:20:00', '46', '<p>\n Sus Ioana</p>\n', 'In progress'),
	(7, '2016-01-18', 'Tabacaru Tunde', '2570308264401', '2016-01-18 00:00:00', '28', '', 'New'),
	(8, '2016-01-22', 'Marcus Veturia', '2460221322255', '2016-01-21 08:20:00', '35', '<p>\n Cristina Somkereki</p>\n', 'Finished'),
	(9, '2016-01-22', 'Uirca Gheorghe', '1530421261466', '2016-01-21 13:20:00', '30', '<p>\n Cristina Somkereki</p>\n', 'New'),
	(10, '2016-01-22', 'Panczi Iosif', '1530101264443', '2016-01-21 15:00:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(13, '2016-01-22', 'Baltador Mihai-Dumitru ', '1500104323926', '2016-01-21 20:15:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(14, '2016-01-05', 'Papai Carol', '1490727293790', '2016-01-05 21:10:00', '30', '<p>\n Grancea Iulia</p>\n', 'Finished'),
	(15, '2016-01-24', 'Ilyes Rozalia', '2390716260015', '2016-01-16 00:12:00', '32', '<p>\n Cristina Somkereki</p>\n', 'Finished'),
	(16, '2016-01-11', 'Fekete Agneta', '2390324191527', '2016-01-11 11:00:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(17, '2016-01-24', 'Kincses Elemer ', '1460309264408', '2016-01-18 09:50:00', '29', '<p>\n Cristina Somkereki</p>\n', 'Finished'),
	(18, '2016-01-11', 'NAGY-GYORGY FRANCISC', '1420912192466', '2016-01-11 12:20:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(19, '2016-01-14', 'Csorvasi Francisc', '1420927191324', '2016-01-14 12:45:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(20, '2016-01-17', 'Portius Florea', '1530321060795', '2016-01-17 17:07:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(21, '2016-01-17', 'Luca Chirila', '1540707261452', '2016-01-17 18:00:00', '49', '<p>\n Siomn Valentin</p>\n', 'Finished'),
	(22, '2016-01-17', 'Kutasi Elisabeta', '2540908264388', '2016-01-17 20:00:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(23, '2016-01-18', 'Pop Vasile', '1510601261458', '2016-01-18 17:44:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished'),
	(24, '2016-01-19', 'Burchea Nicolae', '1481204323911', '2016-01-19 18:10:00', '49', '<p>\n Simon Valentin</p>\n', 'Finished');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;


-- Dumping structure for table admin_pci_registry.attending_cardiologist
CREATE TABLE IF NOT EXISTS `attending_cardiologist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardiologist_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.attending_cardiologist: ~22 rows (approximately)
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
	(21, 'dr. Roxana RUDZIK'),
	(22, 'CCV');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='PCI Follow up patient';

-- Dumping data for table admin_pci_registry.follow_up: ~6 rows (approximately)
/*!40000 ALTER TABLE `follow_up` DISABLE KEYS */;
INSERT INTO `follow_up` (`id`, `patient_id`, `date`, `survival_status`, `date_of_death`, `death_cause`, `anginal_status`, `dyspnoea`, `date_readmission`, `mi`, `mi_date`, `stroke`, `stroke_date`, `pci`, `pci_date`, `coronary_bypass`, `coronary_bypass_date`, `cardiac_rehabilitation`, `aspirin`, `other_antiplatelet`, `anticoagulants`, `beta_blockers`, `ace_inhibitors`, `angiotensin`, `diabetic_control`, `statins`, `non_statin`, `notes`, `status`, `signature`) VALUES
	(1, 3, '2015-12-22', 'Alive', '2015-12-22', 'Non-Cardiovascular', 'CCS II', 'NYHA IV', '2015-12-14', 'No', '2015-12-23', 'No', '2015-12-23', 'Yes', '2015-12-14', '', '2015-12-21', 'Yes', 'Yes', '2', 'Other', 'Unknown', 'Yes', 'Yes', 'Insulin', 'Yes', 'Fibrates', '<p>\n ddfdsf</p>\n', '', ''),
	(2, 3, '2015-12-22', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA I', '2015-12-21', 'No', '2015-12-22', 'Unknown', '2015-12-22', 'No', '2015-12-22', 'No', '2015-12-22', 'No', 'No', 'Ticagrelor', 'Oral throbin inhibitors', 'Yes', 'No', 'No', 'Diet only', 'No', 'Fibrates', '<p>\r\n fdsfsd</p>\r\n', '', ''),
	(6, 6, '2015-12-29', 'Alive', '0000-00-00', '', 'CCS I', 'NYHA I', '2015-12-29', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'None', 'No', 'None', '', 'Finished', ''),
	(7, 12, '2015-12-29', 'Alive', '0000-00-00', 'Non-Cardiovascular', 'CCS I', 'NYHA III', '2015-12-29', 'Yes', '2015-12-29', '', '2015-12-29', 'Yes', '2015-12-29', 'Unknown', '2015-12-29', 'No', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Yes', 'No', 'Insulin and oral agent', 'No', 'Ezetimibe', '', 'Finished', ''),
	(8, 12, '2015-12-01', 'Alive', '0000-00-00', '', '', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', 'Ezetimibe', '', 'Finished', ''),
	(9, 13, '2016-02-02', 'Alive', '0000-00-00', '', 'CCS 0', 'NYHA II', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', '0000-00-00', 'No', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', '', 'Finished', '');
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
  `adenosine` varchar(150) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1 COMMENT='PCI Intervetion patient';

-- Dumping data for table admin_pci_registry.intervention: ~76 rows (approximately)
/*!40000 ALTER TABLE `intervention` DISABLE KEYS */;
INSERT INTO `intervention` (`intrevention_id`, `patient_id`, `user_id`, `edit_user`, `edit_time`, `date_time_arival`, `date_time_percutaneous`, `ID_procedure`, `attending_cardiologist`, `interventional_cardiologist`, `transferred`, `heart_rate`, `BP`, `PAST_HISTORY`, `history_mi`, `history_chf`, `history_stroke`, `history_vascular`, `history_renal`, `prev_pci`, `cabg`, `history_valvular_h`, `RISK_STATUS`, `smoking_status`, `diabets_mellitus`, `history_hypertension`, `history_hypercholesterol`, `ADMISION_DETAILS`, `indication_pci`, `symptom_acs`, `arrival_acs`, `elevated_biochemical`, `cardiogenic_pci`, `hemodynamic`, `scr`, `INVESTIGATION_CORONARY`, `lv_opt`, `ANGIOGRAM_RESULT`, `dominance`, `right_coronary`, `mrca`, `drca`, `rpda`, `posteo_segment`, `lm_artery`, `plad`, `mlad`, `dlad`, `1_diagonal`, `2_diagonal`, `pcirc`, `intart`, `om`, `som`, `circ`, `obtuse_segments`, `lpda`, `no_vessels`, `left_main_d`, `main_stem`, `PCI`, `segment_no`, `re_stenosis`, `stent_thrombosis`, `bifurcation`, `bifurcation_yes`, `cto`, `tmi_before`, `tmi_after`, `stenosis_a_pci`, `stent`, `no_stents`, `direct_stenting`, `stent_type`, `bare_metal`, `drug_eluting`, `drug_eluting_type`, `stent_graft`, `bioabsorbable`, `stent_size`, `length`, `PCI_other`, `percutaneous_arterial`, `diagnostic_device`, `therapeutic_device`, `procedural_complications`, `coronary_artery_cabg`, `vascular_closure`, `perc_arterial_complications`, `fluo_time`, `AK`, `LABORATORY`, `creatinine`, `hemoglobin`, `leucocyte`, `thrombocyte`, `MEDICATION_PCI`, `aspirin`, `other_antiplatele`, `anticoagulant`, `glycoprotein`, `heparin`, `adenosine`, `OUTCOME`, `elevated`, `myocardial_post`, `bleeding_hospital`, `stroke`, `cin`, `renal_failure`, `survival_status`, `date_discharge`, `discharge_destination`, `MEDICATION_DISCHARGE`, `aspirin2`, `other_antiplatele2`, `anticoagulant2`, `beta-blockers`, `ace_inhibitors`, `angiotensin_repector`, `diabetic_control`, `statins`, `non_statin`, `heparin2`, `INFO`, `notes`, `status`, `signature`) VALUES
	(60, 12, 0, 0, '0000-00-00 00:00:00', '2015-12-22 00:00:00', '2015-12-29 00:00:00', '313123', '2', '1', 'Yes', 31, '13', '', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', '', 'Never', 'Diabetic (dietary control)', 'Yes', 'No', '', 'STEMI / rescue PCI', '2015-12-29 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'Yes (IABP/CP bypass)', '', '', 31, '', 'right', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '2', 'No', 'Yes', '', 'segment 2,segment 3,segment 5,segment 6,segment 7,segment 10', 'No', '', 'No', '1-0-0', '', 'TIMI 2', 'TIMI 1', '23', 'No', 3, 'Yes', 'Drug-eluting,Stent-graft,Bioabsorbable VS', '2', '1', 'Orsiro,Onyx', '1', '2', '31', '13', '', 'Radial', 'OCT,Presure wire,Other', 'Balloon postdilatation,Distal Protection Device', 'No Peri-Procedural complications,Coronary perforation,No flow/slow flow phenomenon', 'Emergency', 'No', 'False aneurysm,Haemorrhage requiring surgery or transfusion,Arterial occlusion/dissection requiring interventions', '00:00:23', 23, '', 23, 323, 23, 23, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Unknown', 'Unfractionated heparin', '', '', 'No', 'Yes', 'Retroperitoneal bleed (major)', 'Yes', '', 'No', 'Dead', '2015-12-29', 'Covalescent/Rehabilitation center', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'Ezetimibe', 'Unfractionated heparin', '', '', 'Finished', ''),
	(61, 13, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:26:00', '2015-12-29 16:00:00', '4012y2015', '1', '1', 'No', 55, '120', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'Yes', '', 'STEMI / primary PCI', '2015-12-29 12:15:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', '', 40, '', 'right', '', '50 - 74% (intermediate stenosis)', '100% (complete occlusion)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2,segment 3', 'No', '', 'Yes', '1-1-0', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Promus', '', '', '2.75, 3.0, 3.0', '32, 28, 20', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:02', 947, '', 1.2, 14.5, 8500, 225500, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', '', 'No', 'Alive', '2015-12-31', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', ''),
	(63, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	(64, 16, 0, 0, '0000-00-00 00:00:00', '2016-01-05 19:24:00', '2016-01-05 22:13:00', '15/2016', '15', '1', 'Yes', 80, '100/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2016-01-05 09:30:00', '2016-01-05 20:30:00', 'Yes', 'No', 'No', '', '', 45, '', 'right', '', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '3', 'No', '', '', 'segment 2,segment 3', 'No', '', 'No', '', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '30', '', 'Femoral', 'None', 'Balloon predilatation,Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:43', 743, '', 0.72, 13.4, 11230, 208000, '', 'Yes', 'Clopidogrel', '', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '29'),
	(65, 17, 0, 0, '0000-00-00 00:00:00', '2015-12-29 00:00:00', '2016-01-05 13:30:00', '11/2016', '6', '1', 'No', 70, '140', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'Yes', 'No', '', 'segment 5,segment 6', 'No', 'No', 'Yes', '1-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '26mm', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:17:08', 2716, '', 1.33, 11, 17.01, 159, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(67, 19, 0, 0, '0000-00-00 00:00:00', '2015-12-30 02:50:00', '2015-12-30 02:55:00', '4018Y2015', '3', '1', 'No', 70, '114/84', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2015-12-29 20:00:00', '0000-00-00 00:00:00', 'Yes', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6', 'No', '', 'Yes', '0-1-0', 'No', 'TIMI 1', 'TIMI 2', '20%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '4.0', '28', '', 'Femoral', 'None', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:08:14', 1227, '', 0.86, 15.1, 11300, 302000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(68, 19, 0, 0, '0000-00-00 00:00:00', '2015-12-30 02:50:00', '2016-01-05 12:00:00', '9Y2016', '3', '1', 'No', 70, '115/75', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Post STEMI (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '1', 'No', 'No', '', 'segment 6,segment 12', 'No', '', 'Yes', '0-1-0', 'No', 'TIMI 2', 'TIMI 3', '0', 'No', 0, '', '', '', '', '', '', '', '', '', '', 'Femoral', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:59', 900, '', 0.86, 15.1, 11300, 302000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(69, 20, 0, 0, '0000-00-00 00:00:00', '2016-01-05 10:00:00', '2016-01-05 14:45:00', '12Y2016', '1', '1', 'No', 80, '120/78', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '75 - 90% (severe stenosis)', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '3', 'No', 'No', '', 'segment 6', 'No', 'No', 'No', '', 'Unknown', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '38', '', 'Combined (Femoral + radial)', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:16', 3063, '', 0.94, 16.6, 6910, 223000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(70, 21, 0, 0, '0000-00-00 00:00:00', '2016-01-05 21:04:00', '2016-01-05 21:10:00', '14Y2016', '2', '1', 'Yes', 76, '121/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (insulin)', 'Yes', 'No', '', 'STEMI / primary PCI', '2016-01-05 17:00:00', '2016-01-05 20:30:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'codominance', '100% (complete occlusion)', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '1', 'No', '', '', 'segment 1,segment 2,segment 3', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 2', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Orsiro,Resolute', '', '', '3.0', '52', '', 'Femoral', 'None', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:10:05', 1772, '', 0.9, 17, 10200, 161000, '', 'Yes', 'No', 'No', 'Eptifibatide', 'Unfractionated heparin', 'da', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-12', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Insulin', 'Yes', 'None', 'No', '', '<p>\n Fara tulburari de cinetica VD la internare sau dupa.</p>\n', 'Finished', '30'),
	(71, 15, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:11:00', '2015-12-29 17:05:00', '4015y2015', '10', '1', 'No', 80, '140/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'No', 'Yes', '', 'NSTACS (immediate PCI,< 2h)', '2015-12-28 02:00:00', '2015-12-29 09:13:00', 'Yes', 'No', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 0', 'TIMI 3', '20', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '30', '', 'Radial', 'None', 'Balloon predilatation', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:07:18', 728, '', 0.87, 13.8, 10700, 296000, '', 'No', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(72, 15, 0, 0, '0000-00-00 00:00:00', '2015-12-29 15:11:00', '2016-01-04 09:30:00', '1y2016', '10', '1', 'No', 70, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'No', 'Yes', '', 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '', '', '', '', '', '', '<25% (luminal irregularities)', '', '', '', '', '1', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 3', 'TIMI 3', '0', 'No', 0, 'No', '', '', '', '', '', '', '', '', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:02:33', 281, '', 0.87, 13.8, 10700, 296000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(74, 22, 0, 0, '0000-00-00 00:00:00', '2015-12-30 10:09:00', '2016-01-04 12:35:00', '4y2016', '17', '4', 'No', 74, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'No', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '50 - 74% (intermediate stenosis)', '', '', '75 - 90% (severe stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '2', 'No', 'No', '', 'segment 6', 'No', 'No', 'No', 'Unknown', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:09', 1047, '', 0.67, 9.9, 6980, 300000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-06', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n <strong>ANGIOPLASTIE CU IMPLANTARE DE STENT FARMACOLOGIC ACTIV ADA 2 IN ANTECEDENTE (2011) - STENT PERMEABIL</strong></p>\n', 'Finished', '28'),
	(75, 23, 0, 0, '0000-00-00 00:00:00', '2016-01-04 09:27:00', '2016-01-05 12:30:00', '10y2016', '18', '1', 'No', 80, '140/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Promus', '', '', '4', '32', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:49', 1339, '', 1.19, 15.7, 10600, 262000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '28'),
	(76, 30, 0, 0, '0000-00-00 00:00:00', '2016-01-06 13:42:00', '2016-01-06 13:45:00', '23Y2016', '3', '4', 'No', 80, '120/89', '', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-06 09:30:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 35, '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '3', 'No', 'No', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.75', '22', '', 'Femoral', '', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:02', 1879, '', 0.96, 12.17, 9490, 221000, '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Unknown', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(77, 32, 0, 0, '0000-00-00 00:00:00', '2016-01-05 09:30:00', '2016-01-06 10:40:00', '18Y2016', '1', '1', 'No', 67, '118/67', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '75 - 90% (severe stenosis)', '25 - 49% (mild stenosis)', '', '', '', '100% (complete occlusion)', '', '', '', '100% (complete occlusion)', '', '', '2', 'No', 'No', '', 'segment 6,segment 11,segment 13', 'No', 'No', 'Yes', '1-1-0', 'Yes', 'TIMI 3', 'TIMI 3', '0%', 'No', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '26', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:09:44', 1879, '', 0.69, 13, 5460, 225000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'LMWH', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(78, 33, 0, 0, '0000-00-00 00:00:00', '2016-01-06 10:18:00', '2016-01-06 18:00:00', '28Y2016', '1', '1', 'No', 85, '180/90', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '90 - 99% (critical stenosis)', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '3.5', '12', '', 'Radial', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:25', 3378, '', 0.8, 14.4, 6120, 232000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(79, 29, 0, 0, '0000-00-00 00:00:00', '2015-12-11 04:33:00', '2016-01-06 16:30:00', '26/2016', '9', '1', 'No', 64, '160/80', '', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (insulin)', 'Yes', 'No', '', 'Post unstable angina (stabilised)', '2015-12-30 03:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '90 - 99% (critical stenosis)', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '', '', '90 - 99% (critical stenosis)', '', '50 - 74% (intermediate stenosis)', '', '3', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:46', 1705, '', 1.84, 10.4, 11200, 389000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'Unknown', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Insulin', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(80, 34, 0, 0, '0000-00-00 00:00:00', '2016-01-04 00:00:00', '2016-01-06 10:00:00', '17/2016', '7', '1', 'No', 60, '140', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '<25% (luminal irregularities)', '', '', '', '', '', '90 - 99% (critical stenosis)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '2', 'No', '', '', 'segment 6,segment 10', 'No', 'No', 'Yes', '0-1-1', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '34', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:21:19', 4512, '', 0.81, 14, 6540, 82000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(81, 35, 0, 0, '0000-00-00 00:00:00', '2016-01-06 14:47:00', '2016-01-07 15:50:00', '30y2016', '7', '5', 'No', 50, '130', '', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 65, '', 'right', '', '', '', '100% (complete occlusion)', '', '', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '3', 'No', '', '', 'segment 6,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'Yes', 'Drug-eluting', '', '2', 'Promus,Resolute', '', '', '3.5', '28', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:25', 1486, '', 1, 14.6, 6410, 182000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(82, 36, 0, 0, '0000-00-00 00:00:00', '2016-01-05 11:45:00', '2016-01-07 09:00:00', '30/2016', '17', '4', 'No', 60, '125/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'Unknown', 'Unknown', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '4.0', '22', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:25', 1486, '', 0.92, 13.8, 6120, 210000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-11', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(84, 17, 0, 0, '0000-00-00 00:00:00', '2015-12-29 19:44:00', '2015-12-29 19:53:00', '4016y2015', '6', '1', 'No', 70, '120/70', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'Yes', 'No', '', 'NSTACS (immediate PCI,< 2h)', '2015-12-29 13:34:00', '0000-00-00 00:00:00', 'Yes', 'Yes', 'No', 'Yes ', '', 50, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '2', 'Yes', '', '', 'segment 11', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '2.5', '15', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:54', 1614, '', 1.33, 11, 17000, 159000, '', 'No', 'No', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-08', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n TA de 120/70 mmHg la internare a fost masurata in conditii de administrare de adrenalina in PEV.</p>\n', 'Finished', '29'),
	(85, 37, 0, 0, '0000-00-00 00:00:00', '2016-01-08 03:07:00', '2016-01-19 00:00:00', '57Y2016', '12', '1', 'No', 105, '97/72', '', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Newly diagnosed diabetic', 'Yes', 'Yes', '', 'NSTACS (immediate PCI,< 2h)', '2016-01-06 12:00:00', '2016-01-08 12:00:00', 'Yes', 'Yes', 'Yes (IABP/CP bypass)', 'No', '', 35, '', 'codominance', '100% (complete occlusion)', '', '', '', '', '50 - 74% (intermediate stenosis)', '90 - 99% (critical stenosis)', '50 - 74% (intermediate stenosis)', '<25% (luminal irregularities)', '', '', '50 - 74% (intermediate stenosis)', '', '75 - 90% (severe stenosis)', '', '25 - 49% (mild stenosis)', '', '', '3', 'Yes', 'No', '', 'segment 5,segment 6,segment 11', 'No', 'No', 'Yes', '1-1-1', 'No', 'TIMI 2', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.5', '22', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:27:53', 3939, '', 1.57, 11.4, 9000, 457000, '', 'No', 'Clopidogrel', 'No', 'No', 'LMWH', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Dead', '2016-01-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Finished', '31'),
	(86, 38, 0, 0, '0000-00-00 00:00:00', '2016-01-08 13:10:00', '2016-01-11 00:00:00', '61Y2016', '3', '3', 'No', 60, '107/60', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'No', 'Yes', '', 'Post unstable angina (stabilised)', '2016-01-08 08:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '', '', '', '', '25 - 49% (mild stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '3', 'No', 'No', '', 'segment 5,segment 6,segment 11', 'No', '', 'Yes', '0-1-1', 'No', 'Unknown', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '3.5', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:13:30', 3500, '', 0.76, 13.5, 6720, 245000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '51'),
	(87, 39, 0, 0, '0000-00-00 00:00:00', '2016-01-06 11:15:00', '2016-01-08 14:15:00', '53Y2016', '1', '1', 'No', 71, '154/99', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '', '', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '1', 'No', '', '', 'segment 3,segment 4,segment 16', 'Yes', 'No', 'Yes', '0-1-1', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.0', '15', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:20', 1138, '', 0.87, 13.9, 7010, 215000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(88, 40, 0, 0, '0000-00-00 00:00:00', '2016-01-07 10:00:00', '2016-01-11 11:00:00', '62Y2016', '4', '5', 'No', 64, '148/100', '', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (insulin)', 'Yes', 'No', '', 'Post STEMI (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '2', 'No', 'No', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '2.75', '48', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', '', 'No', 'None', '00:08:58', 2944, '', 0.83, 11, 6270, 247000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'Insulin', 'Yes', 'None', '', '', '<p>\n Pericardita lichidiana mica-medie prezenta la internare (verosimil sindr. Dressler) stationara pe parcurs, cu indicatie de monitorizare la medicul curant cardiolog.</p>\n', 'Finished', '49'),
	(89, 41, 0, 0, '0000-00-00 00:00:00', '2016-01-09 15:00:00', '2016-01-11 12:20:00', '63Y2016', '2', '1', 'No', 72, '187/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2016-01-09 08:00:00', '2016-01-09 14:45:00', 'Yes', 'No', 'No', 'No', '', 50, '', 'left', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '', '2', 'No', '', '', 'segment 11', 'No', '', 'Yes', '1-0-0', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '22', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:17', 1664, '', 1.16, 15, 11500, 227000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-15', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', '', 'Yes', 'None', 'No', '', '', 'Finished', '49'),
	(90, 42, 0, 0, '0000-00-00 00:00:00', '2016-01-12 08:00:00', '2016-01-12 16:40:00', '84Y2016', '4', '1', 'No', 66, '170/75', '', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2015-10-12 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '4.0', '15', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:54', 914, '', 7.92, 11.1, 5900, 13700, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(91, 44, 0, 0, '0000-00-00 00:00:00', '2016-01-08 08:28:00', '2016-01-11 15:10:00', '68y2016', '17', '4', 'No', 65, '120/80', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '26', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:32', 1827, '', 1.31, 11.3, 11240, 338000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '35'),
	(93, 45, 0, 0, '0000-00-00 00:00:00', '2016-01-02 11:41:00', '2016-01-12 11:41:00', '', '6', '3', 'No', 87, '140/75', '', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '3', 'No', '', '', 'segment 6,segment 7', 'No', 'No', 'Yes', '0-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '22', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:07', 2979, '', 0.93, 13.1, 8700, 169000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '29'),
	(94, 16, 0, 0, '0000-00-00 00:00:00', '2016-01-05 00:21:36', '2016-01-12 18:00:00', '86Y2016', '15', '1', 'No', 70, '120/70', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '2016-01-05 20:30:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '2', 'No', '', '', 'segment 13', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '', 'Resolute', '', '', '2.25', '22', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:01', 541, '', 0.72, 13.4, 11230, 208000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '29'),
	(95, 46, 0, 0, '0000-00-00 00:00:00', '2016-01-12 00:00:00', '2016-01-13 14:00:00', '95Y2016', '4', '3', 'No', 65, '135/75', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', '', '', 60, '', 'right', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '15', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:46', 1095, '', 0.82, 11.1, 4950, 212000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-18', '', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(96, 47, 0, 0, '0000-00-00 00:00:00', '2016-01-07 14:10:00', '2016-01-12 18:40:00', '102Y2016', '22', '4', 'No', 114, '205/185', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 2', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.75', '22', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:01', 836, '', 1.28, 13.4, 9000, 254000, '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', '', '2016-01-20', 'Home', '', 'Yes', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '30'),
	(97, 48, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 14:40:00', '96Y2016', '14', '3', '', 73, '123/88', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'No', 'No', '', 'STEMI / primary PCI', '2016-01-13 12:00:00', '2016-01-13 13:39:00', 'No', 'No', 'No', 'No', '', 45, '', 'left', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 3', 'No', 'No', 'No', '', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '3.0', '16', '', 'Radial', 'None', 'Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:12:32', 2407, '', 1.25, 13.2, 9300, 196000, '', 'Yes', 'Clopidogrel', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', '', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '43'),
	(98, 49, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 15:35:00', '97Y2016', '7', '3', 'No', 75, '127/95', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'No', '', '00:14:03', 3457, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '41'),
	(99, 50, 0, 0, '0000-00-00 00:00:00', '2016-01-11 20:51:00', '2016-01-15 10:00:00', '127Y2016', '12', '4', 'No', 87, '115/60', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Post STEMI (stabilised)', '2016-01-10 18:00:00', '2016-01-11 18:52:00', 'Yes', 'No', 'No', 'No', '', 25, '', 'Unknown', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 0, 'No', 'Bare Metal', '1', '', '', '', '', '3.0', '18', '', 'Femoral', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:05', 1343, '', 0.98, 14.2, 10500, 156000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'LMWH', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-19', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '31'),
	(100, 51, 0, 0, '0000-00-00 00:00:00', '2016-01-11 19:40:00', '2016-01-15 13:50:00', '129y2016', '15', '4', 'No', 52, '110/60', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', '', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2015-12-10 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'codominance', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '25 - 49% (mild stenosis)', '90 - 99% (critical stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '2', '', '', '', 'segment 6', 'No', 'No', 'No', '', '', 'Unknown', 'TIMI 3', '0', 'Yes', 0, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '22', '', 'Radial', 'Presure wire', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:50', 1113, '', 0.7, 13.3, 7390, 280000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'LMWH', '', '', 'Unknown', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-18', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '32'),
	(102, 52, 0, 0, '0000-00-00 00:00:00', '2016-01-14 02:45:00', '2016-01-14 00:12:00', '116Y2016', '3', '1', 'No', 86, '146/84', '', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-13 14:00:00', '2016-01-13 16:10:00', 'Yes', 'No', 'No', 'No', '', 35, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '2', 'No', '', '', 'segment 2,segment 12a', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 3', '0%', 'No', 0, 'No', '', '', '', '', '', '', '', '', '', 'Radial', 'None', 'Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:10', 1740, '', 1.13, 11.9, 6200, 172, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-20', 'Home', '', 'No', 'Clopidogrel', 'Vit. K antagonists', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '<p>\n Avand in vedere ca nu s-a evidentiat stenoza reziduala, dupa trombaspiratie MGI cu restabilirea fluxului TIMI III, nu se implanteaza stent.</p>\n', 'Finished', '47'),
	(103, 53, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-14 20:00:00', '123Y2016', '', '3', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '29'),
	(104, 54, 0, 0, '0000-00-00 00:00:00', '2016-01-13 11:07:00', '2016-01-14 12:45:00', '117Y2016', '1', '1', 'No', 71, '176/101', '', 'Unknown', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '100% (complete occlusion)', '100% (complete occlusion)', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 1', 'No', 'No', 'No', '', 'Yes', 'TIMI 0', 'TIMI 0', '100%', 'No', 0, '', '', '', '', '', '', '', '', '', '', 'Combined (Femoral + radial)', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:21:32', 2040, '', 0.8, 14.8, 3300, 115000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'Unknown', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-19', 'Home', '', 'No', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', '', 'Yes', '', 'No', '', '', 'Finished', '49'),
	(105, 55, 0, 0, '0000-00-00 00:00:00', '2016-01-14 09:04:00', '2016-01-12 13:30:00', '79Y2016', '17', '4', 'No', 68, '154/82', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (insulin + oral medication)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '3', 'No', 'No', '', 'segment 12a', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '18', '', 'Radial', '', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:27', 1368, '', 1.5, 12.7, 8400, 169000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '35'),
	(106, 56, 0, 0, '0000-00-00 00:00:00', '2016-01-11 10:09:00', '2016-01-12 08:40:00', '73Y2016', '7', '3', 'No', 76, '125/75', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '3', 'No', '', '', 'segment 7', 'No', 'No', 'Yes', '1-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '18', '', 'Radial', 'Presure wire', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:50', 1019, '', 0.68, 12.7, 7130, 298000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-13', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '35'),
	(107, 57, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '7', '3', 'No', 75, '150/70', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (dietary control)', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'left', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '2', 'No', '', '', 'segment 15', '', '', '', '', '', 'TIMI 3', 'TIMI 3', '', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.75', '18', '', 'Radial', '', '', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.6, 10.7, 5590, 250000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Diet only', 'Yes', 'None', 'No', '', '', 'In progress', '41'),
	(108, 58, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-13 00:00:00', '90y2016', '7', '1', '', 62, '136/78', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '<25% (luminal irregularities)', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '<25% (luminal irregularities)', '', '', '', '', '', '1', 'No', '', '', 'segment 7,segment 8', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Promus,Resolute', '', '', '2.5', '38', '', 'Radial', '', '', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:31:49', 4208, '', 0.77, 13.1, 5280, 221000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '41'),
	(109, 59, 0, 0, '0000-00-00 00:00:00', '2016-01-15 11:27:00', '2016-01-16 00:12:00', '130Y2016', '15', '1', 'No', 60, '154/76', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Diabetic (insulin + oral medication)', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-15 09:00:00', '0000-00-00 00:00:00', '', 'No', 'No', 'No', '', 35, '', 'right', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '', '', '', '100% (complete occlusion)', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Orsiro', '', '', '2.5', '30', '', 'Femoral', 'None', 'Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:04:18', 893, '', 0.85, 13, 11500, 250, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'Insulin and oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '32'),
	(110, 60, 0, 0, '0000-00-00 00:00:00', '2016-01-14 00:16:51', '2016-01-18 00:09:50', '153Y2016', '6', '1', 'No', 50, '140/70', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '100% (complete occlusion)', '', '', '', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '50 - 74% (intermediate stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '3', 'Yes', 'Yes', '', 'segment 5,segment 6,segment 9,segment 11', 'No', 'No', 'Yes', '0-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '2.75', '22', '', 'Femoral', 'Presure wire', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:26:35', 6305, '', 1.28, 14.1, 5560, 170000, '', 'Yes', 'Clopidogrel', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-20', 'Home', '', 'Yes', 'Clopidogrel', 'Oral factor Xa inhibitors', 'Yes', 'No', 'Yes', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '29'),
	(111, 61, 0, 0, '0000-00-00 00:00:00', '2016-01-17 17:00:00', '2016-01-17 17:07:00', '146Y2016', '2', '3', 'Yes', 90, '160/100', '', 'No', 'No', 'Yes', 'Unknown', 'No', 'No', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Unknown', '', 'STEMI / primary PCI', '2016-01-17 13:30:00', '2016-01-17 16:01:00', 'Yes', 'No', 'No', 'No', '', 50, '', 'right', '25 - 49% (mild stenosis)', '90 - 99% (critical stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '18', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', '', 'None', '00:12:09', 1964, '', 1.16, 18.1, 11960, 310000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', '', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '49'),
	(112, 62, 0, 0, '0000-00-00 00:00:00', '2016-01-14 14:00:00', '2016-01-15 15:20:00', '135Y2016', '3', '3', 'Yes', 77, '133/69', '', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '2016-01-14 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '90 - 99% (critical stenosis)', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '2', 'Yes', '', '', 'segment 6,segment 7,segment 8,segment 9', 'Yes', 'No', 'Yes', '1-0-1', 'No', '', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '3', '', '3.0', '38', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:18:02', 1889, '', 0.63, 12.3, 6100, 204000, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-19', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(113, 64, 0, 0, '0000-00-00 00:00:00', '2016-01-14 11:38:00', '2016-01-15 13:50:00', '132Y2016', '22', '3', 'No', 85, '151/119', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '75 - 90% (severe stenosis)', '100% (complete occlusion)', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '2', 'No', '', '', 'segment 12a', '', '', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '2.75', '52', '', 'Femoral', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:44:04', 6574, '', 0.85, 15.5, 8210, 254000, '', 'Yes', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Ticagrelor', 'No', '', 'Yes', 'No', 'None', 'Yes', '', 'No', '', '', 'In progress', '30'),
	(114, 65, 0, 0, '0000-00-00 00:00:00', '2016-01-17 10:21:00', '2016-01-17 18:40:00', '148Y2016', '3', '3', 'No', 60, '103/67', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-01 13:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '3', 'No', 'No', '', 'segment 7', 'No', 'No', 'Yes', '1-1-1', 'No', 'TIMI 2', 'TIMI 3', '0', 'Yes', 3, 'Yes', 'Drug-eluting', '', '3', 'Resolute', '', '', '4', '57', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '07:51:00', 2484, '', 0.81, 13.8, 11.14, 207, '', 'Yes', 'No', 'No', 'No', 'No', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-20', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '47'),
	(115, 63, 0, 0, '0000-00-00 00:00:00', '2016-01-16 05:30:00', '2016-01-15 05:40:00', '145Y2016', '3', '3', 'No', 49, '146/67', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'STEMI / primary PCI', '2016-01-16 03:00:00', '2016-01-16 04:12:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'right', '', '', '100% (complete occlusion)', '', '', '', '25 - 49% (mild stenosis)', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '3', 'No', 'No', '', 'segment 3,segment 6,segment 8,segment 9', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Promus', '', '', '2.5', '20', '', 'Femoral', 'None', 'Thrombectomy', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:38', 601, '', 0.89, 13.2, 6300, 241000, '', 'No', 'No', 'No', 'Eptifibatide', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(116, 67, 0, 0, '0000-00-00 00:00:00', '2016-01-17 19:45:00', '2016-01-15 19:45:00', '149Y2016', '3', '3', 'Yes', 80, '118/77', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Post STEMI (stabilised)', '2016-01-15 11:00:00', '0000-00-00 00:00:00', 'Yes', 'No', 'No', 'No', '', 35, '', 'right', '', '', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', 'No', 'TIMI 1', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Promus', '', '', '3.0', '20', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:02:27', 767, '', 0.89, 15, 14800, 210000, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(117, 68, 0, 0, '0000-00-00 00:00:00', '2016-01-18 11:40:00', '2016-01-18 19:40:00', '163Y2016', '1', '2', 'No', 49, '115/73', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Others', '2016-01-06 08:00:00', '0000-00-00 00:00:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'right', '50 - 74% (intermediate stenosis)', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 1,segment 3', 'No', 'No', 'No', '', '', 'TIMI 0', 'TIMI 3', '0', 'Yes', 2, 'Yes', 'Drug-eluting', '', '2', 'Resolute', '', '', '3.0', '26', '', 'Femoral', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:07', 1726, '', 0.79, 14.4, 11500, 128000, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-20', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(118, 69, 0, 0, '0000-00-00 00:00:00', '2016-01-14 00:00:00', '2016-01-18 00:00:00', '157Y2016', '12', '4', 'No', 67, '150/90', '', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (insulin + oral medication)', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '3', 'Yes', 'No', '', 'segment 11,segment 12a', 'No', 'No', 'Yes', 'Unknown', 'No', 'Unknown', 'TIMI 3', '', 'Yes', 0, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '15', '', 'Radial', 'None', '', '', 'No', 'No', '', '00:15:43', 7411, '', 0.82, 13.2, 6940, 285000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', '', '', 'Unknown', 'No', '', 'No', 'Unknown', 'No', 'Alive', '2016-01-19', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'Insulin and oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '39'),
	(119, 70, 0, 0, '0000-00-00 00:00:00', '2016-01-15 00:00:00', '2016-01-18 00:00:00', '169y2016', '15', '5', '', 60, '120/60', '', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 7', 'No', 'No', 'No', '', '', 'TIMI 3', 'TIMI 3', '0', 'Yes', 0, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '15', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:05:05', 1481, '', 0.73, 14.4, 5.71, 217, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '3001-04-20', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '32'),
	(120, 71, 0, 0, '0000-00-00 00:00:00', '2016-01-14 08:00:00', '2016-01-15 18:15:00', '139Y2016', '1', '1', 'No', 64, '136/85', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Non-diabetic', '', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '2', 'No', '', '', 'segment 12a', 'No', '', 'No', '', 'Yes', '', '', '0', 'Yes', 1, 'No', 'Bare Metal', '1', '', '', '', '', '3.0', '20', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:54', 2238, '', 1.09, 12.1, 4680, 90000, '', 'No', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', '', 'No', 'Alive', '2016-01-14', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'No', 'None', 'No', '', '', 'In progress', '30'),
	(121, 72, 0, 0, '0000-00-00 00:00:00', '2016-01-18 00:43:00', '2016-01-18 17:00:00', '', '16', '4', 'No', 120, '140/90', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', '', 'No', '', 'Post STEMI (stabilised)', '2016-01-17 14:00:00', '2016-01-17 23:38:00', 'Yes', 'No', 'No', 'No', '', 30, '', 'right', '75 - 90% (severe stenosis)', '', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '90 - 99% (critical stenosis)', '90 - 99% (critical stenosis)', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '3', 'No', '', '', 'segment 1', 'No', 'No', 'No', '', 'No', '', '', '0', 'Yes', 0, 'No', 'Bare Metal', '1', '', '', '', '', '3.0', '26', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.8, 15.4, 11430, 261000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', '', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', '', 'No', '', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '53'),
	(122, 66, 0, 0, '0000-00-00 00:00:00', '2016-01-14 11:23:00', '2016-01-18 09:20:00', '152y2016', '11', '1', 'No', 87, '130/80', '', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '90 - 99% (critical stenosis)', '', '', '', '', '<25% (luminal irregularities)', '', '50 - 74% (intermediate stenosis)', '', '', '', '<25% (luminal irregularities)', '', '', '', '<25% (luminal irregularities)', '', '', '2', 'No', 'No', '', 'segment 1', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '4', '22', '', 'Femoral', 'None', 'Balloon postdilatation', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:05:52', 1394, '', 0.72, 14.2, 7500, 181000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', 'Yes', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-20', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '28'),
	(123, 73, 0, 0, '0000-00-00 00:00:00', '2016-01-16 18:32:00', '2016-01-17 18:00:00', '147Y2016', '2', '3', 'Yes', 69, '130/83', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Unknown', 'Yes', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2016-01-15 00:05:00', '2016-01-16 13:53:00', 'Yes', 'No', 'No', 'No', '', 55, '', 'right', '', '25 - 49% (mild stenosis)', '', '', '25 - 49% (mild stenosis)', '', '', '', '25 - 49% (mild stenosis)', '', '25 - 49% (mild stenosis)', '', '', '', '', '90 - 99% (critical stenosis)', '', '', '1', 'No', '', '', 'segment 13', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '12', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:23', 1171, '', 1.21, 15.5, 7200, 290000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '49'),
	(124, 74, 0, 0, '0000-00-00 00:00:00', '2016-01-17 14:44:00', '2016-01-17 20:00:00', '150Y2016', '2', '3', 'No', 65, '125/65', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Unknown', 'Unknown', '', 'NSTACS (invasive strategy,< 72h)', '2016-01-17 08:00:00', '2016-01-17 09:42:00', 'Yes', 'No', 'No', 'No', '', 55, '', 'right', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', '', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '18', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:23', 344, '', 0.81, 13.6, 8200, 342000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n Pacienta revine prin programare pentru angioplastie leziune restanta ADA.</p>\n', 'Finished', '49'),
	(125, 75, 0, 0, '0000-00-00 00:00:00', '2016-01-17 01:24:00', '2016-01-18 17:45:00', '161Y2016', '2', '1', 'Yes', 86, '150/70', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Post unstable angina (stabilised)', '2016-01-16 13:00:00', '2016-01-16 21:15:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '25 - 49% (mild stenosis)', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '2', 'No', '', '', 'segment 7', 'No', 'No', 'No', '', '', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '2.5', '8', '', 'Radial', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', '', 'None', '00:07:36', 743, '', 0.79, 13.7, 6300, 261000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-21', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '49'),
	(126, 76, 0, 0, '0000-00-00 00:00:00', '2016-01-17 16:46:00', '2016-01-19 13:50:00', '170Y2016', '3', '1', 'Yes', 90, '100/60', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'No', 'No', '', 'Post STEMI (stabilised)', '2016-01-17 06:00:00', '2016-01-17 14:45:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '90 - 99% (critical stenosis)', '', '', '', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '25 - 49% (mild stenosis)', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '1', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', '', 'TIMI 2', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Bare Metal', '1', '', '', '', '', '3.0', '18', '', 'Radial', 'None', 'Thrombectomy', 'No flow/slow flow phenomenon', 'No', 'No', 'None', '00:06:12', 1404, '', 1.15, 12.2, 38100, 355000, '', 'Yes', 'No', 'No', 'No', 'Unfractionated heparin', 'Yes', '', 'No', 'No', 'Gastrointestinal bleed (major)', 'No', 'No', 'No', 'Dead', '2016-01-25', '', '', '', '', '', '', '', '', 'None', '', 'None', 'No', '', '', 'Finished', '51'),
	(127, 77, 0, 0, '0000-00-00 00:00:00', '2016-01-19 10:09:00', '2016-01-20 09:50:00', '181Y2016', '1', '1', 'No', 80, '135/62', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Diabetic (dietary control)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2015-11-02 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 40, '', 'right', '', '100% (complete occlusion)', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '100% (complete occlusion)', '', '3', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'Yes', 'TIMI 1', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Promus', '', '', '3.0', '56', '', 'Radial', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:19:08', 3476, '', 0.81, 12.6, 7040, 183000, '', 'Yes', 'No', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-22', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'Diet only', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(128, 78, 0, 0, '0000-00-00 00:00:00', '2016-01-18 09:38:00', '2016-01-19 16:10:00', '174Y2016', '3', '1', 'No', 65, '110/70', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Former', 'Non-diabetic', 'No', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '2', 'No', 'No', '', 'segment 9', 'No', 'No', 'No', '', 'No', 'TIMI 1', 'TIMI 3', '', 'Yes', 0, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.25', '18', '', 'Radial', 'Presure wire', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:21', 3558, '', 0.66, 13.1, 5500, 211000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-21', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '47'),
	(129, 79, 0, 0, '0000-00-00 00:00:00', '2016-01-22 00:00:00', '2016-01-19 10:20:00', '168Y2016', '12', '4', 'No', 104, '130/75', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 48, '', 'right', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'No', 'No', '', 'segment 1,segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '2', 'Resolute', '', '', '3', '40', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:12', 824, '', 0.81, 12.5, 4740, 246000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-21', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '46'),
	(130, 80, 0, 0, '0000-00-00 00:00:00', '2016-01-11 00:00:00', '2016-01-18 00:00:00', '', '12', '4', 'No', 70, '140/100', '', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2015-11-21 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'codominance', '100% (complete occlusion)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '', '', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '90 - 99% (critical stenosis)', '', '', '3', 'No', '', '', 'segment 13', 'No', 'No', 'No', '', '', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3', '15', '', 'Femoral', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 0.76, 13.4, 5230, 150000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'No', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-21', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '46'),
	(131, 81, 0, 0, '0000-00-00 00:00:00', '2016-01-14 00:00:00', '2016-01-21 00:00:00', '204Y2016', '22', '1', 'No', 72, '135/81', '', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Former', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 60, '', 'right', '', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '', '75 - 90% (severe stenosis)', '', '90 - 99% (critical stenosis)', '', '', '', '', '<25% (luminal irregularities)', '', '', '<25% (luminal irregularities)', '<25% (luminal irregularities)', '', '', '2', 'No', '', '', 'segment 6', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '30', '', 'Femoral', '', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:49', 1493, '', 0, 0, 0, 0, '', 'No', 'No', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'No', 'Yes', 'No', 'None', 'No', 'None', 'No', '', '', 'In progress', '30'),
	(132, 82, 0, 0, '0000-00-00 00:00:00', '2016-01-12 11:03:00', '2016-01-20 13:00:00', '185Y2016', '22', '3', 'No', 77, '175/87', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Former', 'Diabetic (dietary control)', 'Yes', '', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'right', '', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '100% (complete occlusion)', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '3', 'No', 'No', '', 'segment 2,segment 3', 'No', 'No', 'No', '', 'No', '', 'TIMI 3', '0', 'Yes', 2, 'No', 'Drug-eluting', '', '', 'Resolute', '', '', '3.5', '22', '', 'Femoral', 'None', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:07:06', 1422, '', 1.21, 12.4, 6400, 18300, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', 'No', 'Diet only', 'No', 'None', 'No', '', '', 'In progress', '30'),
	(134, 63, 0, 0, '0000-00-00 00:00:00', '2016-01-16 05:30:00', '2016-01-21 18:40:00', '214Y2016', '3', '3', 'No', 84, '156/97', '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2016-01-16 03:00:00', '2016-01-16 04:12:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '3', 'No', '', '', 'segment 12a', 'No', 'No', 'No', '', '', '', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '2.5', '2.5', '', 'Radial', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:03:30', 676, '', 0.7, 13.2, 6300, 241000, '', 'Yes', 'No', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(135, 84, 0, 0, '0000-00-00 00:00:00', '2016-01-14 11:29:00', '2016-01-18 11:35:00', '154y2016', '18', '1', 'No', 80, '120/80', '', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Former', 'Diabetic (insulin)', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 0, '', 'right', '75 - 90% (severe stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '', '50 - 74% (intermediate stenosis)', '', '', '', '', '3', 'Yes', '', '', 'segment 1,segment 2,segment 3,segment 16', 'No', 'No', 'No', '', '', 'TIMI 3', 'TIMI 3', '0', 'Yes', 4, 'No', 'Drug-eluting', '', '4', 'Resolute', '', '', '2.75', '70', '', 'Radial', '', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:12:35', 2938, '', 0.95, 12.8, 6380, 208000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'Unknown', 'No', 'Alive', '2016-01-21', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'Insulin', 'Yes', 'Fibrates', 'No', '', '', 'Finished', '40'),
	(136, 83, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-21 08:20:00', '195Y2016', '17', '4', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:05:37', 906, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '35'),
	(137, 85, 0, 0, '0000-00-00 00:00:00', '2016-01-19 15:29:00', '2016-01-19 18:10:00', '176Y2016', '2', '1', 'Yes', 58, '131/77', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Never', 'Diabetic (oral medication)', 'Yes', 'Unknown', '', 'STEMI / primary PCI', '2016-01-19 09:00:00', '2016-01-22 13:56:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'right', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '90 - 99% (critical stenosis)', '', '', '', '', '', '', '', '', '100% (complete occlusion)', '', '50 - 74% (intermediate stenosis)', '', '', '2', 'No', '', '', 'segment 2,segment 3,segment 16', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 2, 'Yes', 'Drug-eluting', '', '2', 'Promus', '', '', '3.0', '12', '', 'Femoral', 'None', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:14:49', 2475, '', 1.2, 15.4, 9600, 224000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'Yes', 'No', 'Oral agent', 'Yes', 'None', 'No', '', '', 'Finished', '49'),
	(138, 86, 0, 0, '0000-00-00 00:00:00', '2016-01-19 12:43:00', '2016-01-21 16:03:00', '209Y2016', '1', '3', 'No', 70, '139/75', '', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '2015-12-01 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '', '', '', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '1', 'No', '', '', 'segment 9', 'No', 'No', 'No', '', '', '', 'TIMI 3', '0', 'Yes', 2, 'Yes', 'Drug-eluting', '', '2', 'Resolute', '', '', '2.5', '26', '', 'Radial', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:13', 3264, '', 0.75, 13.8, 8990, 220000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'Finished', '51'),
	(139, 87, 0, 0, '0000-00-00 00:00:00', '2016-01-21 06:43:00', '2016-01-21 15:00:00', '207Y2016', '2', '1', 'No', 84, '117/77', '', 'Unknown', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', '', 'Current', 'Non-diabetic', 'Yes', 'Unknown', '', 'Post STEMI (stabilised)', '2016-01-20 10:00:00', '2016-01-21 03:05:00', 'Yes', 'No', 'No', 'No', '', 45, '', 'right', '', '100% (complete occlusion)', '', '', '', '', '100% (complete occlusion)', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '', '', '2', 'No', '', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 0', 'TIMI 3', '30%', 'Yes', 1, 'No', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.0', '26', '', 'Radial', '', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:06:22', 1265, '', 0.87, 16.5, 13600, 208000, '', 'Yes', 'Ticagrelor', 'No', 'Eptifibatide', 'Unfractionated heparin', 'No', '', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '49'),
	(140, 88, 0, 0, '0000-00-00 00:00:00', '2016-01-21 09:35:00', '2016-01-21 20:15:00', '', '1', '3', 'No', 0, '', '', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Former', 'Diabetic (oral medication)', 'Yes', 'Unknown', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '', '', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'Yes', 'No', '', 'segment 5,segment 6,segment 7,segment 11', 'No', 'No', 'Yes', '1-1-0', 'No', 'TIMI 3', 'TIMI 3', '0', 'Yes', 3, 'Yes', 'Drug-eluting', '', '3', 'Resolute', '', '', '4.0', '22', '', 'Femoral', 'OCT', 'Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:18:56', 4960, '', 0.87, 11.5, 7650, 198000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', '', 'Oral agent', 'Yes', 'None', 'No', '', '', 'In progress', '49'),
	(141, 88, 0, 0, '0000-00-00 00:00:00', '2015-12-14 09:00:00', '2015-12-15 09:00:00', '', '7', '3', 'No', 72, '170/90', '', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', 'Current', 'Diabetic (oral medication)', 'Yes', 'Unknown', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '75 - 90% (severe stenosis)', '100% (complete occlusion)', '', '', '50 - 74% (intermediate stenosis)', '50 - 74% (intermediate stenosis)', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'Yes', 'No', '', 'segment 2,segment 3', 'No', 'No', 'No', '', 'Unknown', 'TIMI 0', 'TIMI 3', '0%', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '4.0', '94', '', 'Femoral', '', 'Balloon predilatation,Balloon postdilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:00:00', 0, '', 1.05, 12.7, 9310, 198000, '', 'Yes', 'Ticagrelor', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2015-12-17', 'Home', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'Yes', '', 'Oral agent', 'Yes', '', 'No', '', '', 'In progress', '49'),
	(142, 89, 0, 0, '0000-00-00 00:00:00', '2016-01-19 11:43:00', '2016-01-20 15:00:00', '189Y2016', '4', '3', 'No', 80, '131/87', '', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', 'Never', 'Non-diabetic', 'Yes', 'No', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 45, '', 'right', '', '75 - 90% (severe stenosis)', '', '', '', '', '', '', '', '', '', '', '', '', '', '25 - 49% (mild stenosis)', '', '', '3', 'Yes', 'No', '', 'segment 2', 'No', 'No', 'No', '', 'No', 'TIMI 3', 'TIMI 3', '0%', 'Yes', 3, 'No', 'Drug-eluting', '', '3', 'Resolute', '', '', '4.0', '67', '', 'Radial', 'None', 'Balloon predilatation', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:12:12', 1062, '', 0.78, 11, 3770, 182000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '<p>\n Pacienta cunoscuta cu sindrom Raynaud, internata la spitalul Brasov in martie 2015 pentru angina pectorala, coronarografiata cu leziuni trivasculare, in luna aprilie 2015, cand se implanteaza 3 stenturi DES pe ADA S2, cu leziune restanta semnificativa de ACD, in luna septembrie 2015 s-a incercat PCI la acest nevel, cu disecarea vasului, cu procedura esuata si IMA periprocedural tratat clasic, revine in serviciul nostru pentru coronarografie de control. Ecocardiografic: VS cu sechele IM antero-septal&nbsp; si FE globala apreciata vizual 45%, regurgitare mitrala minora. In data de 20.01.2016 s-a efectuat&nbsp; coronarografie care deceleaza stenturi ADA patente, stenoza aemnificativa ACD segment vertical, cu distalitate indemna. Se decide PCI pe ACD, cu implantarea a 3 stenturi active farmacologic, cu rezultat final bun, fara disectie, sau stenoze reziduale. Pe sectie fara angina, valori tensionale bune. Mentionam ca pacienta se cunoaste cu alergie la substanta de contrast, motiv pentru care s-a administrat in prealabil tratament antihistaminic si antiinflamator steriodian. Se externeaza cu recomandarile de mai jos.</p>\n', 'Finished', '30'),
	(143, 91, 0, 0, '0000-00-00 00:00:00', '2016-01-21 00:00:00', '2016-01-22 14:20:00', '222Y2016', '22', '3', 'No', 86, '128/84', '', '', '', '', '', '', 'Yes', 'No', 'No', '', 'Unknown', 'Non-diabetic', 'Yes', '', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 50, '', 'left', '', '', '', '', '', '', '75 - 90% (severe stenosis)', '75 - 90% (severe stenosis)', '', '75 - 90% (severe stenosis)', '', '', '', '75 - 90% (severe stenosis)', '', '', '', '', '2', 'No', '', '', 'segment 6,segment 7', '', '', '', '', 'No', '', '', '', 'Yes', 1, '', 'Drug-eluting', '', '1', '', '', '', '3.0', '32', '', '', '', '', 'No Peri-Procedural complications', 'No', '', 'None', '00:03:49', 2239, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '2016-01-25', 'Home', '', 'Yes', 'Clopidogrel', 'No', 'Yes', 'No', 'Yes', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '30'),
	(144, 92, 0, 0, '0000-00-00 00:00:00', '2016-01-15 13:04:00', '2016-01-22 16:15:00', '227Y2016', '22', '4', 'No', 77, '128/83', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', 'Former', 'Non-diabetic', 'No', 'Yes', '', 'Elective PCI (stable angina and/ or documented ischemia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 'No', 'No', 'No', '', 55, '', 'right', '', '', '', '', '', '75 - 90% (severe stenosis)', '25 - 49% (mild stenosis)', '50 - 74% (intermediate stenosis)', '', '', '', '', '', '', '', '', '', '', '2', 'Yes', 'No', '', 'segment 5,segment 6', 'No', 'No', 'Yes', '1-1-0', 'No', 'Unknown', 'TIMI 3', '0', 'Yes', 1, 'Yes', 'Drug-eluting', '', '1', 'Resolute', '', '', '3.5', '22', '', 'Femoral', 'None', 'None', 'No Peri-Procedural complications', 'No', 'No', 'None', '00:08:05', 1859, '', 0.61, 13.2, 5290, 259000, '', 'Yes', 'Clopidogrel', 'No', 'No', 'Unfractionated heparin', 'No', '', 'No', 'No', 'No', 'No', 'No', 'No', 'Alive', '0000-00-00', '', '', 'Yes', 'Ticagrelor', 'No', 'Yes', 'No', 'No', 'None', 'Yes', 'None', 'No', '', '', 'In progress', '30'),
	(145, 93, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-22 18:20:00', '', '', '', '', 50, '150/92', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:06:57', 1682, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '30'),
	(146, 94, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-22 19:00:00', '', '', '', '', 81, '117/68', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:06:20', 1762, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '30'),
	(147, 95, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-24 00:00:00', '', '', '', '', 93, '154/89', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:06:40', 1712, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'In progress', '30');
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
  `action` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL,
  `ip_location` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.logs: ~1 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `user_id`, `action`, `info`, `ip_location`, `date`) VALUES
	(1, '1', 'Update patient informations', 'Patient id: 22', '193.226.0.18', '26-01-2016 09:41'),
	(2, '1', 'Update patient informations', 'Patient id: 75', '193.226.0.18', '26-01-2016 09:43');
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
  `admin` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.patients: ~55 rows (approximately)
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` (`id`, `fo_nr`, `cnp`, `country`, `county`, `city`, `first_name`, `last_name`, `gender`, `date_of_birth`, `height`, `weight`, `patient_phone`, `patient_caregiver_phone`, `GP_name`, `gp_phone`, `GP_office_address`, `GP_email`, `patient_address`, `GP_info`, `status`, `signature`, `admin`) VALUES
	(15, '7025/2015', '2460610264444', 'Romania', '28', 'Targu Mures', 'Maria', 'Butiu', 'Female', '1946-06-10', 165, 68, 0, 0, '', 0, '', '', '<p>\n Targu Mures, str. Muncii, nr. 13, ap 2, jud. Mures</p>\n', '<p>\n Pacienta era deja externata, am gasit doua numere de telefon pe internet care corespunde cu adresa din buletin</p>\n<p>\n <span><strong>0365 425 659 </strong>(BUTIU FLORE)</span><span> sau</span><span><strong> 0265256160</strong></span></p>\n<p>\n <span><strong>la follow-</strong></span><span><strong>up de intrebat medicul de familie</strong></span></p>\n<p>\n &nbsp;</p>\n', 'Finished', '28', '28'),
	(16, '65/2016', '1670418267400', 'Romania', '28', 'Tarnaveni', 'Vasile-Mircea', 'Bichis', 'Male', '1967-09-18', 110, 75, 742176727, 771537745, 'Dr. Morar Precup', 0, '', '', '', '<p>\n Dr. Morar Precup -loc: Tarnaveni</p>\n', 'Finished', '29', '29'),
	(17, '7026/2015', '1420419264391', 'Romania', '28', 'Sangeorgiu de Mures', 'Bela', 'Fazakas', 'Male', '1942-04-19', 180, 75, 365735911, 742121915, 'Dr. Nagi Adela', 0, '', '', '<p>\n Jud: Mures; Loc: Sangeorgiu de Mures; Str. Garii&nbsp;</p>\n', '', 'Finished', '29', '29'),
	(19, '7029/2015', '1750216193782', 'Romania', '21', 'Hodosa', 'Ferencz Albert', 'Bogdan', 'Male', '1975-02-16', 174, 65, 747389464, 0, 'Ujica Mariana', 0, '', '', '<p>\n nr. 1154</p>\n', '', 'Finished', '30', '30'),
	(20, '42/2016', '1630105120677', 'Romania', '21', 'Odorheiu Secuiesc', 'Csaba Istvan ', 'Sebestyen', 'Male', '1963-01-05', 180, 100, 762862421, 745809422, 'Nagy Levente Laszlo', 266218182, '535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, ', 'nleventedr@gmail.com ', '<p>\n str Szent Janos 72</p>\n', '<address address="" color:="" font-family:="" font-size:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:="" segoe="">\n <span><span><span itemprop="streetAddress">STR. GHIPES nr. 4&nbsp;</span>,&nbsp;<span itemprop="addressLocality">ODORHEIU SECUIESC</span>,&nbsp;<span itemprop="addressRegion">JUD. HARGHITA;&nbsp;</span><span 0266-218="" address="" background-color:="" font-size:="" font-weight:="" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress" line-height:=""> <strong font-size:="" line-height:="" margin:="" padding:="" span="">0266-218382</strong></span></span></span></address>\n<div class="elerhetoseg" font-family:="" font-size:="" p="" padding:="">\n <span><span><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:=""><strong p="" padding:="">&lt;strong 0px;=&quot;&quot; padding:=&quot;&quot; 0px;&quot;=&quot;&quot;&gt;Adresă 2 :&nbsp;</strong>535600, Odorheiu Secuiesc, Str. Piaţa Libertăţii, Nr. 5, Judetul Harghi</strong></strong><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:=""><strong p="" padding:="">ta </strong></strong></strong></span></span></div>\n<p>\n <strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><span><span><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong font-size:="" line-height:="" margin:="" padding:="" span=""><strong p="" padding:="">&nbsp;</strong></strong></strong></strong></strong></strong></strong></strong></strong></span></span></strong></strong></strong></strong></strong></strong></p>\n', 'Finished', '30', '30'),
	(21, '64/2016', '1490727293790', 'Romania', '21', 'Toplita', 'Carol', 'Papai', 'Male', '1949-07-27', 176, 85, 266341813, 761126644, 'Pascan Loredana', 729618796, 'STR. VICTOR BABEŞ , bl. B sc. 2 ap. 3, TOPLIŢA', '', '<p>\n Dealului bl. 3P ap. 3, Toplita, jud Harghita</p>\n', '', 'Finished', '30', '30'),
	(22, '7035/2015', '2700626260019', 'Romania', '28', 'Targu Mures', 'Marcela-Florina', 'David', 'Female', '1970-06-26', 170, 80, 745260027, 0, 'Dr. Florea Camelia', 265225002, 'Targu Mures, Str. Dorobanţilor nr. 1, TOPMED', '', '<p>\n loc. Targu Mures, Cal. Sighisoarei, nr.9, ap12, jud. Mures</p>\n', '', 'Finished', '28', '28'),
	(23, '19/2016', '1510329261451', 'Romania', '28', 'Gurghiu', 'Gavril', 'Menyhart', 'Male', '1951-03-29', 182, 70, 0, 768628121, 'Dr. Ballok Jolanda', 265537177, 'SAT GLĂJĂRIE NR. 148/A, COM. GURGHIU, JUD. MUREŞ', '', '<p>\n loc. Gurghiu, str. Glajarie, nr. 133</p>\n', '', 'Finished', '28', '28'),
	(29, '7033/2015', '2480925264408', 'Romania', '28', 'Targu Mures', 'Ana', 'Raffi', 'Female', '1948-09-25', 155, 85, 770818998, 757818998, 'Dr. Matefi Judit', 265, '', '', '', '', 'Finished', '29', '29'),
	(30, '88/2016', '1441130267391', 'Romania', '28', 'Adamus', 'Ioan', 'Nan', 'Male', '1944-11-30', 170, 110, 0, 747504654, 'Oltean Laura', 0, '', '', '<p>\n comuna Dimbu, sat Adamus, nr 78A</p>\n', '<p>\n Numele medicului de familie - inainte de casatorie- pacientul nu cunoaste noul nume.</p>\n', 'Finished', '30', '30'),
	(32, '31/2016', '2550919264392', 'Romania', '28', 'Targu Mures', 'Elisabeta', 'Farkas', 'Female', '1955-09-19', 156, 67, 745507159, 745507159, 'Szakaly Marta Eszter', 265, '', '', '<p>\n Aleea vrancea, 10/8</p>\n', '<p>\n <span font-family:="" line-height:="">Str. Principală Nr. 433, gornesti</span></p>\n', 'Finished', '30', '30'),
	(33, '76/2016', '1460820267408', 'Romania', '28', 'Bobohalma', 'Ioan', 'Popa', 'Male', '1946-08-20', 165, 103, 265430063, 0, 'Kis Marinela', 265450011, 'Str. Principală nr. 10/A, Adămuş, Județul Mureș', '', '<p>\n bobohalma, nr 8A</p>\n', '<div background-color:="" font-family:="" font-size:="" line-height:="" margin:="" span="">\n 0265-45.00.11,<o:p></o:p></div>\n<div background-color:="" font-family:="" font-size:="" line-height:="" margin:="" span="">\n 0741-671.927</div>\n', 'Finished', '30', '30'),
	(34, '32/2016', '1420401264378', 'Romania', '28', 'Targu Mures ', 'Adrian ', 'Dezso', 'Male', '1942-04-01', 168, 95, 365429551, 365429551, 'Dr. Fejer Dana', 0, '', '', '<p>\n Jud: Mures; Loc: Targu Mures; Str. Parangului; Nr.54/39</p>\n', '<p>\n Dr. Fejer Dana- Loc: Targu Mures; Dambu Pietros</p>\n', 'Finished', '29', '29'),
	(35, '89/2016', '1410812264364', 'Romania', '28', 'Corunca', 'Vasile', 'Petrina', 'Male', '1941-08-12', 175, 80, 749277111, 749277112, 'Dr. Sonia Valentina ', 744477644, '', '', '<p>\n Jud: Mures; Loc: Corunca; Nr: 427</p>\n', '<p>\n Dr. Sonia Valentina-Centru Medical Sonea Sancrai.</p>\n', 'Finished', '29', '29'),
	(36, '50/2016', '1550314321395', 'Romania', '34', 'Copsa Mica', 'Gheorghe', 'Prostean', 'Male', '1955-03-14', 170, 85, 758551475, 742804020, 'Dr. PENESCU OCTAVIA', 0, '', '', '<p>\n Jud: Sibiu; Localitatea Copsa Mica ; Str. Car 1 Dec 15/6;</p>\n', '<p>\n Dr. Penescu Octavia; Jud: Sibiu; Loc: Copsa Mica;</p>\n', 'Finished', '29', '29'),
	(37, '137', '2470502264369', 'Romania', '28', 'Targu Mures', 'Maria', 'Gavrila', 'Female', '1947-05-02', 165, 65, 0, 0, '', 0, '', '', '', '', 'Finished', '31', '0'),
	(38, '130/2016', '1560501264362', 'Romania', '28', 'Ungheni', 'Ioan-Floriner', 'Covrig', 'Male', '1956-05-01', 172, 72, 742846079, 743540350, 'Nagy (Suteu) Elena', 265328161, 'UNGHENI, str.Principală, nr.105', '', '<p>\n Loc. Ungheni, Nr. 95, Judet Mures</p>\n', '', 'Finished', '51', '51'),
	(39, '79/2016', '1580806264371', 'Romania', '28', 'Targu Mures', 'Iosif', 'Iuga', 'Male', '1958-08-06', 171, 81, 746610391, 0, 'Pop Lupu Maria', 265265024, 'Târgu Mureş, Bulevardul 1 Decembrie 1918 nr. 28 B', '', '<p>\n strada Sighisoarei 11/9</p>\n', '', 'Finished', '30', '30'),
	(40, '102/2016', '2390324191527', 'Romania', '21', 'Miercurea Ciuc', 'AGNETA', 'FEKETE', 'Female', '1939-03-24', 162, 75, 266323853, 266323853, 'BALASI MAGDOLNA', 266312218, 'Strada Petőfi Sándor 14, Miercurea Ciuc 530210', '', '<p>\n &lt;span arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 13px;=&quot;&quot; line-height:=&quot;&quot; 16.12px;&quot;=&quot;&quot;&gt;Strada Culmei, nr. 17, ap. 19, Miercurea Ciuc, Harghita - locuieste cu fiica - nr. de tel. fix</p>\n', '', 'Finished', '49', '49'),
	(41, '133/2016', '1420912192466', 'Romania', '28', 'Eremieni', 'FRANCISC', 'NAGY-GYORGY', 'Male', '1942-09-12', 175, 75, 265345420, 746649484, 'POP VIORICA', 265576007, 'str.Teilor nr.54, MIERCUREA NIRAJULUI, judet Mures', '', '<p>\n com. Magherani, sat Eremieni, nr. 59, jud. Mures.&nbsp;</p>\n<p>\n Nr. tel. alternativ pacient: 0746649484</p>\n', '', 'Finished', '49', '49'),
	(42, '174/2016', '2590703190345', 'Romania', '21', 'Cristuru-Secuiesc', 'Ilona', 'Benko', 'Female', '1959-07-03', 154, 64, 746959744, 742492946, 'DR. FARKAS RADULY SANDOR', 266243555, 'Cristuru Secuiesc, Str. Timafalvi, Nr. 10', '', '<p>\n Loc. Cristuru Secuiesc. &nbsp;Str. Kossuth Lajos, bl.A4 et.3 ap.14</p>\n', '', 'Finished', '51', '51'),
	(44, '118/2016', '2710814321395', 'Romania', '34', 'Motis', 'Angela Victoria', 'Rus', 'Female', '1971-08-14', 159, 137, 763981576, 760841159, 'Pintea Zmeurica', 740246788, 'loc.Valea Viilor', '', '<p>\n loc.Motis, str. Teches nr.47</p>\n', '', 'Finished', '35', '0'),
	(45, '7/2016', '1461213264367', 'Romania', '28', 'Targu Mures', 'ALEXANDRU ', 'ERDOS', 'Male', '1946-12-13', 176, 103, 365440044, 758642428, 'Dr. Dragan Eniko', 265212971, 'Pta Marasesti Nr.21 ', '', '', '<p>\n Dr. Dragan Eniko- Dora Medical ; P-ta Marasesti Nr.21; Tel: 0265212971; tel: 0733553970</p>\n', 'Finished', '29', '29'),
	(46, '178/2016', '2380720060770', 'Romania', '5', 'Budesti-Fanate', 'Ileana', 'Budelecan', 'Female', '1938-07-20', 160, 69, 0, 752191047, 'Natalia Juncu', 0, 'STR. GHEORGHE MARINESCU nr. 50 , ', '0265211292', '<p>\n budesti-fanete 103</p>\n', '', 'Finished', '30', '30'),
	(47, '113/2016', '2500102131265', 'Romania', '3', 'Cotunba', 'Virginia', 'Stoica', 'Female', '1950-01-02', 167, 55, 743787577, 0, 'Neacsu Ciprian', 723522817, 'Agas, județul Bacau sat Cotumba nr.293', '', '', '', 'Finished', '30', '30'),
	(48, '219/2016', '1570308261498', 'Romania', '28', 'Reghin', 'Laszlo', 'Zsigmond', 'Male', '1957-03-08', 185, 88, 2147483647, 741075059, 'Ghidro Iren', 0, '', '', '<p>\n Loc: Reghin, str: Garii, Nr.2/24</p>\n', '', 'In progress', '43', '0'),
	(49, '148/2016', '1390308270593', 'Romania', '29', 'PIATRA NEAMT', 'CONSTANTIN ', 'CIURCAN', 'Male', '1939-03-08', 177, 85, 745532657, 743768002, 'Dr. Istin Dorin  ', 723597979, '', '', '', '<p>\n Dr. Istin Dorin-loc: Piatra Neamt.&nbsp;</p>\n', 'Finished', '41', '0'),
	(50, '171/2016', '2310523260011', 'Romania', '28', 'Sarmasu', 'Ana', 'Uilecan', 'Female', '1931-05-23', 170, 80, 734377788, 727164025, 'Dr. Suciaghi Alexandrina Rodica', 265421221, 'Str. republicii, nr. 110 , Sarmasu, jud. Mures', '', '<p>\n Strada 30 Decembrie, nr. 7, com. Sarmasu</p>\n', '', 'Finished', '31', '0'),
	(51, '170/2016', '1540217263517', 'Romania', '28', 'SIGHISOARA', 'MARCEL ROBERT', 'DIAC', 'Male', '1954-02-17', 183, 82, 745665578, 740993924, 'Dr. Nemes', 745819855, '', '', '', '', 'Finished', '32', '0'),
	(52, '226/2016', '1461025267390', 'Romania', '28', 'Idrifaia', 'Ioan ', 'Szabo ', 'Male', '1946-10-25', 169, 65, 751216912, 749419018, 'Szanto Agota', 265456161, 'com. Suplac, Str. Principala, Nr. 256, Jud. Mures', '', '<p>\n Sat Idrifaia, Com. Suplac, Nr. 219, Jud. Mures</p>\n', '', 'Finished', '47', '0'),
	(53, '204/2016', '2530309261465', '', '', '', 'VOICA', 'RACOTA', 'Female', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'In progress', '29', '29'),
	(54, '208/2016', '1420927191324', 'Romania', '21', 'Miercurea Ciuc', 'Francisc ', 'Csorvasi', 'Male', '1942-09-27', 175, 80, 748693996, 743341526, 'Bota Sandor', 266312218, 'Miercurea Ciuc, Str. Petofi Sandor, Nr.14', '', '<p>\n Miercurea Ciuc, str. Revolutiei din Decembrie, nr. 9, sc B, ap 9.</p>\n', '<p>\n Apartinator - fiica : Csilla Csorvasi</p>\n', 'Finished', '49', '49'),
	(55, '39/2016', '1491008264426', 'Romania', '28', 'Targu-Mures', 'Dumitru', 'Sipos', 'Male', '1949-10-08', 179, 99, 726228488, 743057371, 'Mathe Eva-Cornelia', 0, 'Tg-Mures, str.Stramba', '', '<p>\n str.Bld 1 Decembrie 1918 Nr.41/2</p>\n', '', 'Finished', '35', '0'),
	(56, '150/2016', '2580910264376', 'Romania', '28', 'Cipau', 'Maria', 'Daraban', 'Female', '1958-09-10', 156, 58, 755347020, 745391701, 'Mihaila Maria', 0, '', '', '<p>\n Loc.Cipau, str.Principala Nr.105</p>\n', '', 'Finished', '35', '0'),
	(57, '188/2016', '2481230240024', 'Romania', '26', 'Baia Mare', 'Ileana', 'Motet', 'Female', '1948-12-30', 160, 80, 0, 747218370, '', 0, '', '', '', '', 'In progress', '41', '0'),
	(58, '128/2016', '1380219264401', 'Romania', '28', 'Ceuasu de Campie', 'Bela', 'Nagy', 'Male', '1938-02-19', 170, 75, 0, 740773095, '', 0, '', '', '', '', 'In progress', '41', '0'),
	(59, '267/2016', '2390716260015', 'Romania', '28', 'sarmasu', 'Rozalia', 'Ilyes', 'Female', '1939-07-16', 160, 80, 745328746, 741250409, 'Dr. Moanca Maria', 265421096, 'Loc: Sarmasu', '', '', '', 'Finished', '32', '0'),
	(60, '251/2016', '1460309264408', 'Romania', '28', 'Targu Mures', 'Elemer', 'Kincses', 'Male', '1946-03-09', 182, 104, 723794678, 755843856, 'Dr. Szalkay Martha', 722660416, '', '', '<p>\n Jud: Mures; Loc: Targu Mures; Str. Samuel-Koteles Nr: 9/1B;&nbsp;</p>\n', '', 'Finished', '29', '29'),
	(61, '292/2016', '1530321060795', 'Romania', '5', 'Bistrita', 'Florea', 'Portius', 'Male', '1953-03-21', 175, 90, 263230532, 766551589, 'Bonea Viorica', 263232011, 'AL. GREUCEANU nr. 5 , BISTRIŢA', '', '<p>\n Bistrita, str. Ghinzii, nr. 24</p>\n', '', 'Finished', '49', '49'),
	(62, '249/2016', '2551225080155', 'Romania', '8', 'Harman', 'Marinela', 'Tohaneanu', 'Female', '1955-12-25', 160, 75, 747289278, 747289214, 'Dr. Bujor Carmen', 268419988, 'Brasov, Str. Republicii', '', '<p>\n Jud. Brasov, Sat Harman (Com. Harman), Str.Garii Nr.703</p>\n', '', 'Finished', '51', '51'),
	(63, '277/2016', '2480805264374', 'Romania', '28', 'Singeorgiu de Mures', 'Magdalena', 'Magyari', 'Female', '1948-08-05', 152, 68, 766417246, 766417247, 'Dr. Kuriatko Tamas', 265249030, 'Tg. Mures, Str. Viitorului Nr. 5-7', '', '<p>\n Jud. Mures, Loc. Singeorgiu de Mures, Str. Noua, Nr.3, Bl.A, Ap.6</p>\n', '', 'Finished', '51', '51'),
	(64, '242/2016', '1570517080037', 'Romania', '40', 'Sirineasca', 'Gheorghe', 'Sedecaru', 'Male', '1957-05-17', 167, 75, 763385940, 0, 'Popescu Adriana', 766881847, '', '', '', '', 'In progress', '30', '30'),
	(65, '286/2016', '1640204320798', 'Romania', '34', 'Arpasu de Jos', 'Gheorghe-Vasile', 'Vasu', 'Male', '1964-02-04', 177, 110, 747944397, 751848180, 'Serbu Gheorghe', 269520177, 'Arpasu de Jos, Nr. 381', '', '<p>\n Loc. Arpasu de Jos, Nr.64 , Jud. Sibiu</p>\n', '', 'Finished', '47', '0'),
	(66, '240/2016', '1390817260011', 'Romania', '28', 'Ludus', 'Gheorghe', 'Budian', 'Male', '1939-08-17', 160, 96, 744623895, 744585735, 'Dr. Jerca Cristina', 265413520, 'loc. Ludus, str Avram Iancu, nr 10', '', '<p>\n loc. Ludus, str. N. Grigorescu, nr. 45</p>\n', '', 'In progress', '28', '28'),
	(67, '294/2016', '2510709322284', 'Romania', '34', 'Alma Vii', 'Maria', 'Varga', 'Female', '1951-07-09', 160, 80, 269862588, 749061567, 'Dr. Chirita Rodica', 238722020, 'BUZAU STR. BUCEGI NR. 5 ', '', '<p>\n Jud. Sibiu, Comuna Mosna, Sat Alma Vii, Nr.167</p>\n', '', 'Finished', '51', '51'),
	(68, '312/2016', '1580304185994', 'Romania', '20', 'Bobaia', 'Dumitru', 'Docheru', 'Male', '1958-03-04', 170, 81, 767407361, 768335398, '', 0, '', '', '<p>\n Jug. Gorj, Sat Bobaia, Nr.88</p>\n', '<p>\n Pacientul nu cunoaste numele medicului de familie, si nici in foaie nu exista un bilet de trimitere de la acesta.</p>\n', 'Finished', '51', '51'),
	(69, '239/2016', '2610907264395', 'Romania', '28', 'Reghin', 'Maria', 'Trutia', 'Female', '1961-09-07', 164, 140, 0, 757369143, 'Filip Maria', 0, '', '', '<p>\n Str Duzilor, Nr 26</p>\n', '', 'In progress', '39', '0'),
	(70, '255', '1380118381458', 'Romania', '40', 'olteanca', 'Ion', 'Marinescu', 'Male', '1938-01-18', 75, 178, 763254171, 724275292, 'Dr. Sacerdotianu', 721218610, 'Glavile', '', '', '', 'In progress', '32', '0'),
	(71, '230/2016', '1400327190340', 'Romania', '21', 'Cristuru-Secuiesc', 'Albert', 'Demeter', 'Male', '1940-03-27', 164, 90, 756420913, 0, '', 0, '', '', '<p>\n Filias, nr 139</p>\n', '', 'Finished', '30', '30'),
	(72, '295/2016', '1360202191339', 'Romania', '21', 'Tusnad', 'Dionisie', 'Kovacs', 'Male', '1936-02-02', 160, 55, 725854786, 0, '', 0, '', '', '<p>\n str. Vrabia, nr. 61, Loc. Tusnad, jud. Harghita</p>\n', '<p>\n 0741476316 (vecin Gyorgy Alpar)</p>\n', 'In progress', '53', '0'),
	(73, '281/2016', '1540707261452', 'Romania', '28', 'Reghin', 'Chirila', 'Luca', 'Male', '1954-07-07', 165, 95, 784001006, 742099786, 'Dr. Ormenisan Vinita-Mieluta', 26551330, 'Reghin, Str. Mihai Viteazul nr. 13 F', '', '<p>\n Reghin, str. Vasile Pop, nr. 23</p>\n', '<p>\n Apartinator: fiul Darius Luca</p>\n', 'Finished', '49', '49'),
	(74, '288/2016', '2540908264388', 'Romania', '28', 'Caluseri', 'Elisabeta', 'Kutasi', 'Female', '1954-09-08', 160, 65, 374929771, 740860600, 'Szocs Erika', 742201517, 'Caluseri (com. Ernei), nr. 84', '', '<p>\n Caluseri (com. Ernei), nr. 89</p>\n', '<p>\n Pacienta nu are telefon la domiciliu, nr. de tel de contact fiind pentru vecin (vorbitor de L. maghiara) respectiv apartinator: fiica Molnar Kristina care nu locuieste in aceeasi localitate.</p>\n', 'Finished', '49', '49'),
	(75, '283', '1510601261458', 'Romania', '28', 'Ibanesti', 'Vasile', 'Pop', 'Male', '1951-06-01', 168, 65, 746358186, 753990926, 'Filep Maria', 265521164, 'Reghin, Str. Rodnei;punct secundar IBĂNEŞTI nr.648', '', '<p>\n Ibanesti, nr 709</p>\n', '<p>\n <b adress:="" ap.="" b="" background-color:="" font-family:="" font-size:="" gp="" line-height:="" nr.="" rodnei="" str.="">punct secundar IBĂNEŞTI nr.648</b></p>\n', 'Finished', '49', '49'),
	(76, '291/2016', '1450128323973', 'Romania', '34', 'Sibiu', 'Ioan', 'Vlad', 'Male', '1945-01-28', 170, 82, 0, 735708537, '', 0, '', '', '<p>\n Jud. Sibiu, Loc.Sibiu, Str.Nicolae Iorga, Nr.53, et.4, ap.19</p>\n', '', 'Finished', '51', '51'),
	(77, '330/2016', '1460105192470', 'Romania', '21', 'Odorheiu Secuiesc', 'Gavrila-Atila', 'Laszlo', 'Male', '1946-01-05', 167, 105, 749145910, 744268953, 'Dr. Laszlo Ilona', 741189130, 'Varsag Nr. 348', '', '<p>\n Jud. Harghita, Mun. Odorheiu Secuiesc, Str. Csaloka nr.31</p>\n', '', 'Finished', '51', '51'),
	(78, '299/2016', '1580704264364', 'Romania', '28', 'Tirgu Mures', 'ALBERT-PETER', 'CSIKI', 'Male', '1958-07-04', 183, 90, 745199623, 365415111, 'CHINEZU MARIANA', 265214656, 'Targu Mures, Aleea Carpati Nr. 1, ap. 2', '', '<p>\n Targu Mures, Aleea Carpati Nr. 1, ap. 14</p>\n', '', 'Finished', '47', '0'),
	(79, '198/2016', '1630603261456', 'Romania', '28', 'Reghin', 'Tudor', 'Botian', 'Male', '1963-05-31', 162, 70, 741666425, 265520466, 'Dr. Moldovan Alexandra', 265511085, '', '', '<p>\n Mun. Reghin, Jud. Mures, str. Vinatorilor, nr.46</p>\n', '', 'In progress', '46', '0'),
	(80, '157', '1680428202268', 'Romania', '35', 'Siret', 'Kamil', 'Haviar', 'Male', '2068-04-28', 172, 95, 745582036, 741067178, 'Dr Popovics Tamara', 727830646, 'str.28 Noiembrie, nr. 12, Siret, jud. Suceava', '', '<p>\n Siret, jud Suceava, str. Latcu Voda, nr.20, sc.A ap.4</p>\n', '', 'In progress', '46', '0'),
	(81, '236/2016', '1530421261466', 'Romania', '28', 'Rastolnita', 'Gheorghe', 'Lirca', 'Male', '1953-04-21', 168, 58, 755265866, 0, 'Maresan Rodica', 0, '', '', '<p>\n sat andreneasa 158</p>\n', '', 'In progress', '30', '30'),
	(82, '185/2016', '1400121270590', 'Romania', '29', 'Piatra-Neamt', 'Virgil', 'Lupascu', 'Male', '1940-01-21', 170, 70, 722567948, 751133658, 'Gafita Danut', 732281219, 'Dumbrava Rosie', '', '', '<p>\n telefon 2 medic familie &nbsp;0785725929</p>\n', 'In progress', '30', '30'),
	(83, '', '2460221322255', 'Romania', '', '', 'VETURIA', 'MARCUS', 'Female', '0000-00-00', 0, 0, 269700527, 746106437, 'Dr. Vladutiu Felicia', 0, '', '', '', '<p>\n Dr. Vladutiu &nbsp; Felicia-loc Medias</p>\n', 'In progress', '29', '29'),
	(84, '241/2016', '2570308264401', 'Romania', '28', 'Tirgu Mures', 'Tunde', 'Tabacaru', '', '1957-03-08', 150, 75, 746494191, 758674750, 'Dr. Stan Iulia', 745622257, '', '', '', '', 'Finished', '40', '0'),
	(85, '348/2016', '1481204323911', 'Romania', '34', 'Sibiu', 'Nicolae', 'Burchea', 'Male', '1948-12-04', 174, 87, 755110467, 269239132, 'Burchea Livia', 724251653, 'sat Racovita jud. Sibiu', '', '<p>\n Sibiu, Str. Strungului, nr. 42.</p>\n', '<p>\n Nr. tel apartinator = fix pentru sotie.</p>\n', 'Finished', '49', '49'),
	(86, '345/2016', '1781110384204', 'Romania', '40', 'sat Lunca', 'Gheorghe', 'Furdui', 'Male', '1978-11-10', 170, 94, 753696296, 756309675, 'Dr. Dina Aneta', 250754062, 'Judet: Valcea, Localitate: Bujoreni', '', '<p>\n Judet Valcea, Sat Lunca</p>\n', '', 'Finished', '51', '51'),
	(87, '376/2016', '1530101264443', 'Romania', '28', 'Tirgu Mures', 'Iosif', 'Panczi', 'Male', '1953-01-01', 170, 84, 0, 0, '', 0, '', '', '<p>\n Tg Mures, str. Pasunii, nr. 18A.</p>\n', '', 'New', '49', '49'),
	(88, '382/2016', '1500104323926', 'Romania', '34', 'Sibiu', 'Mihai Dumitru', 'Baltador', 'Male', '1950-01-04', 177, 85, 726196151, 723921002, 'Dr. Daniela Tibuleac', 269230078, 'Str. Nicolae Balcescu, Nr. 28, Sibiu', '', '<p>\n Sibiu, str. Anton-Pann, nr. 17.</p>\n', '<p>\n Apartinator: sotia Baltador Dorina.</p>\n', 'Finished', '49', '49'),
	(89, '337/2016', '2510128080076', 'Romania', '8', 'Brasov', 'Irodia', 'Serban', 'Female', '1951-01-28', 165, 65, 368425222, 743176587, 'Camarascu Rodica', 268313066, 'Bd. Saturn, 43, Brasov, Brasov, 500440', '', '<p>\n Brasov, str. Muncitorilor, nr 17, bl B9, sc A, ap 10.</p>\n', '<p>\n Apartinator = ginerele Ursu Marius</p>\n', 'Finished', '30', '30'),
	(91, '393/2016', '1540319323925', 'Romania', '34', 'Apoldu de Sus', 'Gheorghe', 'Dracosu', 'Male', '1951-03-19', 168, 95, 740299398, 0, '', 0, '', '', '<p>\n Apoldu de sus nr 48</p>\n', '', 'New', '30', '30'),
	(92, '271/2016', '2680504260026', 'Romania', '28', 'Danes', 'Anisoara', 'Balint', 'Female', '1968-05-04', 162, 74, 745010514, 744619334, 'Anghelina Maria', 365489078, 'Str. Principală Nr. 421', '', '<p>\n sat danes nr 396</p>\n', '', 'New', '30', '30'),
	(93, '', '0', '', '', '', 'Rudolf', 'Vidam', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '30'),
	(94, '', '12', '', '', '', 'Radu', 'Serban', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '30'),
	(95, '', '01', '', '', '', 'Andrei', 'Pintea', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '30'),
	(96, '428/2016', '2491020384231', '', '', '', 'Leonida', 'Pistol', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '30'),
	(97, '426/2016', '1610717264367', '', '', '', 'Csaba', 'Major Laszlo', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '30'),
	(98, '284/2016', '1530309264362', '', '', '', 'Gavrila', 'Belenyeri', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '25'),
	(99, '430/2016', '1680513260019', '', '', '', 'Zoltan', 'Barabas', '', '0000-00-00', 0, 0, 0, 0, '', 0, '', '', '', '', 'New', '', '25');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Dumping data for table admin_pci_registry.user: ~30 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `login`, `password`, `user_name`, `user_type`, `email`, `mobile`) VALUES
	(1, 'admin', '120ca595e2c87f33c323efa93916b03a61fc5ed0c33be4b36a16df2b4819c979', 'Oltean Tiberiu', 'admin', 'tiberiu@cardio.ro', '0757803257'),
	(25, 'susioana', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Ioana SUS', 'admin', 'susioana@yahoo.com', '0740970553'),
	(27, 'hadadilaci', '62d722ab8c74ecf66716d846937ae51c8daba30aa93f5203662daad14e4d4da0', 'Laszlo HADADI', 'admin', 'hadadilaci@yahoo.com', '0742933819'),
	(28, 'demjenzoltan', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Zoltan DEMJEN', 'admin', 'demjenzoltan@yahoo.com', '0747920213'),
	(29, 'cristina', '49877803644619a79f3c7a650cb0a93a084111841aa682e1a962d2b954f2d6dd', 'Cristina SOMKEREKI', 'admin', 'cristinasomkereki@yahoo.com', '0742866376'),
	(30, 'iuliagrancea', '5559b1c5047b9d4c22836a8e0d5d1ee2233b0beffd1d1d99902c9fc86d50868d', 'Grancea Iulia', 'admin', 'iuliagrancea@yahoo.com', '0742459977'),
	(31, 'nistor.dan', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Nistor Dan', 'user', 'dr.dan.nistor@gmail.com', '0745758678'),
	(32, 'mitricciprian', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Mitric Ciprian', 'user', 'mitric1985@gmail.com', '0748248958'),
	(33, 'rodiana.gusu', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Gusu Rodiana', 'user', 'rodiana_gusu@yahoo.com', '0754360840'),
	(34, 'mihaela.florea', '2d405296808fb3f11f41d7fb9f81d02c671c8cd9c1f9b07f52ca9661d422eb35', 'Florea Mihaela', 'user', 'mihaelaflorea_med@yahoo.com', '0745230870'),
	(35, 'kibedi.ildiko', 'a0556c5492700052c1a32d041cc22b65f623db391e282cb5953b995d03aba86b', 'kibedi ildiko', 'user', 'ss_ildi@yahoo.com', '0741052921'),
	(36, 'orlandea.cristina', '58e7c471d5e6f3d07bd10dd42c7dfb4742501344d6d4e5bb3d2e3c4ee5d124e9', 'Orlandea Cristina', 'user', 'criss_orl@yahoo.com', '0744987709'),
	(37, 'baghiu anca', 'c3a544966acf844a6ce438290d645a2097e4b3044152cdd9cfcb6b2a90ca7445', 'baghiu anca', 'user', 'anca_hadarig@yahoo.com', '0751395519'),
	(38, 'danila mihaela', '421922c2edbf8e4b2ce94d94373da4e72f4d4aabeeab880425a4a80a6313368b', 'danila mihaela', 'user', 'mihaeladanila_md@yahoo.com', '0743767623'),
	(39, 'gabrieladamatar', '65a7ecf1faf2a833a3d912df833290851117bb9538647bce3ecf59f3e0fd128d', 'gabriela damatar', 'user', 'gabrieladamatar@yahoo.com', '0742321401'),
	(40, 'madalina', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'cazan madalina', 'user', 'mada21_xyz@yahoo.com', '0722343539'),
	(41, 'alexandra', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'calugar alexandra', 'user', 'ionescualexandra2006@yahoo.com', '0771320575'),
	(42, 'oanac', 'eb4d3a2f58b047e5652f205503429ec573c363f8c6f187bb1c5252200803d685', 'COBOROSANU OANA', 'user', 'coborosanuoana@yahoo.com', '0755917092'),
	(43, 'kantorkatalin', 'f4ee7453502d1eab493e7fbceb6c0a3a9adcb6efe690b8836de1a8afe49f48eb', 'kantor katalin', 'user', 'kantor_kati@yahoo.com', '0743319458'),
	(44, 'mezosibalazs', '615144ed9ccb40da17b2c394aeca118c39a22ebb50909bf4121641120b559cb9', 'Mezosi Balazs', 'user', 'mezosibalazs@yahoo.com', '0753365639'),
	(45, 'csorjaadel', '68b4d8699b1ecb2d5c38074aa6ac7bf2e9f495c438a70f40aa71411b80c8fd07', 'Csorja Adel Andrea', 'user', 'csorjaa@gmail.com', '0741634020'),
	(46, 'zierhella', 'f36f957798073be913ac86691b548a9742f2559dff52b7cd249865bfde61a506', 'Zier Hella', 'user', 'hella_zier@yahoo.com', '0743375646'),
	(47, 'sorin.bernea', '37ccecd4f4ef2817b6c9de844f160ab0d875fa71d070d45f72ae962010469b7a', 'Bernea Sorin', 'user', 'sorin.bernea@yahoo.com', '0749079187'),
	(48, 'adorjan.istvan', '06d2134080314a0cf614d4d8127c9a0873ac3838f51c3202ebf03904b8fb8fd2', 'Adorjan Istvan', 'user', 'istvankaa@yahoo.com', '0755331542'),
	(49, 'simon.valentin', '90d5c9e20b56e4c5f0d628ee44b8d4be9ffc0304dbdc62609b244674ca7d5572', 'Simon Valentin', 'admin', 'valentin_s_ro@yahoo.com', '0742837571'),
	(50, 'marcelrusu', 'ddebd9425c86cefcba38649dde7f80b13085dbd5fb103feffd7e5a0958f6e538', 'Marcel Rusu', 'user', 'marcel_russu@yahoo.com', '0758083953'),
	(51, 'oana.dascal', '8f25d57c44791b0c4a8e475f529727f2ebe90e7c9dbd83a7af6d9351cec54e59', 'Dascal Oana', 'admin', 'oanadascal90@gmail.com', '0748121453'),
	(52, 'ioantilea', 'a36f829ce750c00497284627929a30b3542734fb71a364a32a19a2b429ebf314', 'Conf. Dr. Ioan TILEA', 'user', 'ioantilea2015@gmail.com', '0748164585'),
	(53, 'razvanmares', 'c095dcae78d0f3ea33dc7bc2cf52ec42b86da089a30c2a464a1242a9fa92f110', 'Razvan Mares', 'user', 'razvan_mares_7@yahoo.com', '0752697086'),
	(54, 'NicolaeViorel', 'bd9f56f7af352dcc8d1cb50652e2984e1b74249cb85ab0b633c29cc4d2c13c64', 'Nicolae Viorel', 'user', 'viorel.const@yahoo.com', '0748989048');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
