-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.3.12-MariaDB-2 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.1.0.5479
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table grc_listings.File_Location
CREATE TABLE IF NOT EXISTS `File_Location` (
  `Project ID` varchar(50) NOT NULL,
  `Compute Path` text DEFAULT NULL,
  `Compute XPath` text DEFAULT NULL,
  `Credit Path` text DEFAULT NULL,
  `Credit XPath` text DEFAULT NULL,
  `Unix Time XPath` text DEFAULT NULL,
  PRIMARY KEY (`Project ID`),
  CONSTRAINT `FK_File_Location_Projects_Main` FOREIGN KEY (`Project ID`) REFERENCES `Projects_Main` (`Project ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Project File Locations';

-- Dumping data for table grc_listings.File_Location: ~38 rows (approximately)
/*!40000 ALTER TABLE `File_Location` DISABLE KEYS */;
INSERT INTO `File_Location` (`Project ID`, `Compute Path`, `Compute XPath`, `Credit Path`, `Credit XPath`, `Unix Time XPath`) VALUES
	('acoustics', '/tmp/Projects/Compute/acoustics', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/acoustics', '/tables/total_credit', '/tables/update_time'),
	('amicable', '/tmp/Projects/Compute/amicable', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/amicable', '/tables/total_credit', '/tables/update_time'),
	('asteroids', '/tmp/Projects/Compute/asteroids', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/asteroids', '/tables/total_credit', '/tables/update_time'),
	('cas', '/tmp/Projects/Compute/cas', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/cas', '/tables/total_credit', '/tables/update_time'),
	('collatz', '/tmp/Projects/Compute/collatz', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/collatz', '/tables/total_credit', '/tables/update_time'),
	('cosmology', '/tmp/Projects/Compute/cosmology', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/cosmology', '/tables/total_credit', '/tables/update_time'),
	('cpdn', '/tmp/Projects/Compute/cpdn', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/cpdn', '/tables/total_credit', '/tables/update_time'),
	('csg', '/tmp/Projects/Compute/csg', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/csg', '/tables/total_credit', '/tables/update_time'),
	('dbn', '/tmp/Projects/Compute/dbn', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/dbn', '/tables/total_credit', '/tables/update_time'),
	('denis', '/tmp/Projects/Compute/denis', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/denis', '/tables/total_credit', '/tables/update_time'),
	('dhep', '/tmp/Projects/Compute/dhep', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/dhep', '/tables/total_credit', '/tables/update_time'),
	('drugdiscovery', '/tmp/Projects/Compute/drugdiscovery', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/drugdiscovery', '/tables/total_credit', '/tables/update_time'),
	('enigma', '/tmp/Projects/Compute/enigma', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/enigma', '/tables/total_credit', '/tables/update_time'),
	('gerasim', '/tmp/Projects/Compute/gerasim', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/gerasim', '/tables/total_credit', '/tables/update_time'),
	('goofycpu', '/tmp/Projects/Compute/goofycpu', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/goofycpu', '/tables/total_credit', '/tables/update_time'),
	('gpugrid', '', '', '/tmp/Projects/Credit/gpugrid', '/tables/total_credit', '/tables/update_time'),
	('lhc', '/tmp/Projects/Compute/lhc', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/lhc', '/tables/total_credit', '/tables/update_time'),
	('milkyway', '/tmp/Projects/Compute/milkyway', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/milkyway', '/tables/total_credit', '/tables/update_time'),
	('mindmodelling', '/tmp/Projects/Compute/mindmodelling', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/mindmodelling', '/tables/total_credit', '/tables/update_time'),
	('moowrap', '/tmp/Projects/Compute/moowrap', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/moowrap', '/tables/total_credit', '/tables/update_time'),
	('nano', '/tmp/Projects/Compute/nano', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/nano', '/tables/total_credit', '/tables/update_time'),
	('nfs', '/tmp/Projects/Compute/nfs', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/nfs', '/tables/total_credit', '/tables/update_time'),
	('numberfields', '', '', '/tmp/Projects/Credit/numberfields', '/tables/total_credit', '/tables/update_time'),
	('odlk', '/tmp/Projects/Compute/odlk', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/odlk', '/tables/total_credit', '/tables/update_time'),
	('odlk1', '/tmp/Projects/Compute/odlk1', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/odlk1', '/tables/total_credit', '/tables/update_time'),
	('primaboinca', '/tmp/Projects/Compute/primaboinca', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/primaboinca', '/tables/total_credit', '/tables/update_time'),
	('primegrid', '', '', '/tmp/Projects/Credit/primegrid', '/tables/total_credit', '/tables/update_time'),
	('rakesearch', '/tmp/Projects/Compute/rakesearch', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/rakesearch', '/tables/total_credit', '/tables/update_time'),
	('rnaworld', '/tmp/Projects/Compute/rnaworld', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/rnaworld', '/tables/total_credit', '/tables/update_time'),
	('rosetta', '/tmp/Projects/Compute/rosetta', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/rosetta', '/tables/total_credit', '/tables/update_time'),
	('srbase', '/tmp/Projects/Compute/srbase', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/srbase', '/tables/total_credit', '/tables/update_time'),
	('tngrid', '/tmp/Projects/Compute/tngrid', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/tngrid', '/tables/total_credit', '/tables/update_time'),
	('universe', '/tmp/Projects/Compute/universe', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/universe', '/tables/total_credit', '/tables/update_time'),
	('vgtu', '/tmp/Projects/Compute/vgtu', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/vgtu', '/tables/total_credit', '/tables/update_time'),
	('wcg', '/tmp/Projects/Compute/wcg', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/wcg', '/GlobalStatistics/StatisticsTotals/Points', '/GlobalStatistics/LastUpdated'),
	('xansons', '/tmp/Projects/Compute/xansons', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/xansons', '/tables/total_credit', '/tables/update_time'),
	('yafu', '/tmp/Projects/Compute/yafu', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/yafu', '/tables/total_credit', '/tables/update_time'),
	('yoyo', '/tmp/Projects/Compute/yoyo', '/server_status/database_file_states/current_floating_point_speed', '/tmp/Projects/Credit/yoyo', '/tables/total_credit', '/tables/update_time');
/*!40000 ALTER TABLE `File_Location` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
