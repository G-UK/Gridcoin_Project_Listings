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

-- Dumping structure for table grc_listings.File_Location
CREATE TABLE IF NOT EXISTS `File_Location` (
  `Project ID` varchar(50) NOT NULL,
  `Compute Path` text DEFAULT NULL,
  `Compute XPath` text DEFAULT NULL,
  `Users XPath` text DEFAULT NULL,
  `Workunit XPath` text DEFAULT NULL,
  `Credit Path` text DEFAULT NULL,
  `Credit XPath` text DEFAULT NULL,
  `Unix Time XPath` text DEFAULT NULL,
  PRIMARY KEY (`Project ID`),
  CONSTRAINT `FK_File_Location_Projects_Main` FOREIGN KEY (`Project ID`) REFERENCES `Projects_Main` (`Project ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Project File Locations';

-- Dumping data for table grc_listings.File_Location: ~37 rows (approximately)
/*!40000 ALTER TABLE `File_Location` DISABLE KEYS */;
INSERT INTO `File_Location` (`Project ID`, `Compute Path`, `Compute XPath`, `Users XPath`, `Workunit XPath`, `Credit Path`, `Credit XPath`, `Unix Time XPath`) VALUES
	('amicable', '/tmp/Projects/Compute/amicable', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/amicable', '/tables/total_credit', '/tables/update_time'),
	('asteroids', '/tmp/Projects/Compute/asteroids', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/asteroids', '/tables/total_credit', '/tables/update_time'),
	('collatz', '/tmp/Projects/Compute/collatz', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/collatz', '/tables/total_credit', '/tables/update_time'),
	('cosmology', '/tmp/Projects/Compute/cosmology', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/cosmology', '/tables/total_credit', '/tables/update_time'),
	('cpdn', '/tmp/Projects/Compute/cpdn', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/cpdn', '/tables/total_credit', '/tables/update_time'),
	('csg', '/tmp/Projects/Compute/csg', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/csg', '/tables/total_credit', '/tables/update_time'),
	('gaia', '/tmp/Projects/Compute/gaia', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/gaia', '/tables/total_credit', '/tables/update_time'),
	('gerasim', '/tmp/Projects/Compute/gerasim', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/gerasim', '/tables/total_credit', '/tables/update_time'),
	('gpugrid', '/tmp/Projects/Compute/gpugrid', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/gpugrid', '/tables/total_credit', '/tables/update_time'),
	('ibercivis', '/tmp/Projects/Compute/ibercivis', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/ibercivis', '/tables/total_credit', '/tables/update_time'),
	('ithena', '/tmp/Projects/Compute/ithena', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/ithena', '/tables/total_credit', '/tables/update_time'),
	('lhc', '/tmp/Projects/Compute/lhc', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/lhc', '/tables/total_credit', '/tables/update_time'),
	('milkyway', '/tmp/Projects/Compute/milkyway', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/milkyway', '/tables/total_credit', '/tables/update_time'),
	('mind', '/tmp/Projects/Compute/mind', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/mind', '/tables/total_credit', '/tables/update_time'),
	('minecraft', '/tmp/Projects/Compute/minecraft', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/minecraft', '/tables/total_credit', '/tables/update_time'),
	('mlc', '/tmp/Projects/Compute/mlc', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/mlc', '/tables/total_credit', '/tables/update_time'),
	('moowrap', '/tmp/Projects/Compute/moowrap', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/moowrap', '/tables/total_credit', '/tables/update_time'),
	('nano', '/tmp/Projects/Compute/nano', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/nano', '/tables/total_credit', '/tables/update_time'),
	('nfs', '/tmp/Projects/Compute/nfs', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/nfs', '/tables/total_credit', '/tables/update_time'),
	('numberfields', '/tmp/Projects/Compute/numberfields', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/numberfields', '/tables/total_credit', '/tables/update_time'),
	('odlk', '/tmp/Projects/Compute/odlk', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/odlk', '/tables/total_credit', '/tables/update_time'),
	('odlk1', '/tmp/Projects/Compute/odlk1', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/odlk1', '/tables/total_credit', '/tables/update_time'),
	('primegrid', '/tmp/Projects/Compute/primegrid', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/primegrid', '/tables/total_credit', '/tables/update_time'),
	('quchem', '/tmp/Projects/Compute/quchem', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/quchem', '/tables/total_credit', '/tables/update_time'),
	('rakesearch', '/tmp/Projects/Compute/rakesearch', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/rakesearch', '/tables/total_credit', '/tables/update_time'),
	('rnaworld', '/tmp/Projects/Compute/rnaworld', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/rnaworld', '/tables/total_credit', '/tables/update_time'),
	('rosetta', '/tmp/Projects/Compute/rosetta', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/rosetta', '/tables/total_credit', '/tables/update_time'),
	('sidock', '/tmp/Projects/Compute/sidock', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/sidock', '/tables/total_credit', '/tables/update_time'),
	('srbase', '/tmp/Projects/Compute/srbase', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/srbase', '/tables/total_credit', '/tables/update_time'),
	('tacc', '/tmp/Projects/Compute/tacc', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/tacc', '/tables/total_credit', '/tables/update_time'),
	('tbrada', '/tmp/Projects/Compute/tbrada', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/tbrada', '/tables/total_credit', '/tables/update_time'),
	('tngrid', '/tmp/Projects/Compute/tngrid', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/tngrid', '/tables/total_credit', '/tables/update_time'),
	('universe', '/tmp/Projects/Compute/universe', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/universe', '/tables/total_credit', '/tables/update_time'),
	('wcg', '/tmp/Projects/Compute/wcg', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/wcg', '/tables/total_credit', '/tables/update_time'),
	('wep', '/tmp/Projects/Compute/wep', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/wep', '/tables/total_credit', '/tables/update_time'),
	('wuprop', '/tmp/Projects/Compute/wuprop', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/wuprop', '/tables/total_credit', '/tables/update_time'),
	('yafu', '/tmp/Projects/Compute/yafu', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/yafu', '/tables/total_credit', '/tables/update_time'),
	('yoyo', '/tmp/Projects/Compute/yoyo', '/server_status/database_file_states/current_floating_point_speed', '/server_status/database_file_states/users_with_recent_credit', '/server_status/database_file_states/results_ready_to_send', '/tmp/Projects/Credit/yoyo', '/tables/total_credit', '/tables/update_time');
/*!40000 ALTER TABLE `File_Location` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
