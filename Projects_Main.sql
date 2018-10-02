-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.35-MariaDB-1 - Debian buildd-unstable
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
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~39 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 481464815, 2161830, 1913015, 6686, 1.13, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-10-02 10:20:05', 'Project not TLS/SSL'),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 84235076384, 228362071, 231682874, 836306, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 15:05:05', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 80643964533, 60038126, 52305636, 324497, 1.15, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 10:56:59', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 353618849, 2826, 2579, 3, 1.10, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 10:40:21', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1769005828224, 2147483647, 2069534732, 8324052, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 13:32:10', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 10158667447, 2843218, 2927943, 2567, 0.97, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 09:57:10', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 36367376153, 14247095, 41872336, 77417, 0.34, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-01 18:36:57', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 31514014471, 8801524, 39515402, 164505, 0.22, 6, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-09-27 02:20:55', NULL),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1323245606, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-01 17:00:09', NULL),
	('dhep', 'Distributed Hardware Evolution', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-09-28', 1706665250, 15413393, 8964379, 76969, 1.72, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 12:15:12', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854171006, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-08-07 22:00:05', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 597386572021, 0, 0, 2619284, 0.00, 21, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2018-06-13 13:42:27', 'User Statistics inaccessible due to GDPR'),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 47236706178, 17318909, 79285287, 287829, 0.22, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 15:40:40', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1348848392, 646020, 1240366, 2959, 0.52, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 13:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2222928028, 0, 430673, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 16:15:03', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 718402189715, 537321883, 426301366, 1703020, 1.26, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 13:25:17', NULL),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 12778314800, 4735582, 7421683, 26238, 0.64, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 14:45:42', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 375592684860, 176880272, 167851883, 805035, 1.05, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 14:42:49', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859994872, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 16:11:18', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 154659412308, 37768569, 36160975, 84674, 1.04, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-10-02 08:31:46', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11898987408, 11140401, 11855605, 25235, 0.94, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 06:35:07', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 8554689336, 11950711, 10923581, 59231, 1.09, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-01 18:02:35', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-10-05', 199074197, 2220083, 644964, 8242, 3.44, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-10-02 06:40:20', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 874066693, 3431159, 3363962, 17802, 1.02, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 06:37:20', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4728455135, 813457, 894560, 4225, 0.91, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-01 21:00:16', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 783672094597, 376990934, 364089922, 1335519, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 14:46:56', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 2367910654, 11461126, 11623427, 62779, 0.99, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2018-10-02 12:00:03', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 651805023, 1249, 32896, 6, 0.04, 9, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 16:57:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 72135335487, 30967111, 31179690, 154332, 0.99, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-01 19:50:30', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 53687091, 0, 0.00, 20, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 00:50:16', 'No total credit in tables.xml, No compute stats'),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 6484626187, 1013695, 2905993, 9712, 0.35, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 16:35:12', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1729250881, 3411690, 3549175, 15451, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 13:35:09', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 15886690952, 20134190, 21736933, 66333, 0.93, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 16:00:45', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 1417351581, 2392824, 2587966, 10907, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 16:30:07', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 314433373156, 149092443, 137719468, 737686, 1.08, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 12:06:03', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 06:50:02', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3956224319, 865186, 500409, 15, 1.73, 13, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2018-10-02 12:40:04', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2701738189, 1883528, 2095170, 7927, 0.90, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 16:40:24', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 8597089172, 5573752, 7353770, 20478, 0.76, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2018-10-02 16:35:51', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
