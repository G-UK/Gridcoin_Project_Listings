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

-- Dumping structure for procedure grc_listings.Update_All_Listings
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Update_All_Listings`()
    COMMENT 'This procedure calls the Update_Listing procedure for each proje'
BEGIN

-- There is possibly a better way of doing this but I am a beginner with SQL--

CALL `Update_Listing`('acoustics');
CALL `Update_Listing`('amicable');
CALL `Update_Listing`('asteroids');
CALL `Update_Listing`('cas');
CALL `Update_Listing`('collatz');
CALL `Update_Listing`('cosmology');
CALL `Update_Listing`('cpdn');
CALL `Update_Listing`('csg');
CALL `Update_Listing`('dbn');
CALL `Update_Listing`('denis');
CALL `Update_Listing`('dhep');
CALL `Update_Listing`('drugdiscovery');
CALL `Update_Listing`('einstein');
CALL `Update_Listing`('enigma');
CALL `Update_Listing`('gerasim');
CALL `Update_Listing`('goofycpu');
CALL `Update_Listing`('gpugrid');
CALL `Update_Listing`('lhc');
CALL `Update_Listing`('milkyway');
CALL `Update_Listing`('moowrap');
CALL `Update_Listing`('nano');
CALL `Update_Listing`('nfs');
CALL `Update_Listing`('numberfields');
CALL `Update_Listing`('odlk');
CALL `Update_Listing`('odlk1');
CALL `Update_Listing`('primaboinca');
CALL `Update_Listing`('primegrid');
CALL `Update_Listing`('rakesearch');
CALL `Update_Listing`('rnaworld');
CALL `Update_Listing`('rosetta');
CALL `Update_Listing`('seti');
CALL `Update_Listing`('srbase');
CALL `Update_Listing`('tngrid');
CALL `Update_Listing`('universe');
CALL `Update_Listing`('vgtu');
CALL `Update_Listing`('wcg');
CALL `Update_Listing`('wep');
CALL `Update_Listing`('xansons');
CALL `Update_Listing`('yafu');
CALL `Update_Listing`('yoyo');

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
