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

-- Dumping structure for procedure grc_listings.Update_Listing
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Update_Listing`(
	IN `project` VARCHAR(250)
)
BEGIN

DECLARE whitelist TINYTEXT;
DECLARE expwhitelist TINYTEXT;
DECLARE recwhitelist TINYTEXT;
DECLARE was DECIMAL(3,2);
DECLARE zcd BIGINT;
DECLARE compute BIGINT;
DECLARE vote TINYTEXT;
DECLARE currentstatus TINYTEXT;

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

SET currentstatus = (SELECT `Current Status`
    FROM grc_listings.`Projects_Main`
    WHERE `Project ID`= project);

-- Calculate "Calculated" listing category --
IF 
    (was >= '0.1') AND
    (zcd <= '7') AND
    (vote != 'OUT') AND
    (currentstatus != 'Unlisted')
    THEN SET whitelist = 'Whitelisted';

ELSEIF ((was < '0.1') OR (zcd > '7') OR (vote != 'Out')) AND
        (currentstatus != 'Unlisted')
        THEN SET whitelist = 'Greylisted'; 

ELSE SET
    whitelist = 'Unlisted';

END IF;

-- Calculate "Experimental" listing category, testing for process updates --
IF
    (was >= '0.1') AND
    (zcd <= '7') AND
    ((compute >= '2500') OR (compute = '0')) AND
    (vote != 'Out') AND
    (currentstatus != 'Unlisted')
    THEN SET expwhitelist = 'Whitelisted';

ELSEIF ((was < '0.1') OR (zcd > '7') OR ((compute < '2500') OR (compute = '0')) OR (vote != 'Out')) AND
    (currentstatus != 'Unlisted') 
    THEN SET expwhitelist = 'Greylisted';

ELSE SET
    expwhitelist = 'Unlisted';

END IF;

-- Calculate "Experimental Recommended" listing category, testing for process updates
IF  
    (was >= '0.1') AND
    (zcd <= '7') AND
    (compute >= '2500')
    THEN SET recwhitelist = 'Whitelisted';

ELSEIF
    (was < '0.1') OR
    (zcd > '7') OR
    (compute < '2500')
    THEN SET recwhitelist = 'Greylisted';

ELSE SET recwhitelist = 'Unlisted';

END IF;

-- Enter Project Overrides Here (Used for projects not exporting stats through tables.xml) --
-- SETI doesn't export stats in the files we collect but they are a big project with consistant work over many years --

IF (project = 'seti')
    THEN SET
        whitelist = 'Whitelisted (Override)',
        expwhitelist = 'Whitelisted (Override)',
        recwhitelist = 'Whitelisted (Override)';
END IF;

-- WEP doesn't export stats in the files we collect and they are a small project that would be unlikely to support our load --

IF (project = 'wep')
    THEN SET
        whitelist = 'Unlisted (Override)';
END IF;

-- WCG does not allow stats export --

IF (project = 'wcg')
    THEN SET
        whitelist = 'Greylisted (Override)',
        expwhitelist = 'Greylisted (Override)',
        recwhitelist = 'Greylisted (Override)';
END IF;

-- Einstein does not allow stats export --

IF (project = 'einstein')
    THEN SET
        whitelist = 'Greylisted (Override)',
        expwhitelist = 'Greylisted (Override)',
        recwhitelist = 'Greylisted (Override)';
END IF;

-- Update main Project Summary --

UPDATE grc_listings.`Projects_Main`
    SET `Calculated Status` = whitelist,
        `Calculated Status (Experimental)` = expwhitelist,
        `Recommended Status (Experimental)` = recwhitelist
    WHERE `Project ID` = project;
    
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
