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
  `HTTPS` text COLLATE latin1_general_ci,
  `SSL/TLS Version` text COLLATE latin1_general_ci,
  `HTTPS Providor` text COLLATE latin1_general_ci,
  `Project Total Credit` bigint(20) unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (7 Day)` bigint(20) unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` bigint(20) unsigned DEFAULT NULL,
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Days Credit)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Whitelist Status` tinytext COLLATE latin1_general_ci NOT NULL,
  `Potential Whitelist Status` tinytext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Dumping data for table grc_listings.Projects_Main: ~42 rows (approximately)
/*!40000 ALTER TABLE `Projects_Main` DISABLE KEYS */;
INSERT INTO `Projects_Main` (`Project ID`, `Project Name`, `HTTPS`, `SSL/TLS Version`, `HTTPS Providor`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Project Avg Daily Credit (7 Day)`, `Project Avg Daily Credit (40 Day)`, `W.A.S (Work Availability Score)`, `Z.C.D (Zero Days Credit)`, `Current Whitelist Status`, `Potential Whitelist Status`) VALUES
	('acoustics', 'Acoustics@Home', 'No', NULL, NULL, 129560465, 1, 0, 0, NULL, 20, 'Unlisted', 'Unlisted'),
	('amicable', 'Amicable Numbers', 'Yes', 'TLS1.2', 'Lets Encrypt', 39204221436, 1212, 455135215, 259645469, 1.75, 0, 'Whitelisted', 'Whitelisted'),
	('asteroids', 'Asteroids@Home', 'Yes', 'TLS1.2', 'TERENA', 69543153333, 315710, 84125486, 71329872, 1.18, 3, 'Whitelisted', 'Whitelisted'),
	('cas', 'CAS@Home', 'No', NULL, NULL, 350718242, 20, 4752, 3511, 1.35, 0, 'Unlisted', 'Whitelisted'),
	('collatz', 'Collatz Conjecture', 'Yes', 'TLS1.2', 'Lets Encrypt', 1459412127488, 0, 3513677559, 2590643573, 1.36, 0, 'Whitelisted', 'Whitelisted'),
	('cosmology', 'Cosmology@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 9385303708, 22128, 5169619, 5387357, 0.96, 3, 'Whitelisted', 'Whitelisted'),
	('cpdn', 'ClimatePrediction.net', 'Yes', 'TLS1.2', 'Lets Encrypt', 35479104301, 69286, 11758179, 17355907, 0.68, 17, 'Unlisted', 'Unlisted'),
	('csg', 'Citizen Science Grid', 'Yes', 'TLS1.2', 'Globalsign', 21406296551, 309518, 112877815, 76390201, 1.48, 0, 'Whitelisted', 'Whitelisted'),
	('ddm', 'Distributed Data Mining', 'Yes', 'TLS1.2', 'Lets Encrypt', 932335419, NULL, 407175, 403485, 1.01, 0, 'Unlisted', 'Whitelisted'),
	('denis', 'DENIS', 'No', NULL, NULL, 1315354133, 831, 192933, 34080, 5.66, 12, 'Unlisted', 'Unlisted'),
	('drugdiscovery', 'Drug Discovery', 'Yes', 'TLS1.2', 'Lets Encrypt', 854176332, 132, 0, 2184, 0.00, 21, 'Greylisted', 'Greylisted'),
	('einstein', 'Einstein', 'Yes', 'TLS1.2', 'Thawte', 0, 0, 1016556405, 777972371, 1.31, 1, 'Whitelisted', 'Whitelisted'),
	('enigma', 'Enigma', 'No', NULL, NULL, 29300064408, 521128, 174129634, 128420005, 1.36, 1, 'Whitelisted', 'Whitelisted'),
	('gerasim', 'Gerasim', 'No', NULL, NULL, 1204220387, 1391, 685887, 815394, 0.84, 0, 'Unlisted', 'Whitelisted'),
	('goofycpu', 'GoofyxGrid CPU', 'Yes', NULL, NULL, 965541228, 134928, 48805100, 42390125, 1.15, 0, 'Unlisted', 'Whitelisted'),
	('gpugrid', 'GPUGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 645547908128, NULL, 678205326, 500110932, 1.36, 0, 'Whitelisted', 'Whitelisted'),
	('leiden', 'Leiden Classical', 'Yes', 'TLS1.2', 'TERENA', 1572217158, NULL, 1357034, 1068888, 1.27, 0, 'Unlisted', 'Whitelisted'),
	('lhc', 'LHC@Home', 'Yes', 'TLS1.2', 'COMODO', 10709264358, 64807, 24799635, 14457746, 1.72, 1, 'Whitelisted', 'Whitelisted'),
	('milkyway', 'Milkyway', 'Yes', 'TLS1.2', 'Internet2', 343555239026, 904569, 352722905, 233026508, 1.51, 0, 'Whitelisted', 'Whitelisted'),
	('moowrap', 'MooWrap', 'Yes', 'TLS1.2', 'COMODO', 146307772449, 248542, 107385986, 68767548, 1.56, 0, 'Unlisted', 'Whitelisted'),
	('nfs', 'NFS', 'Yes', 'TLS1.2', 'Lets Encrypt', 9353583885, 73479, 27777512, 18916049, 1.47, 0, 'Whitelisted', 'Whitelisted'),
	('numberfields', 'Numberfields', 'Yes', 'TLS1.2', 'Internet2', 5694763330, 67808, 25782901, 15897210, 1.62, 3, 'Whitelisted', 'Whitelisted'),
	('odlk', 'ODLK', 'Yes', 'TLS1.2', 'Lets Encrypt', 122707515, 1855, 500979, 675881, 0.74, 1, 'Unlisted', 'Whitelisted'),
	('odlk1', 'ODLK1', 'Yes', 'TLS1.2', 'Lets Encrypt', 241909586, 16921, 6514950, 3982817, 1.64, 2, 'Whitelisted', 'Whitelisted'),
	('primaboinca', 'Primaboinca', 'No', NULL, NULL, 4586367335, NULL, 812800, 764770, 1.06, 6, 'Unlisted', 'Whitelisted'),
	('primegrid', 'Primegrid', 'Yes', 'TLS1.2', 'COMODO', 710495811761, 0, 718599058, 467779835, 1.54, 0, 'Whitelisted', 'Whitelisted'),
	('rakesearch', 'Rakesearch', 'Yes', NULL, NULL, 864747317, 27691, 8585117, 7813348, 1.10, 2, 'Unlisted', 'Whitelisted'),
	('rnaworld', 'RNA World', 'Yes', 'TLS1.2', 'Lets Encrypt', 648250243, 37, 27593, 19645, 1.40, 7, 'Unlisted', 'Whitelisted'),
	('rosetta', 'Rosetta@Home', 'Yes', 'TLS1.2', 'COMODO', 64979219280, 200958, 61914022, 43117331, 1.44, 2, 'Whitelisted', 'Whitelisted'),
	('seti', 'SETI@Home', 'Yes', 'TLS1.2', 'Internet2', 0, NULL, 0, 0, NULL, 4, 'Whitelisted', 'Unlisted'),
	('skynet', 'POGS Skynet', 'Yes', 'TLS1.2', 'Thawte', 19375230631, 94925, 36406184, 22149387, 1.64, 0, 'Whitelisted', 'Whitelisted'),
	('sourcefinder', 'Sourcefinder', 'Yes', 'TLS1.2', 'Lets Encrypt', 31386812, 483, 188424, 110173, 1.71, 0, 'Unlisted', 'Whitelisted'),
	('srbase', 'SRBase', 'No', NULL, NULL, 4883608790, 69939, 10582485, 10582485, 1.00, 1, 'Whitelisted', 'Whitelisted'),
	('sztaki', 'Sztaki Desktop Grid', 'No', NULL, NULL, 1011153046, NULL, 0, 0, NULL, 20, 'Unlisted', 'Unlisted'),
	('tngrid', 'TNGrid', 'Yes', 'TLS1.2', 'Lets Encrypt', 1246697658, 4724, 1380663, 1072500, 1.29, 0, 'Whitelisted', 'Whitelisted'),
	('universe', 'Universe@Home', 'Yes', 'TLS1.2', 'Lets Encrypt', 11032835719, 55005, 18558733, 6123498, 3.03, 0, 'Whitelisted', 'Whitelisted'),
	('vgtu', 'VGTU', 'Yes', 'TLS1.2', 'TERENA', 953437228, 10959, 3346948, 2474908, 1.35, 0, 'Whitelisted', 'Whitelisted'),
	('wcg', 'World Community Grid', 'Yes', 'TLS1.2', 'Thawte', 0, NULL, 178064954, 138786367, 1.28, 2, 'Whitelisted', 'Whitelisted'),
	('wep', 'WEP M+2', 'No', NULL, NULL, 0, 1481, 0, 0, NULL, 4, 'Unlisted', 'Unlisted'),
	('xansons', 'XANSONS4COD', 'Yes', 'TLS1.2', 'Starfields', 3851614632, 2172, 138031, 639144, 0.22, 11, 'Unlisted', 'Unlisted'),
	('yafu', 'YAFU', 'Yes', 'TLS1.2', 'Lets Encrypt', 2156251639, 17326, 5542264, 4304901, 1.29, 0, 'Whitelisted', 'Whitelisted'),
	('yoyo', 'Yoyo', 'Yes', 'TLS1.2', 'COMODO', 7430716450, NULL, 14078978, 8889517, 1.58, 0, 'Whitelisted', 'Whitelisted');
/*!40000 ALTER TABLE `Projects_Main` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
