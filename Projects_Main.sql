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
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Recommended Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~43 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 129560465, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 09:30:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 42413281110, 330335617, 298678615, 2157229, 1.11, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 15:05:06', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 70459134453, 84760869, 76238400, 608954, 1.11, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 08:41:51', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352024320, 342053, 62620, 74, 5.46, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 15:30:25', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1475562166156, 1027993283, 2401562673, 333, 0.43, 4, 'Whitelisted', 'Whitelisted', 'Greylisted', 'Greylisted', '2018-04-08 16:46:45', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9449103716, 6167273, 5504681, 45679, 1.12, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 13:01:53', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, NULL, 14093541, 0, NULL, 12, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-01 10:08:07', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 22232388094, 72539136, 78769234, 573782, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 16:15:42', NULL),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-01-29', 937029534, 592790, 448691, 1497, 1.32, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 18:35:04', 'Compute estimated'),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323236393, 938216, 274147, 341, 3.42, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 16:15:07', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-08 18:45:06', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 556359671872, 1001734026, 848409790, 6520257, 1.18, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 14:22:37', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 30614887663, 142706123, 133572226, 842049, 1.07, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 15:22:56', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1209643511, 532425, 640146, 3633, 0.83, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-08 17:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1125681328, 17920300, 32842917, 86396, 0.55, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-08 18:30:03', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 649319999703, 512013727, 494561334, 3393585, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 11:25:18', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1583861477, 1364096, 1139674, 7260, 1.20, 0, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-04-08 18:35:22', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 10936268327, 22649089, 18480403, 143313, 1.23, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 10:56:36', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 346075938335, 284785643, 245259377, 2086006, 1.16, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 16:07:53', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 18:11:18', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 146919499010, 73961034, 68769762, 520260, 1.08, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-08 18:05:01', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9531431305, 19942935, 19221843, 104159, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 10:16:46', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 5826687669, 10524271, 15356379, 64862, 0.69, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-07 22:00:31', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 126931938, 411910, 479800, 1303, 0.86, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 11:30:22', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 287786372, 5024873, 4387609, 33655, 1.15, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 06:20:11', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4594703735, 663486, 692650, 3011, 0.96, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-07 21:00:06', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 716106502968, 605467476, 517743042, 4301439, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 18:15:35', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 939458893, 5509173, 7756327, 20008, 0.71, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-07 21:10:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648314971, 9578, 21907, 19, 0.44, 4, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 18:57:07', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65399019990, 61116520, 45376199, 376566, 1.35, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 00:20:00', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 16, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-04-08 13:30:04', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19621158088, 27333928, 24731774, 184799, 1.11, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 18:06:20', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 32406538, 81190, 109741, 615, 0.74, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 18:00:03', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5082981338, 21521855, 17794089, 149513, 1.21, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 16:35:11', NULL),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 'Out', '2017-07-26', 1012103887, 37235, 23739, 316, 1.57, 8, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 15:15:52', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1259660387, 1427588, 1192232, 9476, 1.20, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 13:10:15', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11116040785, 6012095, 7558621, 293503, 0.80, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 18:00:43', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 999097131, 5080714, 3107289, 82547, 1.64, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 09:20:05', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 293044329773, 158703955, 151532871, 1112349, 1.05, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 12:06:03', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 16, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-04-07 21:45:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3856742463, 831038, 540520, 0, 1.54, 12, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-08 13:50:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2206996710, 6231727, 4750799, 47843, 1.31, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 18:15:25', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7530222039, 11254426, 9713461, 63499, 1.16, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-08 18:00:49', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
