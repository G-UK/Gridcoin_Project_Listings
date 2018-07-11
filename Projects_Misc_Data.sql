-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.29-MariaDB-6+b1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table grc_listings.Projects_Misc_Data
CREATE TABLE IF NOT EXISTS `Projects_Misc_Data` (
  `Project ID` varchar(255) NOT NULL,
  `Tables.xml` varchar(255) DEFAULT NULL,
  `creditxpath` varchar(255) DEFAULT NULL,
  `ServerStatus.xml` varchar(255) DEFAULT NULL,
  `computexpath` varchar(255) DEFAULT NULL,
  KEY `FK_Projects_Misc_Data_Projects_Main` (`Project ID`),
  CONSTRAINT `FK_Projects_Misc_Data_Projects_Main` FOREIGN KEY (`Project ID`) REFERENCES `Projects_Main` (`Project ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Just some random data on the Projects I ended up not using in the database.';

-- Dumping data for table grc_listings.Projects_Misc_Data: ~41 rows (approximately)
/*!40000 ALTER TABLE `Projects_Misc_Data` DISABLE KEYS */;
INSERT INTO `Projects_Misc_Data` (`Project ID`, `Tables.xml`, `creditxpath`, `ServerStatus.xml`, `computexpath`) VALUES
	('acoustics', 'http://www.acousticsathome.ru/boinc/stats/tables.xml\r\n', '/tables/total_credit', 'http://www.acousticsathome.ru/boinc/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('amicable', 'https://sech.me/boinc/Amicable/stats/tables.xml', '/tables/total_credit', 'https://sech.me/boinc/Amicable/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('asteroids', 'http://asteroidsathome.net/boinc/stats/tables.xml', '/tables/total_credit\r\n', 'http://asteroidsathome.net/boinc/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('cas', 'http://casathome.ihep.ac.cn/stats/tables.xml', '/tables/total_credit\r\n', 'http://casathome.ihep.ac.cn/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('collatz', 'https://boinc.thesonntags.com/collatz/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.thesonntags.com/collatz/server_status.php?xml=1', '/server_status/database_file_states/current_integer_speed'),
	('cosmology', 'https://www.cosmologyathome.org/stats/tables.xml', '/tables/total_credit\r\n', 'https://www.cosmologyathome.org/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('cpdn', 'https://www.cpdn.org/cpdnboinc/stats/tables.xml', '/tables/total_credit\r\n', 'https://www.cpdn.org/cpdnboinc/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('csg', 'https://csgrid.org/csg/stats/tables.xml', '/tables/total_credit\r\n', 'https://csgrid.org/csg/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('denis', 'http://denis.usj.es/denisathome/stats/tables.xml', '/tables/total_credit\r\n', 'http://denis.usj.es/denisathome/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('drugdiscovery', 'https://boinc.drugdiscoveryathome.com/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.drugdiscoveryathome.com/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('einstein', 'https://einstein.phys.uwm.edu/stats/tables.xml', '/tables/total_credit\r\n', 'https://einstein.phys.uwm.edu/server_status.php?xml=1', '/server_status/database_file_states/cpu_flops'),
	('enigma', 'http://www.enigmaathome.net/stats/tables.xml', '/tables/total_credit\r\n', 'http://www.enigmaathome.net/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('gerasim', 'http://gerasim.boinc.ru/stats/tables.xml', '/tables/total_credit\r\n', 'http://gerasim.boinc.ru/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('goofycpu', 'http://cpu.goofyxgridathome.net/stats/tables.xml', '/tables/total_credit\r\n', 'http://cpu.goofyxgridathome.net/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('gpugrid', 'https://www.gpugrid.net/stats/tables.xml', '/tables/total_credit\r\n', 'https://www.gpugrid.net/server_status.php', NULL),
	('lhc', 'https://lhcathome.cern.ch/lhcathome/stats/tables.xml', '/tables/total_credit\r\n', 'https://lhcathome.cern.ch/lhcathome/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('milkyway', 'https://milkyway.cs.rpi.edu/milkyway/stats/tables.xml', '/tables/total_credit\r\n', 'https://milkyway.cs.rpi.edu/milkyway/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('moowrap', 'https://moowrap.net/stats/tables.xml', '/tables/total_credit\r\n', 'https://moowrap.net/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('nfs', 'https://escatter11.fullerton.edu/nfs/stats/tables.xml', '/tables/total_credit\r\n', 'https://escatter11.fullerton.edu/nfs/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('numberfields', 'https://numberfields.asu.edu/NumberFields/stats/tables.xml', '/tables/total_credit\r\n', 'https://numberfields.asu.edu/NumberFields/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('odlk', 'https://boinc.progger.info/odlk/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.progger.info/odlk/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('odlk1', 'https://boinc.multi-pool.info/latinsquares/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.multi-pool.info/latinsquares/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('primaboinca', 'http://www.primaboinca.com/stats/tables.xml', '/tables/total_credit\r\n', NULL, NULL),
	('primegrid', 'https://www.primegrid.com/stats/tables.xml', '/tables/total_credit\r\n', 'https://www.primegrid.com/server_status.php?xml=1', NULL),
	('rakesearch', 'http://rake.boincfast.ru/rakesearch/stats/tables.xml', '/tables/total_credit\r\n', 'http://rake.boincfast.ru/rakesearch/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('rnaworld', 'https://www.rnaworld.de/rnaworld/stats/tables.xml', '/tables/total_credit\r\n', 'https://www.rnaworld.de/rnaworld/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('rosetta', 'https://boinc.bakerlab.org/rosetta/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.bakerlab.org/rosetta/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('seti', 'https://setiathome.berkeley.edu/stats/tables.xml', '/tables/total_credit\r\n', NULL, NULL),
	('srbase', 'http://srbase.my-firewall.org/sr5/stats/tables.xml', '/tables/total_credit\r\n', 'http://srbase.my-firewall.org/sr5/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('tngrid', 'https://gene.disi.unitn.it/test/stats/tables.xml', '/tables/total_credit\r\n', 'https://gene.disi.unitn.it/test/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('universe', 'https://universeathome.pl/universe/stats/tables.xml', '/tables/total_credit\r\n', 'https://universeathome.pl/universe/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('vgtu', 'https://boinc.vgtu.lt/vtuathome/stats/tables.xml', '/tables/total_credit\r\n', 'https://boinc.vgtu.lt/vtuathome/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('wcg', 'https://www.worldcommunitygrid.org/stat/viewGlobal.do?xml=true', '/GlobalStatistics/StatisticsTotals/Points', NULL, NULL),
	('wep', 'http://bearnol.is-a-geek.com/wanless2/stats/tables.xml', '/tables/total_credit\r\n', 'http://bearnol.is-a-geek.com/wanless2/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('xansons', 'https://xansons4cod.com/xansons4cod/stats/tables.xml', '/tables/total_credit\r\n', 'https://xansons4cod.com/xansons4cod/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed\r\n'),
	('yafu', 'https://yafu.myfirewall.org/yafu/stats/tables.xml', '/tables/total_credit\r\n', 'https://yafu.myfirewall.org/yafu/server_status.php?xml=1', '/server_status/database_file_states/current_floating_point_speed'),
	('yoyo', 'https://www.rechenkraft.net/yoyo/stats/tables.xml', '/tables/total_credit', NULL, NULL),
	('mindmodelling', 'https://mindmodeling.org/stats/tables.xml', '/tables/total_credit', 'https://mindmodeling.org/server_status.php?=xml', '/server_status/database_file_states/current_floating_point_speed');
/*!40000 ALTER TABLE `Projects_Misc_Data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
