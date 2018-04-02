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

-- Dumping data for table grc_listings.Projects_Main: ~43 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Vote (In/Out)`, `Vote (Date)`, `Project Total Credit`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `Project Compute Speed (GFlops)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Days Credit)`, `Current Status`, `Calculated Status`, `Calculated Status (Experimental)`, `Recommended Status (Experimental)`, `Notes`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 129560465, 0, 0, 0, 0.00, 20, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 41012251084, 463839746, 304138683, 1099841, 1.53, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 70107029973, 122952480, 83400156, 337742, 1.47, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 350734810, 3656, 3554, 14, 1.03, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1476214670295, 1961184955, 2576850940, 9153140, 0.76, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9420766005, 8024437, 5720186, 23968, 1.40, 4, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 17355907, 0, 0.00, 17, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 21860053335, 102813071, 82307738, 317797, 1.25, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-01-29', 935231566, 638995, 440672, 2052, 1.45, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'Compute estimated'),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1321469822, 923765, 195739, 9649, 4.72, 6, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 21, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 552221451318, 1134071143, 849284821, 3383502, 1.34, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 30036195806, 165057399, 138658760, 413995, 1.19, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1207361792, 738021, 736290, 2057, 1.00, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 23252357, 37770664, 0, 0.62, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 647126165298, 331892253, 498942076, 2072623, 0.67, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1578852780, 1506007, 1149766, 4408, 1.31, 1, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 10843043215, 29519360, 18261969, 78236, 1.62, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 344868815655, 279082112, 246040878, 924392, 1.13, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'Started Tracking 2018/04/02'),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 146616670690, 71454291, 68922048, 200947, 1.04, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Voted out on 2018/02/10'),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9451937457, 22168631, 19800135, 75060, 1.12, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 5770860454, 32379924, 18810465, 44963, 1.72, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 125612020, 699066, 641588, 1756, 1.09, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 266962984, 5624848, 4398640, 17540, 1.28, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4591570735, 1345467, 816554, 4000, 1.65, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 713471413532, 610708882, 507153889, 1967392, 1.20, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 914940595, 13020241, 8817307, 36994, 1.48, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648299939, 13665, 21836, 0, 0.63, 7, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65168197353, 39952069, 42983114, 206481, 0.93, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 10, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19506906689, 29634554, 23909483, 95919, 1.24, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 32108244, 163359, 124131, 174, 1.32, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 4995725044, 26227347, 21533888, 79265, 1.22, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 'Out', '2017-07-26', 1011909657, 195233, 34166, 171, 5.71, 15, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1253897764, 1617369, 1188412, 5570, 1.36, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11049781985, 5368743, 6926627, 5667, 0.78, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 971517229, 4142500, 2848589, 11422, 1.45, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 292368841967, 114371095, 144879179, 534457, 0.79, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 9, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3856384613, 631798, 749709, 1737, 0.84, 13, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2182390247, 5602317, 4585425, 21688, 1.22, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7491442221, 8539183, 9015049, 45617, 0.95, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
