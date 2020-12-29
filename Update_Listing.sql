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

-- Dumping structure for procedure grc_listings.Update_Listing
DELIMITER //
CREATE PROCEDURE `Update_Listing`(
	IN `project` VARCHAR(250)
)
BEGIN

-- Pull existing values--
DECLARE was DECIMAL(3,2);
DECLARE zcd BIGINT;
DECLARE vote TINYTEXT;
DECLARE compute INT;
DECLARE users INT;
DECLARE currentstatus TINYTEXT;

-- Values to be calculated --
DECLARE listing TINYTEXT;
DECLARE suitability TINYTEXT;

SET was = (SELECT `W.A.S (Work Availability Score)`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID` = project);
    
SET zcd = (SELECT `Z.C.D (Zero Credit Days)`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID` = project);
  
SET vote = (SELECT `Vote (In/Out)`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID`= project);
    
SET compute = (SELECT `Project Compute Speed (GFlops)`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID`= project);
    
SET users = (SELECT `Active Users`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID`= project);

SET currentstatus = (SELECT `Current Status`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID`= project);

-- Calculate "Listing" category --
IF 
    (was >= '0.1') AND
    (zcd <= '7') AND
    (vote != 'OUT') AND
    (currentstatus != 'Unlisted')
    THEN SET listing = 'Whitelisted';

ELSEIF ((was < '0.1') OR (zcd > '7') OR (vote != 'Out')) AND
        (currentstatus != 'Unlisted')
        THEN SET listing = 'Greylisted'; 

ELSE SET
    listing = 'Unlisted';
END IF;

-- Calculate "Suitability" category --
IF  
    (was >= '0.1') AND
    (zcd <= '7') AND
    (users >= '200') AND
    (compute >= '1000')
    THEN SET suitability = 'Suitable for Rewards';

ELSEIF
    (was < '0.1') OR
    (zcd > '7') OR
    (users < '200') OR
    (compute < '1000')
    THEN SET suitability = 'Unsuitable for Rewards';

ELSE SET suitability = 'Unsuitable for Rewards';

END IF;

-- Enter Project Overrides Here (Used for projects not exporting stats through tables.xml) --
-- Primegrid Requested removal --
IF (project = 'primegrid')
    THEN SET
        listing = 'Unlisted',
        suitability = 'Unsuitable for Rewards';
END IF;

-- Einstein stats only available to scrapers --
IF (project = 'einstein')
    THEN SET
        listing = 'Whitelisted',
        suitability = 'Suitable for Rewards';
END IF;

-- iThena is NCI so not suitable --
IF (project = 'ithena')
    THEN SET
        listing = 'Unlisted',
        suitability = 'Unsuitable for Rewards';
END IF;

-- WUProp is NCI so not suitable --
IF (project = 'wuprop')
    THEN SET
        listing = 'Unlisted',
        suitability = 'Unsuitable for Rewards';
END IF;

-- Update main Project Summary --

UPDATE grc_listings.`Projects_Main`
    SET `Project Status` = listing,
        `Project Suitability` = suitability
    WHERE `Project ID` = project;
    
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
