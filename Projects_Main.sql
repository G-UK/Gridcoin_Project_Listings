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

-- Dumping structure for table grc_listings.Projects_Main
CREATE TABLE IF NOT EXISTS `Projects_Main` (
  `Project ID` varchar(50) NOT NULL,
  `Project Name` text NOT NULL,
  `HTTPS` tinytext,
  `SSL/TLS Version` tinytext,
  `HTTPS Providor` tinytext,
  `Vote (In/Out)` tinytext,
  `Vote (Date)` date NOT NULL,
  `Project Total Credit` double unsigned NOT NULL,
  `Project Avg Daily Credit (7 Day)` float unsigned DEFAULT NULL,
  `Project Avg Daily Credit (40 Day)` float unsigned DEFAULT NULL,
  `Project Compute Speed (GFlops)` int(10) unsigned DEFAULT '0',
  `W.A.S (Work Availability Score)` decimal(3,2) unsigned DEFAULT NULL COMMENT 'Work Availability Score',
  `Z.C.D (Zero Credit Days)` smallint(6) unsigned DEFAULT NULL COMMENT 'Zero Credit Days',
  `Current Status` tinytext NOT NULL,
  `Project Status` tinytext NOT NULL,
  `Project Suitability` tinytext NOT NULL,
  `Last Update` datetime DEFAULT NULL,
  `Notes` text,
  KEY `Project ID` (`Project ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This Table is the main data to be presented, you should just be able to query the whole table and then drop the first (Project ID) column.';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
