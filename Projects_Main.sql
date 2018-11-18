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

-- Dumping data for table grc_listings.Projects_Main: ~41 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
REPLACE INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 569922023, 1986610, 1887370, 9898, 1.05, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-11-17 09:45:05', 'Project not TLS/SSL'),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 96059701984, 285350000, 257364000, 268793, 1.11, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 20:05:06', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 83140250133, 47224600, 54021700, 267964, 0.87, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 21:32:09', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 353717965, 3300, 1899, 20, 1.74, 11, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 22:20:23', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1896740076960, 2869720000, 2170470000, 0, 1.32, 1, 'Whitelisted', 'Whitelisted', 'Unsuitable for Rewards', '2018-11-17 21:42:16', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 10271821882, 1701870, 2540040, 11876, 0.67, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 17:52:50', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 36962764226, 12207300, 14015100, 138603, 0.87, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 11:39:05', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 33177400977, 15069400, 35599800, 139769, 0.42, 8, 'Whitelisted', 'Greylisted', 'Unsuitable for Rewards', '2018-11-17 10:16:36', NULL),
	('dbn', 'DBN Upper Bound', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4703699, NULL, NULL, 69, NULL, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 22:15:02', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 0, 2, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 16:10:07', NULL),
	('dhep', 'Distributed Hardware Evolution', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-09-28', 2749846723, 19966700, 23085700, 177940, 0.86, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 18:16:46', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854171006, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-08-07 22:00:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 597386572021, 0, 0, 2619284, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-06-13 13:42:27', 'Stats unavailable, awaiting stats scraper'),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 50960378107, 96711100, 80703400, 0, 1.20, 0, 'Whitelisted', 'Whitelisted', 'Unsuitable for Rewards', '2018-11-17 20:52:41', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1392024149, 1221860, 959821, 1404, 1.27, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 20:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2222928028, 0, 0, 10, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 23:00:03', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 742807680773, 448682000, 518854000, 2768883, 0.86, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 20:50:19', NULL),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 13010645247, 5162530, 5089290, 25681, 1.01, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 09:04:12', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 384095944251, 176260000, 185671000, 907029, 0.95, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 21:12:21', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 910756117, 31912, 1098330, 1912, 0.03, 5, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 22:11:21', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 156547880995, 37395100, 41490100, 0, 0.90, 3, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 22:07:16', NULL),
	('nano', 'nanoHUB', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 0, NULL, NULL, 0, NULL, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '1970-01-01 01:00:00', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 12323523788, 8836140, 9159400, 44211, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 22:32:20', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 9119494525, 11800000, 12013500, 60944, 0.98, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 18:23:18', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-10-05', 219941436, 534940, 420089, 2439, 1.27, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 06:35:17', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 1020126246, 3011910, 3089370, 15141, 0.97, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 05:55:25', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4769291335, 859171, 874375, 4048, 0.98, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 21:00:14', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-11-13', 801427630739, 506030000, 387383000, 2348000, 1.31, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 23:03:40', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2847235143, 12537500, 10305400, 61004, 1.22, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-11-17 04:00:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 652911365, 18945, 26673, 36, 0.71, 8, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 21:22:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 73647049101, 32998500, 32433700, 163594, 1.02, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 18:27:19', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 21, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 22:20:04', 'No total credit in tables.xml, No compute stats'),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 6822436161, 10858800, 7812960, 52353, 1.39, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 22:55:12', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1851762184, 2797500, 2627310, 14011, 1.06, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 13:40:13', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 17129728952, 25295300, 27608400, 126743, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 23:00:38', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1505999515, 2015680, 1911530, 9738, 1.05, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 16:10:06', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 321744617170, 156739000, 158767000, 851665, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 12:06:02', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 1829, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-17 06:25:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3974131615, 780039, 447678, 0, 1.74, 11, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-11-15 10:25:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2811841057, 2724900, 2415310, 13524, 1.13, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 23:05:47', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 8859193020, 6805510, 5662150, 31215, 1.20, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-11-17 22:30:50', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
