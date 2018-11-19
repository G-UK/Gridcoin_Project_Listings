-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.1.37-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5338
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
  `HTTPS` tinytext,
  `SSL/TLS Version` tinytext,
  `HTTPS Providor` tinytext,
  `Vote (In/Out)` tinytext,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` double unsigned NOT NULL,
  `Project Avg Daily Credit (7 Day)` float unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` float unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` int(10) unsigned DEFAULT '0',
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text,
  KEY `Project ID` (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~40 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
REPLACE INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 573883379, 1900080, 1880030, 9916, 1.01, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-11-19 09:45:04', 'Project not TLS/SSL'),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 96593793282, 298874000, 261469000, 244648, 1.14, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 20:05:08', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 83242714293, 50050600, 55450900, 265823, 0.90, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 21:32:04', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 353724644, 3765, 1871, 21, 2.01, 9, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 22:20:23', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1902210192052, 2913830000, 2210340000, 14474313, 1.32, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 21:52:21', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 10274852075, 1662950, 2204870, 11154, 0.75, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 18:28:36', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 37051420620, 12207300, 11791300, 138603, 1.04, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 11:38:52', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 33259568383, 26538700, 35812000, 164330, 0.74, 8, 'Whitelisted', 'Greylisted', 'Unsuitable for Rewards', '2018-11-19 12:01:24', NULL),
	('dbn', 'DBN Upper Bound', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4703699, 2351850, 2351850, 56, 1.00, 2, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 22:20:01', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 0, 2, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 16:10:08', NULL),
	('dhep', 'Distributed Hardware Evolution', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-09-28', 2789172396, 19187100, 22844100, 163708, 0.84, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 18:17:07', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854171006, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-08-07 22:00:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 597386572021, 0, 0, 2619284, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-06-13 13:42:27', 'Stats unavailable, awaiting stats scraper'),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 51124329184, 95721500, 81664000, 460200, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 20:56:41', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1393924121, 1052780, 961256, 1779, 1.10, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 20:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2222928028, 0, 0, 9, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 23:20:03', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 744200483819, 541776000, 528130000, 2885896, 1.03, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 20:55:18', NULL),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 13023254541, 4680070, 5088260, 27571, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 09:08:37', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 384464057262, 182628000, 185192000, 902860, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 23:12:59', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 910759769, 52758, 1101980, 1567, 0.05, 5, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 22:11:19', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 156622054207, 38362700, 41661400, 0, 0.92, 3, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 22:07:28', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 12335609332, 8718940, 8906240, 43614, 0.98, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 10:37:45', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 9147309995, 11542700, 11992000, 62722, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 18:23:34', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-10-05', 220717016, 501324, 408647, 2336, 1.23, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 06:35:17', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 1025568612, 2952030, 3077010, 14902, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 06:00:24', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4770876135, 827829, 865060, 3687, 0.96, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 21:00:12', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-11-13', 802242882863, 432684000, 386141000, 2310000, 1.12, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 23:07:28', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2860307019, 12488800, 10522900, 60563, 1.19, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-11-18 04:00:04', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 652933080, 3421, 25241, 30, 0.14, 8, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-19 23:22:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 73710421225, 32531700, 32538100, 162833, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 18:30:53', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 21, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 22:30:08', 'No total credit in tables.xml, No compute stats'),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 6843043858, 11548500, 7941100, 52265, 1.45, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 23:00:11', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1856839867, 2918070, 2640250, 13809, 1.11, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 13:40:13', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 17145032952, 24066500, 27477000, 125000, 0.88, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-18 17:00:36', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1509637497, 1993580, 1899170, 9625, 1.05, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 16:10:06', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 322078691332, 163431000, 159807000, 845378, 1.02, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 12:06:02', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 1856, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-18 06:25:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3974131615, 780039, 447678, 0, 1.74, 13, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-15 10:25:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2816244435, 2708810, 2459450, 13108, 1.10, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 23:10:53', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 8871926901, 6870580, 5769210, 32411, 1.19, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-19 23:05:50', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
