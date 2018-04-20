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
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 140012501, 1287072, 225238, 18023, 5.71, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 09:45:03', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 45714212389, 281758602, 312810223, 2388634, 0.90, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 15:05:06', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 71071537173, 65118789, 74727933, 521285, 0.87, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 07:26:52', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 352051216, 2160, 62419, 22, 0.03, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 15:40:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1479405502264, 183602329, 1840218091, 3784908, 0.10, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 16:22:07', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9504180049, 4504826, 5226894, 50757, 0.86, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 13:11:56', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 11751936, 0, 0.00, 2, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-19 14:49:54', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 22969213366, 60337461, 76467070, 629265, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 16:20:44', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 274699, 0, 0.00, 8, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 16:15:07', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', '2018-04-20 19:05:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 564514102754, 677450654, 851555977, 6635831, 0.80, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 14:25:43', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 31800128696, 100517036, 127486246, 822065, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 15:34:52', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1217946039, 728892, 605005, 6658, 1.20, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-20 17:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 13399264, 28961231, 0, 0.46, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '1970-01-01 01:00:00', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 653134323547, 273649658, 451268909, 1858094, 0.61, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 11:40:17', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1595571050, 1876182, 1355849, 14551, 1.38, 0, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', '2018-04-20 18:55:21', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 11133893297, 16733063, 18701257, 180516, 0.89, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 11:16:14', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 348513066178, 236981509, 257586893, 1877609, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:27:33', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 18:11:19', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 147711163897, 123081131, 89099433, 593956, 1.38, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-20 18:35:18', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9699225995, 13678700, 18354982, 106889, 0.75, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 10:35:34', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 6001829443, 14579803, 15917064, 74375, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-19 22:05:58', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 130657886, 242614, 401957, 4782, 0.60, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-20 11:20:12', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 328103354, 3390035, 4392695, 30320, 0.77, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 06:30:14', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4602431735, 642200, 663565, 3350, 0.97, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-19 21:00:06', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 721382912543, 450197032, 527741913, 3850522, 0.85, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:41:13', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1007789815, 5746461, 6749996, 43729, 0.85, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', '2018-04-19 21:20:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648379077, 7602, 21996, 46, 0.35, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 17:47:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65874834190, 78737605, 57992019, 417063, 1.36, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 00:23:37', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 19, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', '2018-04-19 21:20:05', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19857622661, 19448002, 24719664, 199108, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:23:25', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 33525914, 162532, 136725, 1351, 1.19, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 18:30:05', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 5211623122, 9485073, 14911682, 60186, 0.64, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 16:50:09', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1271204614, 945183, 1159291, 10732, 0.82, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 14:20:09', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11309308185, 37838381, 18121789, 196173, 2.09, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:00:51', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1038761200, 3000251, 3676665, 21796, 0.82, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 12:15:06', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 294419098881, 121014132, 146908162, 940174, 0.82, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 12:06:03', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', '2018-04-19 21:50:03', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3863306242, 937669, 501012, 4, 1.87, 11, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', '2018-04-20 13:50:03', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2259213920, 8232089, 6155241, 37228, 1.34, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:25:26', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7606260672, 11899800, 11251081, 68089, 1.06, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', '2018-04-20 18:45:50', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
