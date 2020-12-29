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

-- Dumping structure for procedure grc_listings.Update_All
DELIMITER //
CREATE PROCEDURE `Update_All`()
BEGIN

DECLARE ID VARCHAR(50) DEFAULT NULL;
DECLARE done INT DEFAULT FALSE;

DECLARE IDCursor CURSOR FOR
	SELECT	`Project ID`
   FROM 		grc_listings.`Projects_Main`;
  
DECLARE CONTINUE HANDLER FOR NOT FOUND	SET done = TRUE;

OPEN IDCursor;

	ID_Loop:	LOOP
		FETCH NEXT FROM IDCursor INTO ID;
		IF done THEN
			LEAVE ID_Loop; 
		END IF;
			CALL Import_XMLs(ID);
    		CALL Update_Maths(ID);
	END LOOP;
	
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
