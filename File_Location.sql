-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.1.37-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5338
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table grc_listings.File_Location
CREATE TABLE IF NOT EXISTS `File_Location` (
  `Project ID` varchar(50) NOT NULL,
  `Compute Path` text,
  `Compute XPath` text,
  PRIMARY KEY (`Project ID`),
  CONSTRAINT `FK_File_Location_Projects_Main` FOREIGN KEY (`Project ID`) REFERENCES `Projects_Main` (`Project ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Project File Locations';

-- Dumping data for table grc_listings.File_Location: ~40 rows (approximately)
/*!40000 ALTER TABLE `File_Location` DISABLE KEYS */;
REPLACE INTO `File_Location` (`Project ID`, `Compute Path`, `Compute XPath`) VALUES
	('acoustics', '/tmp/Projects/Compute/acoustics', '/server_status/database_file_states/current_floating_point_speed'),
	('amicable', '/tmp/Projects/Compute/amicable', '/server_status/database_file_states/current_floating_point_speed'),
	('asteroids', '/tmp/Projects/Compute/asteroids', '/server_status/database_file_states/current_floating_point_speed'),
	('cas', '/tmp/Projects/Compute/cas', '/server_status/database_file_states/current_floating_point_speed'),
	('collatz', '/tmp/Projects/Compute/collatz', '/server_status/database_file_states/current_integer_speed'),
	('cosmology', '/tmp/Projects/Compute/cosmology', '/server_status/database_file_states/current_floating_point_speed'),
	('cpdn', '/tmp/Projects/Compute/cpdn', '/server_status/database_file_states/current_floating_point_speed'),
	('csg', '/tmp/Projects/Compute/csg', '/server_status/database_file_states/current_floating_point_speed'),
	('dbn', '/tmp/Projects/Compute/dbn', '/server_status/database_file_states/current_floating_point_speed'),
	('denis', '/tmp/Projects/Compute/denis', '/server_status/database_file_states/current_floating_point_speed'),
	('dhep', '/tmp/Projects/Compute/dhep', '/server_status/database_file_states/current_floating_point_speed'),
	('drugdiscovery', '/tmp/Projects/Compute/drugdiscovery', '/server_status/database_file_states/current_floating_point_speed'),
	('einstein', '/tmp/Projects/Compute/einstein', '/server_status/database_file_states/cpu_flops'),
	('enigma', '/tmp/Projects/Compute/enigma', '/server_status/database_file_states/current_floating_point_speed'),
	('gerasim', '/tmp/Projects/Compute/gerasim', '/server_status/database_file_states/current_floating_point_speed'),
	('goofycpu', '/tmp/Projects/Compute/goofycpu', '/server_status/database_file_states/current_floating_point_speed'),
	('gpugrid', '/tmp/Projects/Compute/gpugrid', '/server_status/database_file_states/current_floating_point_speed'),
	('lhc', '/tmp/Projects/Compute/lhc', '/server_status/database_file_states/current_floating_point_speed'),
	('milkyway', '/tmp/Projects/Compute/milkyway', '/server_status/database_file_states/current_floating_point_speed'),
	('mindmodelling', '/tmp/Projects/Compute/mindmodelling', '/server_status/database_file_states/current_floating_point_speed'),
	('nano', '/tmp/Projects/Compute/nano', '/server_status/database_file_states/current_floating_point_speed'),
	('nfs', '/tmp/Projects/Compute/nfs', '/server_status/database_file_states/current_floating_point_speed'),
	('numberfields', '/tmp/Projects/Compute/numberfields', '/server_status/database_file_states/current_floating_point_speed'),
	('odlk', '/tmp/Projects/Compute/odlk', '/server_status/database_file_states/current_floating_point_speed'),
	('odlk1', '/tmp/Projects/Compute/odlk1', '/server_status/database_file_states/current_floating_point_speed'),
	('primaboinca', '/tmp/Projects/Compute/primaboinca', '/server_status/database_file_states/current_floating_point_speed'),
	('primegrid', '/tmp/Projects/Compute/primegrid', '/server_status/database_file_states/current_floating_point_speed'),
	('rakesearch', '/tmp/Projects/Compute/rakesearch', '/server_status/database_file_states/current_floating_point_speed'),
	('rnaworld', '/tmp/Projects/Compute/rnaworld', '/server_status/database_file_states/current_floating_point_speed'),
	('rosetta', '/tmp/Projects/Compute/rosetta', '/server_status/database_file_states/current_floating_point_speed'),
	('seti', '/tmp/Projects/Compute/seti', '/server_status/database_file_states/current_floating_point_speed'),
	('srbase', '/tmp/Projects/Compute/srbase', '/server_status/database_file_states/current_floating_point_speed'),
	('tngrid', '/tmp/Projects/Compute/tngrid', '/server_status/database_file_states/current_floating_point_speed'),
	('universe', '/tmp/Projects/Compute/universe', '/server_status/database_file_states/current_floating_point_speed'),
	('vgtu', '/tmp/Projects/Compute/vgtu', '/server_status/database_file_states/current_floating_point_speed'),
	('wcg', '/tmp/Projects/Compute/wcg', '/server_status/database_file_states/current_floating_point_speed'),
	('wep', '/tmp/Projects/Compute/wep', '/server_status/database_file_states/current_floating_point_speed'),
	('xansons', '/tmp/Projects/Compute/xansons', '/server_status/database_file_states/current_floating_point_speed'),
	('yafu', '/tmp/Projects/Compute/yafu', '/server_status/database_file_states/current_floating_point_speed'),
	('yoyo', '/tmp/Projects/Compute/yoyo', '/server_status/database_file_states/current_floating_point_speed');
/*!40000 ALTER TABLE `File_Location` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
