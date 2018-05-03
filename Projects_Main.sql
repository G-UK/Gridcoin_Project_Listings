-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.29-MariaDB-6 - Debian buildd-unstable
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
  `Project ID` varchar(255) NOT NULL,
  `Project Name` varchar(255) NOT NULL,
  `HTTPS` tinytext,
  `SSL/TLS Version` tinytext,
  `HTTPS Providor` tinytext,
  `Vote (In/Out)` tinytext,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (7 Day)` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` bigint(20) unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` bigint(20) unsigned NOT NULL DEFAULT '0',
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Calculated Status` tinytext NOT NULL,
  `Calculated Status (Experimental)` tinytext NOT NULL,
  `Recommended Status (Experimental)` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~41 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 169888907, 2247288, 963285, 8985, 2.33, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-05-03 09:45:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 50124992863, 405235884, 301801217, 1311114, 1.34, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 15:05:05', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 71760918453, 53927109, 60274181, 291288, 0.89, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 07:21:51', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352088860, 2614, 61928, 15, 0.04, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 15:45:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1494674399421, 1298116296, 1109410515, 7131092, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 16:36:59', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9566214083, 4883294, 4969530, 25439, 0.98, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 13:16:42', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 3429469, 0, 0.00, 16, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 15:33:15', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 23701016428, 69563568, 63828813, 274072, 1.09, 7, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 02:15:58', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 256700, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 16:20:08', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-05-03 18:35:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 572649409147, 566007514, 763292716, 3274013, 0.74, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 14:23:15', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 33047113359, 93236209, 106807592, 498182, 0.87, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 15:38:54', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1229932983, 659193, 701283, 3076, 0.94, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-05-03 17:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1225661728, 0, 11986992, 0, 0.00, 14, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '1970-01-01 01:00:00', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 658936022480, 405402804, 376807838, 1769865, 1.08, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 11:45:15', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1610485222, 1194093, 1348896, 7858, 0.89, 0, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-05-03 13:25:20', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 11296881449, 9698439, 16804439, 45033, 0.58, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 11:15:23', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 350925549874, 176193761, 227646214, 954057, 0.77, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 16:47:33', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859967202, 43943, 7887, 0, 5.57, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 18:11:19', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 148326026928, 43533552, 81771865, 240943, 0.53, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-05-03 17:35:30', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9880811761, 12761602, 14981602, 73498, 0.85, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 10:31:21', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 6144612082, 10169211, 12630095, 0, 0.81, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-05-02 22:11:06', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 134700638, 304099, 353259, 1056, 0.86, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 14:10:12', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 366781285, 3291877, 3656025, 16970, 0.90, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 06:55:13', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4609465335, 531829, 642128, 0, 0.83, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-02 21:00:11', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 726156060799, 347141454, 442131671, 1892719, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:57:03', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1080519631, 4773658, 6002410, 0, 0.80, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-02 21:20:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648840923, 64265, 17462, 30, 3.68, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 17:02:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 66431910615, 43598455, 54160648, 207253, 0.80, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 00:24:43', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-05-02 23:30:04', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19994757451, 5875008, 18895060, 4292, 0.31, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:31:20', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 34199736, 29285, 109967, 304, 0.27, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 16:15:02', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5246717843, 1287383, 11567174, 13084, 0.11, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:45:09', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1272355513, 107819, 746771, 1981, 0.14, 7, 'Greylisted', 'Whitelisted', 'Greylisted', 'Greylisted', '2018-05-03 10:35:10', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11627332185, 26919619, 21082692, 115167, 1.28, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:00:30', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1070075510, 2445802, 3370950, 11997, 0.73, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 12:20:05', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 296013165720, 120455797, 128020928, 590991, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 12:06:02', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-05-02 21:50:03', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3868592506, 755181, 441702, 0, 1.71, 11, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-03 13:55:03', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2312150769, 4099353, 5849409, 24404, 0.70, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:50:24', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7692426408, 6058211, 9658723, 34904, 0.63, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-03 18:35:53', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
