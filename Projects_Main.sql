-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.3.12-MariaDB-2 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.1.0.5479
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table grc_listings.Projects_Main
CREATE TABLE IF NOT EXISTS `Projects_Main` (
  `Project ID` varchar(50) NOT NULL,
  `Project Name` text NOT NULL,
  `HTTPS` tinytext DEFAULT NULL,
  `SSL/TLS Version` tinytext DEFAULT NULL,
  `HTTPS Providor` tinytext DEFAULT NULL,
  `Vote (In/Out)` tinytext DEFAULT NULL,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` double unsigned DEFAULT NULL,
  `Project Avg Daily Credit (7 Day)` float unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` float unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` int(10) unsigned DEFAULT 0,
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  KEY `Project ID` (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~41 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 879483989, 7530390, 4057750, 29922, 1.86, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-02-19 20:55:05', 'Project not TLS/SSL'),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 114889409349, 79582100, 124531000, 90800, 0.64, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 14:05:06', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 87658569333, 65443500, 61709500, 317078, 1.06, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-19 19:42:10', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 353958473, 1870, 2744, 20, 0.68, 6, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 11:30:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 2179183829764, 2459890000, 2937600000, 14742024, 0.84, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 16:17:18', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 10682708265, 4979690, 5130440, 30082, 0.97, 3, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 03:01:25', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 37930500529, 30699600, 7722240, 37737, 3.98, 20, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 11:07:19', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 34103455093, 0, 3071250, 19744, 0.00, 9, 'Whitelisted', 'Greylisted', 'Unsuitable for Rewards', '2019-02-10 19:00:49', NULL),
	('dbn', 'DBN Upper Bound', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4716085, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 17:00:02', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 0, 2, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 16:25:07', NULL),
	('dhep', 'Distributed Hardware Evolution', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-09-28', 8904724979, 55328700, 78305100, 369651, 0.71, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 12:18:15', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854171006, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-08-07 22:00:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, 0, NULL, 0, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2019-02-20 16:18:42', 'Stats are not publically available. Listing is Manually set'),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 60512435379, 83328800, 103724000, 518902, 0.80, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 16:18:42', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1543792682, 1305980, 1728960, 2554, 0.76, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 16:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2227858154, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-01-04 14:03:20', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 807907336451, 760093000, 614546000, 3539566, 1.24, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 14:25:19', NULL),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 14719753332, 11794100, 15707000, 60544, 0.75, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 09:33:02', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 403059648152, 175207000, 196391000, 1036711, 0.89, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 08:22:29', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 912210023, 0, 0, 11, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 17:11:21', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 162546105188, 68452800, 71941500, 369424, 0.95, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-02-20 16:05:55', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 13080625706, 10515800, 8923700, 50345, 1.18, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 08:13:59', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 10392683881, 8359820, 10362400, 44397, 0.81, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 05:55:29', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-10-05', 276571130, 643549, 784565, 3152, 0.82, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 08:20:20', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 1300329978, 3071940, 3070440, 15620, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 06:47:39', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4856570935, 797771, 857220, 0, 0.93, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-19 21:00:15', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-11-13', 837264371794, 380352000, 358527000, 2182000, 1.06, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 14:24:29', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 3950995298, 24302500, 14864200, 110920, 1.63, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-02-20 04:35:05', NULL),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 654546914, 23950, 23397, 21, 1.02, 11, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 16:12:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 76338872186, 32219500, 30356800, 155542, 1.06, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-19 21:14:01', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, 0, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 7525974363, 6332210, 3446020, 23108, 1.84, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 16:15:15', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 2120032172, 2868640, 2991940, 14732, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 12:35:35', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 24056001582, 73171500, 99249900, 493792, 0.74, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 17:02:31', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1575240973, 0, 471, 34, 0.00, 19, 'Whitelisted', 'Greylisted', 'Unsuitable for Rewards', '2019-02-20 17:00:02', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 337260727138, 156287000, 0, 730328, 0.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 12:06:02', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', NULL, NULL, NULL, 0, NULL, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 4010079076, 1091130, 507663, 3462, 2.15, 14, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-20 15:00:03', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 3123496310, 1847380, 2706080, 12406, 0.68, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 17:45:18', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 9599634585, 5892810, 7432910, 22246, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-02-20 17:10:50', 'Compute estimated'),
	('nano', 'NanoHub', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1743480, 1405, 14693, 61, 0.10, 3, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-02-19 23:40:04', NULL);
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
