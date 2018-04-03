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
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 129560465, 0, 0, 0, 0.00, 19, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-02-22', 41012251084, 258289950, 274578127, 1099841, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 'NO VOTE', '0000-00-00', 70107029973, 80553806, 74120448, 337742, 1.09, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cas', 'CAS@Home', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 350734810, 2039, 3246, 14, 0.63, 1, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 1476214670295, 2281440253, 2630111243, 9153140, 0.87, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9420766005, 5066042, 5322940, 23968, 0.95, 3, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-09-24', 35608411775, 0, 17800930, 0, 0.00, 17, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 'In', '2017-02-25', 21860053335, 64822398, 75702274, 317797, 0.86, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2017-01-29', 935231566, 413735, 399293, 2052, 1.04, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'Compute estimated'),
	('denis', 'DENIS', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-02-23', 1321469822, 873670, 205163, 9649, 4.26, 4, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', NULL),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-09-24', 854176332, 0, 0, 0, 0.00, 20, 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted', 'Greylisted on 2018/02/19'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 552221451318, 915367540, 793711690, 3383502, 1.15, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('enigma', 'Enigma', 'No', NULL, NULL, 'In', '2017-07-26', 30036195806, 105161628, 127921864, 413995, 0.82, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 1207361792, 448772, 668429, 2057, 0.67, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 12215550, 34534665, 0, 0.35, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', 'TLS Cert Error'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 647126165298, 225465310, 475683827, 2072623, 0.47, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 'Out', '2017-07-19', 1578852780, 947946, 1048360, 4408, 0.90, 0, 'Unlisted', 'Unlisted (Override)', 'Unlisted (Override)', 'Greylisted (Override)', 'Compute estimated'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 10843043215, 19111265, 16306629, 78236, 1.17, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 'In', '2015-07-20', 344868815655, 187653804, 229122195, 924392, 0.82, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('mindmodelling', 'Mind Modelling', 'Yes', 'TLS1.2', 'GoDaddy', 'Out', '2016-11-22', 859659561, 0, 0, 0, 0.00, 9, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 'Out', '2018-02-09', 146616670690, 44128320, 64150120, 200947, 0.69, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', NULL),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 9451937457, 14050510, 18437041, 75060, 0.76, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 5770860454, 10871018, 15486755, 44963, 0.70, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-10-05', 125612020, 414929, 581592, 1756, 0.71, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2018-01-17', 266962984, 3579057, 4038404, 17540, 0.89, 2, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 4591570735, 743343, 720990, 4000, 1.03, 3, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'Compute estimated'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 713471413532, 425085967, 475786310, 1967392, 0.89, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 'NO VOTE', '0000-00-00', 914940595, 7170468, 7943349, 36994, 0.90, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Whitelisted', 'TLS Cert Error'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 648299939, 14106, 21753, 0, 0.65, 6, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 65168197353, 26996868, 40875398, 206481, 0.66, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 10, 'Whitelisted', 'Whitelisted (Override)', 'Whitelisted (Override)', 'Whitelisted (Override)', 'No total credit in tables.xml, No compute stats'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 19506906689, 18810865, 21985917, 95919, 0.86, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 'Out', '2018-02-28', 32108244, 103062, 114990, 174, 0.90, 0, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('srbase', 'SRBase', 'No', NULL, NULL, 'In', '2016-10-28', 4995725044, 16016608, 14854364, 79265, 1.08, 1, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 'Out', '2017-07-26', 1011909657, 108087, 18915, 171, 5.71, 13, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2017-03-17', 1253897764, 1028587, 1091268, 5570, 0.94, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 'NO VOTE', '0000-00-00', 11049781985, 2420895, 6592881, 5667, 0.37, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 'In', '2016-10-28', 971517229, 2582857, 2584975, 11422, 1.00, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 'NO VOTE', '0000-00-00', 292368841967, 112878466, 144576465, 534457, 0.78, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Compute estimated'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 'NO VOTE', '0000-00-00', 0, 0, 0, 0, 0.00, 11, 'Unlisted', 'Unlisted (Override)', 'Unlisted', 'Greylisted', 'No total credit in tables.xml, No compute stats'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 'Out', '2017-09-24', 3856384613, 681426, 525680, 1737, 1.30, 12, 'Unlisted', 'Unlisted', 'Unlisted', 'Greylisted', NULL),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 'In', '2015-09-20', 2182390247, 3734087, 4265711, 21688, 0.88, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', NULL),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 'NO VOTE', '0000-00-00', 7491442221, 8675110, 9065505, 45617, 0.96, 0, 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Whitelisted', 'Compute estimated');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
