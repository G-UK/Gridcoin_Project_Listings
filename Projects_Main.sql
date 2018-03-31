-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.26-MariaDB-0+deb9u1 - Debian 9.1
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table grc_listings.Projects_Main
CREATE TABLE IF NOT EXISTS `Projects_Main` (
  `Project ID` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Project Name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `HTTPS` tinytext COLLATE latin1_general_ci,
  `SSL/TLS Version` tinytext COLLATE latin1_general_ci,
  `HTTPS Providor` tinytext COLLATE latin1_general_ci,
  `Vote (In/Out)` tinytext COLLATE latin1_general_ci,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (7 Day)` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` bigint(20) unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` bigint(20) unsigned NOT NULL DEFAULT '0',
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Days Credit)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Recommended Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Notes` text COLLATE latin1_general_ci,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~42 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Days Credit)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 129560465, 0, 0, 1, 0.00, 20, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 20244658227259, 270250463, 268990735, 1131, 1.00, 1, 'Whitelisted', 'Whitelisted', 'Greylisted', 'Greylisted', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 69969324693, 52643863, 71797884, 308433, 0.73, 5, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 350729960, 2201, 3353, 20, 0.66, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1469855780414, 2038152877, 2579424012, 88786, 0.79, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9411042703, 4122146, 5217791, 23530, 0.79, 5, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35479104301, 11758179, 17355907, 69286, 0.68, 18, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 21738039206, 54848499, 74023858, 317586, 0.74, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-01-29', 934396997, 289855, 387320, 0, 0.75, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Does not export compute stats'),
	('denis', 'DENIS', 'No', NULL, NULL, 'Out', '2017-02-23', 1317661705, 230438, 58326, 1574, 3.95, 9, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 83, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 550842237104, 697283417, 772410638, 6780, 0.90, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 29802787841, 84501810, 125133715, 530367, 0.68, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1206635072, 405126, 716759, 1502, 0.57, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1036387978, 14324200, 36918863, 112518, 0.39, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 646512928032, 226084308, 491643570, 0, 0.46, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Needs custom compute query (Not in XML)'),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1576968721, 705755, 1030767, 0, 0.68, 2, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', 'Does not export compute stats'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 10812208688, 14133494, 15183718, 76957, 0.93, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 344462085244, 183790598, 223899448, 920201, 0.82, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 146524327903, 69938633, 64020628, 250104, 1.09, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Voted out on 2018/02/10'),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9416502501, 11822051, 18285212, 72346, 0.65, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 5743607485, 13489543, 15801285, 64470, 0.85, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 124938635, 354544, 635351, 1928, 0.56, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 260004875, 3067829, 3879267, 17254, 0.79, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4589336335, 700967, 748092, 0, 0.94, 5, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Does not export compute stats'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 712513173855, 312442511, 460510463, 0, 0.68, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Needs custom compute query (Not in XML)'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 893003494, 6433997, 7803802, 31447, 0.82, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648298778, 13514, 20682, 33, 0.65, 7, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65093126881, 22164273, 40551106, 170720, 0.55, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 7, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Does not include total credit in tables.xml, Does not export compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19461118599, 16023522, 21740242, 94960, 0.74, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 31870546, 79591, 105811, 519, 0.75, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 4962960044, 15144357, 13251313, 74567, 1.14, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 'Out', '2017-07-26', 1011841964, 87003, 15225, 0, 5.71, 18, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'Does not export compute stats'),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1251789023, 819036, 1056925, 4837, 0.77, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11046691585, 7337552, 6498738, 40005, 1.13, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 965384379, 1972748, 2500392, 11581, 0.79, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 292157170504, 409210719, 196564746, 0, 2.08, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 1694, 0.00, 6, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', 'Does not include total credit in tables.xml, Does not export compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3851614632, 0, 639144, 1376, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2173695877, 2961576, 4121320, 17628, 0.72, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7472657712, 6764118, 8753534, 0, 0.77, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Does not export compute stats');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
