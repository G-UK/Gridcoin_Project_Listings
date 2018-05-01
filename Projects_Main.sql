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
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 164484347, 2439516, 873097, 13221, 2.79, 5, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-30 09:45:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 49288024008, 394163204, 333198145, 2082134, 1.18, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 21:05:05', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 71580437493, 58359154, 60206867, 253032, 0.97, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 07:16:49', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352080907, 2869, 62124, 12, 0.05, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 15:45:23', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1490945750183, 1200292757, 1283114820, 2446437, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:32:01', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9550722631, 4729777, 5368116, 24853, 0.88, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 13:16:58', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 3429469, 0, 0.00, 14, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 15:33:15', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 23159256965, 9103925, 59199525, 0, 0.15, 7, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-23 16:35:42', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 271574, 0, 0.00, 19, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 16:20:07', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-05-01 00:55:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 570709170634, 559864542, 803717858, 2937040, 0.70, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 14:26:01', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 32741308708, 91043983, 114089967, 465807, 0.80, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 23:36:50', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1227972691, 843731, 711393, 3413, 1.19, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-30 21:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1225661728, 0, 15533394, 0, 0.00, 12, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '1970-01-01 01:00:00', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 657945820553, 479796261, 409230934, 2768252, 1.17, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 19:40:17', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1605925490, 1060560, 1376781, 7029, 0.77, 1, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-04-30 19:10:22', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 11270130409, 11222929, 17999957, 46492, 0.62, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 11:15:50', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 350391747448, 187759639, 241007532, 896769, 0.78, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 23:47:44', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859961127, 43038, 8142, 2, 5.29, 17, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-01 00:11:19', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 148178422203, 43888871, 84667831, 212846, 0.52, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-30 23:05:24', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9837262201, 12971586, 16167821, 72270, 0.80, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 22:30:52', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 6102970094, 6283674, 12966168, 0, 0.48, 5, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-30 22:11:19', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 134020059, 342849, 376163, 1718, 0.91, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 14:10:17', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 356407874, 3049537, 3925047, 17612, 0.78, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 06:55:13', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4607118535, 286943, 580595, 0, 0.49, 5, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 21:00:17', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 725002437420, 336580124, 475912706, 1779232, 0.71, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 22:50:57', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1060412618, 2674590, 5873346, 0, 0.46, 5, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 21:20:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648833079, 64162, 18488, 0, 3.47, 4, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-01 00:52:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 66349255272, 43608473, 57458442, 216182, 0.76, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:26:56', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-04-30 23:10:04', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19990753890, 11505263, 21282425, 11498, 0.54, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 18:26:08', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 34129636, 41069, 119424, 8, 0.34, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-05-01 00:55:03', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5239958074, 1300565, 11757536, 2459, 0.11, 1, 'Whitelisted', 'Whitelisted', 'Greylisted', 'Greylisted', '2018-04-30 22:40:10', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1271949251, 106377, 855358, 47, 0.12, 8, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-30 22:35:08', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11555464185, 26151809, 21425602, 35170, 1.22, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:02:30', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1063935287, 2444561, 3508278, 6375, 0.70, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:20:05', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 295653547430, 119764789, 135913297, 606363, 0.88, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-30 12:06:02', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-04-30 21:50:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3868533458, 746745, 446584, 1536, 1.67, 13, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-30 13:50:03', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2299711917, 3845119, 6030006, 5052, 0.64, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:05:27', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7674585102, 6312082, 10322695, 6397, 0.61, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-05-01 00:55:53', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
