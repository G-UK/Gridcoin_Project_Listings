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

-- Dumping structure for procedure grc_listings.Update_All
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Update_All`()
    COMMENT 'This procedure calls Import and Maths procedures for each project'
BEGIN
-- There is possibly a better way of doing this but I am a beginner with SQL--

CALL `Import_XMLs`('acoustics');
CALL `Update_Maths`('acoustics');
CALL `Amicable_Import`('amicable');
CALL `Update_Maths`('amicable');
CALL `Import_XMLs`('asteroids');
CALL `Update_Maths`('asteroids');
CALL `Import_XMLs`('cas');
CALL `Update_Maths`('cas');
CALL `Collatz_Import`('collatz');
CALL `Update_Maths`('collatz');
CALL `Import_XMLs`('cosmology');
CALL `Update_Maths`('cosmology');
CALL `Import_XMLs`('cpdn');
CALL `Update_Maths`('cpdn');
CALL `Import_XMLs`('csg');
CALL `Update_Maths`('csg');
CALL `Import_XMLs`('ddm');
CALL `Update_Maths`('ddm');
CALL `Import_XMLs`('denis');
CALL `Update_Maths`('denis');
CALL `Import_XMLs`('drugdiscovery');
CALL `Update_Maths`('drugdiscovery');
CALL `Einstein_Import`('einstein');
CALL `Update_Maths`('einstein');
CALL `Import_XMLs`('enigma');
CALL `Update_Maths`('enigma');
CALL `Import_XMLs`('gerasim');
CALL `Update_Maths`('gerasim');
CALL `Import_XMLs`('goofycpu');
CALL `Update_Maths`('goofycpu');
CALL `Import_XMLs`('gpugrid');
CALL `Update_Maths`('gpugrid');
CALL `Import_XMLs`('leiden');
CALL `Update_Maths`('leiden');
CALL `Import_XMLs`('lhc');
CALL `Update_Maths`('lhc');
CALL `Import_XMLs`('milkyway');
CALL `Update_Maths`('milkyway');
CALL `Import_XMLs`('moowrap');
CALL `Update_Maths`('moowrap');
CALL `Import_XMLs`('nfs');
CALL `Update_Maths`('nfs');
CALL `Import_XMLs`('numberfields');
CALL `Update_Maths`('numberfields');
CALL `Import_XMLs`('odlk');
CALL `Update_Maths`('odlk');
CALL `Import_XMLs`('odlk1');
CALL `Update_Maths`('odlk1');
CALL `Import_XMLs`('primaboinca');
CALL `Update_Maths`('primaboinca');
CALL `Import_XMLs`('primegrid');
CALL `Update_Maths`('primegrid');
CALL `Import_XMLs`('rakesearch');
CALL `Update_Maths`('rakesearch');
CALL `Import_XMLs`('rnaworld');
CALL `Update_Maths`('rnaworld');
CALL `Import_XMLs`('rosetta');
CALL `Update_Maths`('rosetta');
CALL `Import_XMLs`('seti');
CALL `Update_Maths`('seti');
CALL `Import_XMLs`('skynet');
CALL `Update_Maths`('skynet');
CALL `Import_XMLs`('sourcefinder');
CALL `Update_Maths`('sourcefinder');
CALL `Import_XMLs`('srbase');
CALL `Update_Maths`('srbase');
CALL `Import_XMLs`('sztaki');
CALL `Update_Maths`('sztaki');
CALL `Import_XMLs`('tngrid');
CALL `Update_Maths`('tngrid');
CALL `Import_XMLs`('universe');
CALL `Update_Maths`('universe');
CALL `Import_XMLs`('vgtu');
CALL `Update_Maths`('vgtu');
CALL `WCG_Import`('wcg');
CALL `Update_Maths`('wcg');
CALL `Import_XMLs`('wep');
CALL `Update_Maths`('wep');
CALL `Import_XMLs`('xansons');
CALL `Update_Maths`('xansons');
CALL `Import_XMLs`('yafu');
CALL `Update_Maths`('yafu');
CALL `Import_XMLs`('yoyo');
CALL `Update_Maths`('yoyo');
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
