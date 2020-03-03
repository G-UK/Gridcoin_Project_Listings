-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.3.22-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.3.0.5771
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
  `Vote (In/Out)` tinytext DEFAULT NULL,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` double unsigned DEFAULT NULL,
  `Project Avg Daily Credit (7 Day)` float unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` float unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` int(11) DEFAULT 0,
  `Active Users` int(11) DEFAULT 0,
  `Workunit Queue` int(11) DEFAULT 0,
  `Compute Availability` int(11) DEFAULT 0 COMMENT 'Compute Available / Active Users',
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  KEY `Project ID` (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~33 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Compute Availability`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('amicable', 'Amicable Numbers', 'Yes', 'In', '2017-02-22', 154438477878, 131235000, 150576000, 156600, 1922, 2893, 110, 0.87, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 20:05:04', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'NO VOTE', '0000-00-00', 107174782773, 67064900, 61200400, 337612, 13049, 0, 26, 1.10, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 15:07:22', NULL),
	('cas', 'CAS@Home', 'No', 'NO VOTE', '0000-00-00', 355790570, 365, 1521, 13, 36, 0, 0, 0.24, 7, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 15:05:25', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'NO VOTE', '0000-00-00', 3417924342069, 3814650000, 3843590000, 19183765, 2778, 798, 6914, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 22:47:36', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'NO VOTE', '0000-00-00', 12496046627, 5692670, 5616430, 28865, 5565, 997, 15, 1.01, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 16:36:50', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'Out', '2017-09-24', 41409798938, 3744960, 10893900, 28443, 7230, 728, 11, 0.34, 17, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 19:50:43', 'Project only periodically updates stats'),
	('csg', 'Citizen Science Grid', 'Yes', 'Out', '2019-05-29', 34276761962, 13078, 9130, 41, 13, 0, 3, 1.43, 19, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 15:40:52', NULL),
	('einstein', 'Einstein', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'Stats only available to official network. Listing Manually set'),
	('gerasim', 'Gerasim', 'No', 'NO VOTE', '0000-00-00', 2150204033, 2337240, 1664390, 4942, 422, 6249290, 62505, 1.40, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-03-02 20:58:00', NULL),
	('gpugrid', 'GPUGrid', 'Yes', 'NO VOTE', '0000-00-00', 954621856231, 588643000, 349333000, 2003427, 3550, 310484, 3669, 1.69, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 19:50:24', NULL),
	('lhc', 'LHC@Home', 'Yes', 'NO VOTE', '0000-00-00', 22752954946, 15024900, 11056400, 58120, 8993, 3387, 40, 1.36, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 11:36:41', NULL),
	('milkyway', 'Milkyway', 'Yes', 'In', '2015-07-20', 481385770021, 243667000, 281987000, 1478464, 14375, 11056, 213, 0.86, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 19:12:25', NULL),
	('moowrap', 'MooWrap', 'Yes', 'Out', '2018-02-09', 193818014723, 92476600, 95196700, 413178, 1890, 2813, 247, 0.97, 2, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-03-02 22:52:57', NULL),
	('nfs', 'NFS', 'Yes', 'NO VOTE', '0000-00-00', 16477623394, 10313400, 8066000, 40726, 1299, 2978637, 29818, 1.28, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 13:46:52', NULL),
	('numberfields', 'Numberfields', 'Yes', 'NO VOTE', '0000-00-00', 14005164359, 6202630, 5119170, 162962, 1155, 110745, 1249, 1.21, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 05:42:26', NULL),
	('odlk', 'ODLK', 'Yes', 'Out', '2017-10-05', 497397413, 789649, 793191, 3222, 401, 328485, 3293, 1.00, 2, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-03-02 10:10:30', NULL),
	('odlk1', 'ODLK1', 'Yes', 'In', '2018-01-17', 2211394154, 3292410, 2407130, 12933, 498, 56240, 588, 1.37, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 08:10:41', NULL),
	('primaboinca', 'Primaboinca', 'No', 'NO VOTE', '0000-00-00', 5237258935, 1135240, 1259760, 6885, 275, 0, 25, 0.90, 2, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-03-02 21:00:21', 'Compute estimated, No active User data (Set to 275 from Boincstats)'),
	('primegrid', 'Primegrid', 'Yes', 'Out', '2018-11-13', 984532573750, 450652000, 420291000, 1930000, 4272, 57181, 1024, 1.07, 2, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 21:56:17', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', 'NO VOTE', '0000-00-00', 7194006189, 1796600, 1429380, 7468, 529, 5204, 66, 1.26, 2, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-03-02 08:00:05', NULL),
	('rnaworld', 'RNA World', 'Yes', 'NO VOTE', '0000-00-00', 659583871, 0, 2098, 4, 6, 0, 1, 0.00, 15, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 22:27:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'NO VOTE', '0000-00-00', 88241312578, 26750200, 29340100, 165020, 24443, 23030, 237, 0.91, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 21:11:57', NULL),
	('seti', 'SETI@Home', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('srbase', 'SRBase', 'No', 'In', '2016-10-28', 9843444000, 5981800, 2234220, 18311, 382, 24028, 288, 2.68, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 23:10:14', NULL),
	('tngrid', 'TNGrid', 'Yes', 'In', '2017-03-17', 3222032730, 3672520, 3097080, 17324, 588, 11957, 149, 1.19, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 23:30:27', NULL),
	('universe', 'Universe@Home', 'Yes', 'NO VOTE', '0000-00-00', 53456541223, 565452000, 118304000, 422788, 6869, 322992, 3291, 4.78, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 23:00:18', NULL),
	('vgtu', 'VGTU', 'Yes', 'In', '2016-10-28', 1575240973, NULL, 0, 1, 10000, 0, 0, 0.00, 13, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2020-03-02 23:45:02', NULL),
	('wcg', 'World Community Grid', 'Yes', 'NO VOTE', '0000-00-00', 391396828404, 73684400, 130096000, 723999, 40000, 0, 18, 0.57, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 12:06:03', 'No active User data (Set to 40,000 from boincstats)'),
	('wep', 'WEP M+2', 'No', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('yafu', 'YAFU', 'Yes', 'In', '2015-09-20', 4086633088, 2405020, 2227520, 11388, 316, 495, 41, 1.08, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 23:50:27', NULL),
	('yoyo', 'Yoyo', 'Yes', 'NO VOTE', '0000-00-00', 11777730098, 6275910, 5799880, 28634, 2500, 6663, 78, 1.08, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-03-02 23:50:47', 'No active User data (Set to 2,500 from boincstats)'),
	('nano', 'NanoHub', 'Yes', 'NO VOTE', '0000-00-00', NULL, 0, 0, NULL, NULL, NULL, NULL, 0.00, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', NULL, NULL),
	('quchem', 'QuChemPedi', 'Yes', 'NO VOTE', '0000-00-00', 178946853, 3455600, 2567280, NULL, NULL, NULL, NULL, 1.35, 2, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-03-02 23:35:02', NULL);
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
