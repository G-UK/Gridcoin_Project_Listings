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

-- Dumping structure for table grc_listings.Projects_Data
CREATE TABLE IF NOT EXISTS `Projects_Data` (
  `Project ID` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Unix Timestamp` bigint(20) NOT NULL,
  `Project Total Credit` bigint(20) NOT NULL,
  `Project Compute Speed (GFlops)` int(10) unsigned DEFAULT '0',
  `Project Daily Credit` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Project ID`,`Date`),
  KEY `Project ID` (`Project ID`),
  CONSTRAINT `FK_Projects_Data_Projects_Main` FOREIGN KEY (`Project ID`) REFERENCES `Projects_Main` (`Project ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Daily data for all the projects';

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
