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
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 157070927, 2353590, 637116, 10129, 3.69, 8, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 09:45:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 47682079079, 248285669, 310599569, 1993332, 0.80, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 15:05:09', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 71427020853, 51140297, 67058817, 254597, 0.76, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 07:16:50', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352072092, 3030, 62291, 12, 0.05, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 15:40:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1486553579260, 959316308, 1496598445, 6138857, 0.64, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 16:32:00', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9536543524, 4660739, 4926265, 24286, 0.95, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 13:11:44', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 6962339, 0, 0.00, 10, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 16:41:33', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 23159256965, 45126620, 69992630, 0, 0.64, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-23 16:35:42', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 274479, 0, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 16:20:08', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-27 18:35:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 568940871262, 779882572, 843385427, 3069989, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 14:22:39', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 32460204194, 103992210, 124188949, 315407, 0.84, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 15:36:50', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1225975175, 1243377, 718287, 2744, 1.73, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-27 17:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1225661728, 0, 21098345, 0, 0.00, 8, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-19 08:45:07', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 656414867544, 471504592, 437657213, 1029979, 1.08, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 11:40:18', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1602231748, 1287476, 1395372, 3397, 0.92, 0, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-04-27 13:00:20', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 11237251467, 19198712, 19388596, 25352, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 11:15:12', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 349815965588, 206615998, 251744692, 978659, 0.82, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 15:47:35', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 18:11:18', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 148065560884, 60491715, 88385483, 207163, 0.68, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-27 18:55:28', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9796790685, 15104085, 17860767, 31187, 0.85, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 10:35:09', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 6102970094, 14396969, 15789576, 0, 0.91, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-04-26 22:10:58', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 132979986, 435008, 393146, 1167, 1.11, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 06:05:14', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 346254689, 3030936, 4261160, 14993, 0.71, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 06:45:11', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4607118535, 663667, 717749, 0, 0.92, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 21:00:13', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 723965683988, 417869543, 516669083, 1579957, 0.81, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 18:51:01', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1060412618, 7543437, 6621105, 0, 1.14, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-26 21:20:04', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648828084, 65306, 20650, 48, 3.16, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 18:27:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 66172206946, 48361179, 58461820, 216809, 0.83, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 00:26:28', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-04-26 23:00:04', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19980979785, 23026233, 24382699, 33473, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 18:15:34', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 34075379, 115300, 136091, 235, 0.85, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 18:55:02', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5237555084, 5413394, 13012025, 3600, 0.42, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 17:50:10', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1271456138, 0, 968216, 1258, 0.00, 7, 'Whitelisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-27 10:35:14', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11466473519, 23130476, 19587612, 125147, 1.18, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 18:00:33', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1055572096, 2671681, 3592683, 12342, 0.74, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 12:20:05', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 295292938233, 134625298, 142867589, 601095, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 12:06:02', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-04-26 21:50:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3863306242, 123, 501034, 0, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-27 13:50:03', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2286584421, 4316188, 6143571, 18576, 0.70, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 18:40:25', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7656723348, 8026485, 11138207, 33237, 0.72, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-27 18:50:48', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
