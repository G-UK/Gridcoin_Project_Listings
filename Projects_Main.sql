-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.29-MariaDB-6+b1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5196
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

-- Dumping data for table grc_listings.Projects_Main: ~38 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 315070895, 2086452, 2333792, 14092, 0.89, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-11 09:50:04', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 65157987681, 223664629, 216660338, 919024, 1.03, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 15:05:06', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 76229452053, 31275017, 53630340, 635724, 0.58, 7, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 14:16:52', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 353443280, 3608, 31693, 11, 0.11, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-11 16:55:25', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1593679853124, 47889175, 1452551623, 0, 0.03, 6, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Greylisted', '2018-07-11 16:16:58', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9819511733, 1436238, 3568485, 9332, 0.40, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-10 21:01:49', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-06-30 17:17:02', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 27762232757, 53318082, 52860654, 290545, 1.01, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:25:42', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-11 16:40:08', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854171006, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-07-11 16:45:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 597386572021, 0, 163290598, 2619284, 0.00, 21, 'Whitelisted', 'Greylisted (Override)', 'Greylisted (Override)', 'Greylisted (Override)', '1970-01-01 01:00:00', 'User Statistics inaccessible due to GDPR'),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 40198802494, 87877987, 93747579, 364546, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:24:43', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1269252419, 746151, 651060, 2219, 1.15, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-11 13:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1876228478, 9821100, 11122409, 35461, 0.88, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-11 16:40:02', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 692243379414, 473875551, 494877781, 1361863, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 12:45:16', NULL),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 12056456280, 12596258, 10803975, 72129, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 13:07:00', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 362377436438, 176962870, 165698268, 562796, 1.07, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 12:12:32', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859994870, 46, 334, 0, 0.14, 13, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-11 16:11:19', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 151498179684, 44041304, 40829073, 200325, 1.08, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-11 15:55:33', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 10848863677, 23044529, 14728296, 40046, 1.56, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 07:53:49', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 7657356159, 14941055, 14419608, 76573, 1.04, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-10 19:01:47', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 153531882, 384337, 304603, 2413, 1.26, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-11 05:25:17', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 605341088, 3028657, 3596734, 15648, 0.84, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 08:15:17', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4664550335, 731200, 809380, 3290, 0.90, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-10 21:00:10', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 754749261017, 345129939, 333376829, 1608517, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:31:21', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1517612154, 5620518, 6575483, 27266, 0.85, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-07-11 11:25:04', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 649846023, 594, 8635, 845, 0.07, 9, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-11 16:12:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 69406407543, 42000083, 43423400, 220204, 0.97, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-10 21:48:18', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 21, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-07-09 21:00:04', 'No total credit in tables.xml, No compute stats'),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5865640550, 14834338, 10802633, 47784, 1.37, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 15:55:12', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1461519754, 2932597, 3517086, 15052, 0.83, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 11:45:09', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 14301443269, 26819809, 31065683, 98665, 0.86, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:00:33', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1221429947, 2007612, 2146316, 10277, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 14:55:06', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 303742577125, 118284233, 111045201, 504079, 1.07, 0, 'Greylisted (Override)', 'Greylisted (Override)', 'Greylisted (Override)', 'Greylisted (Override)', '2018-07-11 14:04:25', 'User Statistics are inaccessible due to GDPR'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-07-10 23:10:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3918756927, 1176635, 779325, 641, 1.51, 14, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-07-10 17:45:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2509837146, 2320926, 2708543, 8255, 0.86, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:20:34', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 8075097027, 4485028, 5294483, 20316, 0.85, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-07-11 16:40:49', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
