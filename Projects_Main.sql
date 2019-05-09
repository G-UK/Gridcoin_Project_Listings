-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.3.14-MariaDB-1 - Debian buildd-unstable
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

-- Dumping data for table grc_listings.Projects_Main: ~41 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Compute Availability`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', 'NO VOTE', '0000-00-00', 0, 0, 621095, 0, 10000, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '1970-01-01 01:00:00', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'In', '2017-02-22', 122218260079, 78595700, 85234800, 70400, 1593, 1697, 61, 0.92, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 09:05:04', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'NO VOTE', '0000-00-00', 91467247413, 48807300, 41740900, 237758, 12976, 132042, 1339, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 10:32:10', NULL),
	('cas', 'CAS@Home', 'No', 'NO VOTE', '0000-00-00', 353984835, 5, 1, 7, 1, 0, 7, 5.00, 17, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 01:40:25', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'NO VOTE', '0000-00-00', 2411229122547, 3443250000, 2767790000, 15201663, 2665, 760, 5712, 1.24, 3, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 06:22:25', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'NO VOTE', '0000-00-00', 11106990963, 4995090, 5077050, 25165, 5445, 998, 15, 0.98, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 09:46:10', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'Out', '2017-09-24', 38890518163, 16635500, 13426900, 82433, 8834, 16606, 175, 1.24, 16, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-08 13:56:54', 'Project only periodically updates stats'),
	('csg', 'Citizen Science Grid', 'Yes', 'In', '2017-02-25', 34237843186, 441070, 745206, 2604, 994, 0, 3, 0.59, 1, 'Whitelisted', 'Whitelisted', 'Unsuitable for Rewards', '2019-05-08 20:00:57', NULL),
	('dbn', 'DBN Upper Bound', 'No', 'NO VOTE', '0000-00-00', 4716085, 0, 0, 0, 10000, 0, 0, 0.00, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 09:15:02', NULL),
	('denis', 'DENIS', 'Yes', 'Out', '2017-02-23', 1323245606, 0, 0, 2, 10000, 0, 0, 0.00, 19, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-08 17:55:08', NULL),
	('dhep', 'Distributed Hardware Evolution', 'Yes', 'In', '2018-09-28', 19464742589, 133215000, 146452000, 1841786, 1632, 4928, 1178, 0.91, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 11:30:03', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'In', '2017-09-24', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0.00, 2, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', NULL, 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', NULL, 'Stats are not publically available. Listing is Manually set'),
	('enigma', 'Enigma', 'No', 'In', '2017-07-26', 67513137391, 62229200, 84741300, 413888, 432, 5201, 1010, 0.73, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 08:20:40', NULL),
	('gerasim', 'Gerasim', 'No', 'NO VOTE', '0000-00-00', 1688678055, 1228560, 1733400, 1739, 321, 1172219, 11728, 0.71, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-05-09 09:58:00', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', 'NO VOTE', '0000-00-00', 2227858154, 0, 0, 0, 10000, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-01-04 14:03:20', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'NO VOTE', '0000-00-00', 863753396027, 654172000, 663449000, 3438886, 3946, 2399, 895, 0.99, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 08:30:19', NULL),
	('lhc', 'LHC@Home', 'Yes', 'NO VOTE', '0000-00-00', 16165634336, 16337300, 16787700, 90118, 7082, 1099387, 11007, 0.97, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 09:43:41', NULL),
	('milkyway', 'Milkyway', 'Yes', 'In', '2015-07-20', 416354713378, 178259000, 179293000, 887053, 14507, 11453, 176, 0.99, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-08 18:52:18', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'Out', '2016-11-22', 912210023, 0, 0, 10, 10000, 0, 0, 0.00, 18, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 11:11:21', NULL),
	('moowrap', 'MooWrap', 'Yes', 'Out', '2018-02-09', 168736493519, 59617800, 71565000, 323836, 2048, 2835, 186, 0.83, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-05-09 10:07:13', NULL),
	('nfs', 'NFS', 'Yes', 'NO VOTE', '0000-00-00', 13865297002, 11579700, 8611300, 57881, 1510, 2657992, 26618, 1.34, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 09:16:16', NULL),
	('numberfields', 'Numberfields', 'Yes', 'NO VOTE', '0000-00-00', 13514114800, 4490890, 45541400, 139437, 1347, 181506, 1919, 0.10, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-08 15:55:48', NULL),
	('odlk', 'ODLK', 'Yes', 'Out', '2017-10-05', 315709049, 322119, 547194, 2032, 392, 421079, 4216, 0.59, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-05-08 13:10:23', NULL),
	('odlk1', 'ODLK1', 'Yes', 'In', '2018-01-17', 1519465780, 2328530, 2620010, 12259, 488, 100271, 1028, 0.89, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 08:10:29', NULL),
	('primaboinca', 'Primaboinca', 'No', 'NO VOTE', '0000-00-00', 4935360135, 891143, 1091560, 0, 500, 0, 0, 0.82, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-08 21:00:21', 'Compute estimated, Project users manually set to 500'),
	('primegrid', 'Primegrid', 'Yes', 'Out', '2018-11-13', 870027989872, 297448000, 426979000, 2477000, 6192, 53296, 933, 0.70, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 08:26:44', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', 'NO VOTE', '0000-00-00', 6218854512, 20172300, 31827400, 130269, 676, 19656, 389, 0.63, 2, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2019-05-08 23:40:06', NULL),
	('rnaworld', 'RNA World', 'Yes', 'NO VOTE', '0000-00-00', 656433137, 4096, 15287, 8, 30, 0, 0, 0.27, 7, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 10:17:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'NO VOTE', '0000-00-00', 78748629348, 29073100, 29352500, 150049, 24250, 23061, 237, 0.99, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-08 22:36:51', NULL),
	('seti', 'SETI@Home', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('srbase', 'SRBase', 'No', 'In', '2016-10-28', 8149499765, 9244690, 7248330, 42830, 434, 79416, 893, 1.28, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 11:45:14', NULL),
	('tngrid', 'TNGrid', 'Yes', 'In', '2017-03-17', 2370776633, 2247630, 2857320, 14055, 614, 6961, 93, 0.79, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 04:10:38', NULL),
	('universe', 'Universe@Home', 'Yes', 'NO VOTE', '0000-00-00', 31435403677, 81079700, 79047700, 452707, 7015, 323026, 3295, 1.03, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 12:02:41', NULL),
	('vgtu', 'VGTU', 'Yes', 'In', '2016-10-28', 1575240973, 0, 0, 1, 1, 0, 1, 0.00, 18, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2019-05-09 06:45:02', NULL),
	('wcg', 'World Community Grid', 'Yes', 'NO VOTE', '0000-00-00', 349322804578, 165734000, 8133590000, 419652, 10000, 0, 42, 0.02, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 00:06:02', 'No active User data (Users set to 10,000)'),
	('wep', 'WEP M+2', 'No', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('xansons', 'XANSONS4COD', 'Yes', 'Out', '2017-09-24', 4033365069, 932, 355648, 1076, 126, 0, 9, 0.00, 12, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-08 20:50:03', NULL),
	('yafu', 'YAFU', 'Yes', 'In', '2015-09-20', 3356434924, 3277600, 3231540, 16544, 311, 1465, 68, 1.01, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 11:30:31', NULL),
	('yoyo', 'Yoyo', 'Yes', 'NO VOTE', '0000-00-00', 10093202594, 7804350, 6120790, 43008, 3000, 25454, 269, 1.28, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2019-05-09 11:10:48', 'No active User data (Users set to 5,000)'),
	('nano', 'NanoHub', 'Yes', 'NO VOTE', '0000-00-00', 3594840, 19, 37984, 119, 180, 1, 1, 0.00, 6, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-05-09 02:20:03', NULL);
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
