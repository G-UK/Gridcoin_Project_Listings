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
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 155045099, 1571418, 446182, 12271, 3.52, 11, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 09:45:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 47205179377, 181053658, 301603651, 1021772, 0.60, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 15:05:05', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 71376101493, 29234743, 66961480, 254652, 0.44, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 07:16:54', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352069655, 2071, 62126, 10, 0.03, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 15:40:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1485325807841, 817483225, 1533737422, 5822205, 0.53, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 16:31:59', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9531686237, 3369371, 4798655, 23715, 0.70, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 13:15:33', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 7265049, 0, 0.00, 9, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 16:33:23', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 23159256965, 35911030, 68264606, 0, 0.53, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-23 16:35:42', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 274699, 0, 0.00, 14, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 16:20:08', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-26 18:35:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 568326873378, 565268959, 805701155, 2993473, 0.70, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 14:26:57', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 32364375897, 76618398, 116860902, 332117, 0.66, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 15:36:55', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1225321803, 868188, 636832, 2915, 1.36, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-26 17:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1225661728, 0, 22286067, 0, 0.00, 7, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-19 08:45:07', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 656063236801, 272086989, 408341588, 1455125, 0.67, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 11:40:17', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1601318536, 1251450, 1329396, 3603, 0.94, 2, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-04-26 13:00:20', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 11232181063, 15831414, 18715803, 60976, 0.85, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 11:15:48', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 349620233860, 158574499, 241949595, 594259, 0.66, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 14:42:53', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 18:11:20', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 148024128291, 71504689, 88184861, 255124, 0.81, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-26 18:45:16', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9783576799, 10863069, 16916344, 32947, 0.64, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 10:37:43', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 6088211254, 9545171, 14661737, 0, 0.65, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-25 22:11:02', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 132746619, 334852, 371632, 1929, 0.90, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 11:30:15', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 343256002, 2344568, 4056287, 14559, 0.58, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 06:45:12', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4606413735, 440567, 666246, 0, 0.66, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-25 21:00:10', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 723593031056, 335706742, 500261184, 1525816, 0.67, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 18:51:13', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1053050437, 5880717, 6209626, 0, 0.95, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-25 21:20:04', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648818486, 3505, 9815, 2167, 0.36, 4, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 18:27:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 66128845144, 53775041, 58468991, 217872, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 00:25:38', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-04-25 22:50:05', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19974285092, 16718802, 23257169, 74116, 0.72, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 18:13:50', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 34028349, 126212, 135461, 472, 0.93, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 18:50:02', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5236421005, 5364345, 13218822, 5804, 0.41, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 17:50:10', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1271204614, 156470, 978743, 0, 0.16, 7, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-20 14:20:09', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11441444185, 26657714, 19303323, 127913, 1.38, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 18:00:30', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1053103686, 2956876, 3557152, 12741, 0.83, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 12:20:05', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 295172719135, 99895217, 137029459, 604500, 0.73, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 12:06:02', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-04-25 21:50:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3863306242, 233, 501034, 0, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 13:50:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2282869288, 4808449, 6111759, 21474, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 18:55:34', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7650075949, 8790941, 11147715, 35189, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-26 18:45:49', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
