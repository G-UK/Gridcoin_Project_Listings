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
	('amicable', 'Amicable Numbers', 'Yes', 'In', '2017-02-22', 153718572002, 119003000, 157889000, 145800, 1909, 2269, 99, 0.75, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-26 14:05:07', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'NO VOTE', '0000-00-00', 106879787733, 73797100, 65215200, 361508, 13099, 0, 28, 1.13, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-26 15:02:22', NULL),
	('cas', 'CAS@Home', 'No', 'NO VOTE', '0000-00-00', 355788015, 1672, 1740, 15, 38, 0, 0, 0.96, 3, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-26 15:00:32', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'NO VOTE', '0000-00-00', 3397169831301, 3654670000, 3953490000, 18946606, 2792, 798, 6794, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-26 14:32:38', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'NO VOTE', '0000-00-00', 12467740147, 5990430, 5767400, 28858, 5510, 991, 15, 1.04, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-26 16:36:44', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'Out', '2017-09-24', 41383584243, 4952780, 11495500, 37954, 7354, 1316, 18, 0.43, 16, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-25 19:30:44', 'Project only periodically updates stats'),
	('csg', 'Citizen Science Grid', 'Yes', 'Out', '2019-05-29', 34276761962, 0, 9059, 59, 13, 0, 5, 0.00, 20, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-26 15:35:51', NULL),
	('einstein', 'Einstein', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'Stats only available to official network. Listing Manually set'),
	('gerasim', 'Gerasim', 'No', 'NO VOTE', '0000-00-00', 2135405194, 1649920, 1604960, 3039, 415, 6797300, 67980, 1.03, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-02-26 16:58:00', NULL),
	('gpugrid', 'GPUGrid', 'Yes', 'NO VOTE', '0000-00-00', 951762669795, 418673000, 282497000, 1807902, 3491, 310143, 3619, 1.48, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 11:30:39', NULL),
	('lhc', 'LHC@Home', 'Yes', 'NO VOTE', '0000-00-00', 22684489549, 9876970, 11190300, 58164, 9521, 3615, 42, 0.88, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 11:18:58', NULL),
	('milkyway', 'Milkyway', 'Yes', 'In', '2015-07-20', 479216602719, 268858000, 292128000, 1398536, 14315, 10661, 204, 0.92, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-24 19:02:22', NULL),
	('moowrap', 'MooWrap', 'Yes', 'Out', '2018-02-09', 193314538844, 56468000, 100457000, 411423, 1892, 2883, 246, 0.56, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-02-25 16:37:59', NULL),
	('nfs', 'NFS', 'Yes', 'NO VOTE', '0000-00-00', 16428970368, 7220740, 8015430, 41270, 1299, 3329928, 33331, 0.90, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 13:38:26', NULL),
	('numberfields', 'Numberfields', 'Yes', 'NO VOTE', '0000-00-00', 13973681253, 4456040, 5092710, 173568, 1122, 98548, 1140, 0.87, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 05:38:23', NULL),
	('odlk', 'ODLK', 'Yes', 'Out', '2017-10-05', 493307417, 469575, 764466, 3206, 402, 335403, 3362, 0.61, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-02-25 10:05:23', NULL),
	('odlk1', 'ODLK1', 'Yes', 'In', '2018-01-17', 2195884567, 2339960, 2295480, 13093, 487, 51723, 544, 1.02, 1, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 08:10:50', NULL),
	('primaboinca', 'Primaboinca', 'No', 'NO VOTE', '0000-00-00', 5227403535, 1154830, 1227620, 0, 500, 0, 0, 0.94, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-24 21:00:20', 'Compute estimated, Project users manually set to 500'),
	('primegrid', 'Primegrid', 'Yes', 'Out', '2018-11-13', 982199774698, 321025000, 424236000, 1958000, 4260, 56827, 1028, 0.76, 1, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-25 17:44:23', 'Project requested removal from Whitelist'),
	('rakesearch', 'Rakesearch', 'Yes', 'NO VOTE', '0000-00-00', 7184947776, 1256280, 1398490, 7250, 534, 2800, 42, 0.90, 1, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-02-25 08:00:05', NULL),
	('rnaworld', 'RNA World', 'Yes', 'NO VOTE', '0000-00-00', 659370598, 1275, 2114, 3, 5, 0, 1, 0.60, 13, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2020-02-25 16:27:05', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'NO VOTE', '0000-00-00', 88000709475, 29851000, 29838300, 158151, 24201, 23053, 237, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-24 21:02:00', NULL),
	('seti', 'SETI@Home', 'Yes', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('srbase', 'SRBase', 'No', 'In', '2016-10-28', 9800391058, 5957620, 6239380, 7299, 374, 77864, 219, 0.95, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-25 17:20:13', NULL),
	('tngrid', 'TNGrid', 'Yes', 'In', '2017-03-17', 3187525712, 3187540, 3000270, 15836, 576, 11161, 139, 1.06, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-22 11:05:40', NULL),
	('universe', 'Universe@Home', 'Yes', 'NO VOTE', '0000-00-00', 52817451890, 129314000, 94420100, 528466, 6781, 244556, 2523, 1.37, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-22 18:00:17', NULL),
	('vgtu', 'VGTU', 'Yes', 'In', '2016-10-28', 1575240973, 0, 0, 1, 10000, 0, 0, 0.00, 15, 'Greylisted', 'Greylisted', 'Unsuitable for Rewards', '2020-02-22 11:40:03', NULL),
	('wcg', 'World Community Grid', 'Yes', 'NO VOTE', '0000-00-00', 390092467717, 146471000, 144549000, 737561, 10000, 0, 74, 1.01, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-22 12:06:03', 'No active User data (Users set to 10,000)'),
	('wep', 'WEP M+2', 'No', 'NO VOTE', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', NULL, 'No total credit in tables.xml, No compute stats.  Listing is Manually set'),
	('yafu', 'YAFU', 'Yes', 'In', '2015-09-20', 4064410114, 2047000, 2197030, 11236, 314, 667, 42, 0.93, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-22 17:45:35', NULL),
	('yoyo', 'Yoyo', 'Yes', 'NO VOTE', '0000-00-00', 11720428056, 6129480, 5852510, 21871, 3000, 3153, 39, 1.05, 0, 'Whitelisted', 'Whitelisted', 'Suitable for Rewards', '2020-02-22 17:45:48', 'No active User data (Users set to 5,000)'),
	('nano', 'NanoHub', 'Yes', 'NO VOTE', '0000-00-00', 18730259, 0, 0, 223, 269, 4465, 45, 0.00, 21, 'Unlisted', 'Unlisted', 'Unsuitable for Rewards', '2019-12-15 06:30:04', NULL),
	('quchem', 'QuChemPedi', 'Yes', 'NO VOTE', '0000-00-00', 144718853, 4260970, 2080680, 3180, 207, 275140, 2767, 2.05, 0, 'Unlisted', 'Unlisted', 'Suitable for Rewards', '2020-02-24 23:30:07', 'Initial Stats Gathering');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
