-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.5.8-MariaDB-3 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  KEY `Project ID` (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~38 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Credit Days)`, `Current Status`, `Project Status`, `Project Suitability`, `Last Update`, `Notes`) VALUES
	('amicable', 'Amicable Numbers', 'Yes', 'In', '2017-02-22', 192189313025, 116672000, 163981000, 216000, 2269, 3582, 0.71, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:05:07', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'NO VOTE', '0000-00-00', 125931928053, 0, 15311100, 458253, 14112, 212741, 0.00, 21, 'Whitelisted', 'Greylisted', 'Unsuitable for Rewards', '2020-11-23 22:52:37', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'NO VOTE', '0000-00-00', 4492762448445, 3540100000, 3843420000, 18500134, 2782, 747, 0.92, 2, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:27:48', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'NO VOTE', '0000-00-00', 14152262842, 4231390, 7004340, 39070, 5056, 1234, 0.60, 4, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-24 09:17:19', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'Out', '2017-09-24', 42130394176, 5064170, 3595330, 20787, 3520, 4177, 1.41, 16, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-28 19:30:42', 'Project only periodically updates stats'),
	('csg', 'Citizen Science Grid', 'Yes', 'Out', '2019-05-29', 34276994167, 0, 0, 6, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-28 19:26:11', NULL),
	('einstein', 'Einstein', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'Stats only available to official network. Listing Manually set'),
	('gerasim', 'Gerasim', 'No', 'NO VOTE', '0000-00-00', 2710097963, 3455530, 4050450, 4544, 523, 1323237, 0.85, 3, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-12-29 02:58:43', NULL),
	('gpugrid', 'GPUGrid', 'Yes', 'NO VOTE', '0000-00-00', 1107481501894, 622923000, 508646000, 3129101, 5161, 74343, 1.22, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:00:24', NULL),
	('lhc', 'LHC@Home', 'Yes', 'NO VOTE', '0000-00-00', 26136181220, 11138400, 13655900, 66763, 8402, 131, 0.82, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 09:02:38', NULL),
	('milkyway', 'Milkyway', 'Yes', 'In', '2015-07-20', 578399839352, 381555000, 379105000, 1897577, 16935, 10894, 1.01, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-28 20:07:27', NULL),
	('moowrap', 'MooWrap', 'Yes', 'Out', '2018-02-09', 221046712729, 118785000, 142540000, 697040, 1684, 3744, 0.83, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-12-29 13:24:42', NULL),
	('nfs', 'NFS', 'Yes', 'NO VOTE', '0000-00-00', 18784627990, 9043580, 7817780, 43306, 1482, 241231, 1.16, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 08:21:07', NULL),
	('numberfields', 'Numberfields', 'Yes', 'NO VOTE', '0000-00-00', 16309667746, 15379400, 11505000, 164653, 1383, 123189, 1.34, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:28:26', NULL),
	('odlk', 'ODLK', 'Yes', 'Out', '2017-10-05', 633227613, 363805, 494244, 2405, 410, 263849, 0.74, 3, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-12-26 12:55:56', NULL),
	('odlk1', 'ODLK1', 'Yes', 'In', '2018-01-17', 2714498795, 1228910, 1362200, 6647, 524, 170569, 0.90, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 09:22:39', NULL),
	('primegrid', 'Primegrid', 'Yes', 'Out', '2018-11-13', 1105359591887, 726411000, 584021000, 3535000, 4047, 42730, 1.24, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 11:47:36', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', 'NO VOTE', '0000-00-00', 7475941065, 0, 100653, 105, 365, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 14:20:06', NULL),
	('rnaworld', 'RNA World', 'Yes', 'NO VOTE', '0000-00-00', 663711976, 2256, 4920, 10, 14, 0, 0.46, 15, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 14:22:06', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'NO VOTE', '0000-00-00', 119943955811, 76563300, 86238700, 347269, 37974, 0, 0.89, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 09:40:43', NULL),
	('srbase', 'SRBase', 'No', 'In', '2016-10-28', 29325535116, 95187300, 84352400, 393256, 537, 304546, 1.13, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 12:10:23', NULL),
	('tngrid', 'TNGrid', 'Yes', 'In', '2017-03-17', 4283728279, 5255620, 4486540, 25231, 798, 4533, 1.17, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 07:50:45', NULL),
	('universe', 'Universe@Home', 'Yes', 'NO VOTE', '0000-00-00', 90318356391, 167617000, 166821000, 873166, 8507, 705778, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:00:33', NULL),
	('wcg', 'World Community Grid', 'Yes', 'NO VOTE', '0000-00-00', 363584119186, 125216000, 124926000, 335530, 39000, 1000, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 12:44:18', 'No active User data (Set to 39,000 from boincstats)'),
	('wep', 'WEP M+2', 'No', 'NO VOTE', '0000-00-00', 0, 0, 0, 4422, 135, 3882, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 12:45:06', 'No total credit in tables.xml.  Listing is Manually set'),
	('yafu', 'YAFU', 'Yes', 'In', '2015-09-20', 5077250944, 4909170, 4016020, 24496, 270, 901, 1.22, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:50:09', NULL),
	('yoyo', 'Yoyo', 'Yes', 'NO VOTE', '0000-00-00', 13650439010, 12442800, 8596370, 31631, 2500, 14139, 1.45, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-12-29 14:00:52', 'No active User data (Set to 2,500 from boincstats)'),
	('quchem', 'QuChemPedi', 'Yes', 'NO VOTE', '0000-00-00', 1262299074, 2965030, 2289280, 13716, 315, 720579, 1.30, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-12-29 08:00:03', NULL),
	('gaia', 'Gaia@Home', 'No', 'NO VOTE', '0000-00-00', 166110750, 193615, 313194, 1618, 146, 131308, 0.62, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 11:40:01', NULL),
	('ithena', 'iThena', 'Yes', 'NO VOTE', '0000-00-00', 106541498, 243071, 540625, 2382, 273, 9730, 0.45, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 14:30:20', 'Non-CPU intensive (NCI) - NCI projects currently unsuitable for rewards'),
	('mlc', 'Machine Learning Comprehension@Home', 'Yes', 'NO VOTE', '0000-00-00', 1395751502, 37674400, 15098000, 109945, 1215, 23141, 2.50, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-12-29 13:20:03', NULL),
	('tbrada', 'T.Brada Experimental Grid', 'Yes', 'NO VOTE', '0000-00-00', 197927941, 0, 0, 0, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-11-10 11:00:52', NULL),
	('minecraft', 'Minecraft@Home', 'Yes', 'NO VOTE', '0000-00-00', 2124390999, 164, 4855470, 18284, 473, 360, 0.00, 7, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 09:15:04', NULL),
	('ibercivis', 'Ibercivis', 'Yes', 'NO VOTE', '0000-00-00', 267958860, 0, 6698970, 1, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 09:25:08', NULL),
	('tacc', 'BOINC@TACC', 'Tes', 'NO VOTE', '0000-00-00', 6199921, 490, 2471, 7, 65, 0, 0.20, 6, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 12:00:08', NULL),
	('wuprop', 'WUProp@Home', 'Yes', 'NO VOTE', '0000-00-00', 1095248720, 278538, 27352100, 1383, 1535, 11218, 0.01, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 13:10:41', 'Non-CPU intensive (NCI) - NCI projects currently unsuitable for rewards'),
	('nano', 'nanoHUB', 'Yes', 'NO VOTE', '0000-00-00', 21909200, 0, 592141, 0, 7, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-28 16:05:03', NULL),
	('mind', 'MindModeling@Home', 'Yes', 'NO VOTE', '0000-00-00', 949432186, 0, 23735800, 11, 0, 0, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 14:11:24', NULL),
	('sidock', 'SiDock@Home', 'Yes', 'NO VOTE', '0000-00-00', 75751646, 0, 0, 6550, 491, 31815, 0.00, 3, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-12-29 12:10:03', 'New Project. Initial stats gathering in progress');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
