-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.26-MariaDB-0+deb9u1 - Debian 9.1
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
  `Z.C.D (Zero Days Credit)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Calculated Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Recommended Status (Experimental)` tinytext COLLATE latin1_general_ci NOT NULL,
  `Notes` text COLLATE latin1_general_ci,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~42 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Days Credit)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 129560465, 0, 0, 1, 0.00, 20, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 40297766310, 270250463, 268990735, 568472, 1.00, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 69901973013, 61477029, 73343688, 305117, 0.84, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 350727931, 2529, 3410, 20, 0.74, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1468538046174, 2038152877, 2579424012, 88750, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9405917559, 4844381, 5344182, 23578, 0.91, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35479104301, 11758179, 17355907, 69286, 0.68, 18, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 21677032227, 64210171, 75662150, 318552, 0.85, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-01-29', 934076097, 347809, 397462, 0, 0.88, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Does not export compute stats'),
	('denis', 'DENIS', 'No', NULL, NULL, 'Out', '2017-02-23', 1316351072, 338253, 77194, 1167, 4.38, 8, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 89, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 550144098192, 697283417, 772410638, 6745, 0.90, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 29732564858, 99334524, 127729440, 523952, 0.78, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1206341114, 471924, 728449, 1633, 0.65, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 1025059278, 16135029, 37388337, 114563, 0.43, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 646416961761, 247999556, 495478739, 0, 0.50, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Needs custom compute query (Not in XML)'),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1576327661, 841332, 1054493, 0, 0.80, 1, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', 'Does not export compute stats'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 10793997266, 16196410, 15544728, 76514, 1.04, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 344333844387, 216638974, 229647914, 917161, 0.94, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 146494381078, 76356891, 65143823, 247073, 1.17, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Voted out on 2018/02/10'),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9409726477, 13817926, 18634490, 72348, 0.74, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 5743607485, 13081303, 15672049, 65388, 0.83, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 124624031, 403022, 643834, 1953, 0.63, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 256434521, 3599497, 3972309, 17266, 0.91, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4589336335, 702000, 747095, 0, 0.94, 6, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Does not export compute stats'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 712220157071, 374839283, 471429899, 0, 0.80, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Needs custom compute query (Not in XML)'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 893003494, 6653980, 7808053, 30640, 0.85, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648298778, 13964, 20761, 33, 0.67, 6, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65073063840, 25544262, 41142604, 173695, 0.62, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 7, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Does not include total credit in tables.xml, Does not export compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19452331316, 18709568, 22210300, 95323, 0.84, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 31725363, 101595, 109662, 471, 0.93, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 4953314372, 17283904, 15123416, 75518, 1.14, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 'Out', '2017-07-26', 1011806851, 93401, 16345, 0, 5.71, 17, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'Does not export compute stats'),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1250790425, 956637, 1081006, 4826, 0.88, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11045195585, 7337552, 6498738, 42009, 1.13, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 964203948, 2320159, 2561189, 11476, 0.91, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 292049530030, 409210719, 196564746, 0, 2.08, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 1660, 0.00, 7, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', 'Does not include total credit in tables.xml, Does not export compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3851614632, 0, 639144, 1462, 0.00, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2171027721, 3531114, 4220989, 17774, 0.84, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7466814547, 8152044, 8996421, 0, 0.91, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Does not export compute stats');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
