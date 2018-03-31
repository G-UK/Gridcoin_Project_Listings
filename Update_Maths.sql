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

-- Dumping structure for procedure grc_listings.Update_Maths
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Update_Maths`(
	IN `project` VARCHAR(255)






























































)
    COMMENT 'This procedure calculates the project stats needed for calculating the listings and updates the Main Project Summary table'
BEGIN
DECLARE today DATE;
DECLARE sevenday DATE;
DECLARE twentyday DATE;
DECLARE fourtyday DATE;
DECLARE sevenavg BIGINT;
DECLARE fourtyavg BIGINT;
DECLARE was DECIMAL(3,2);
DECLARE zcd BIGINT;
DECLARE whitelist TINYTEXT;
DECLARE expwhitelist TINYTEXT;
DECLARE recwhitelist TINYTEXT;
DECLARE compute BIGINT;
DECLARE vote TINYTEXT;
DECLARE currentstatus TINYTEXT;

-- Set Dates relative to the current date --
SET today = CURDATE();
SET sevenday = DATE_SUB(CURDATE(), INTERVAL 7 DAY);
SET twentyday = DATE_SUB(CURDATE(), INTERVAL 20 DAY);
SET fourtyday = DATE_SUB(CURDATE(), INTERVAL 40 DAY);

-- Set variables from database --
SET vote = (SELECT `Vote (In/Out)`
	FROM grc_listings.`Projects_Main`
	WHERE `Project ID`= project);
	
SET compute = (SELECT `Project Compute Speed (GFlops)`
	FROM grc_listings.`Projects_Main`
	WHERE `Project ID`= project);
	
SET currentstatus = (SELECT `Current Status`
	FROM grc_listings.`Projects_Main`
	WHERE `Project ID`= project);

-- Calculate the 7 day average daily credit for the project --
SET sevenavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= sevenday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate the 40 day average daily credit for the project --
SET fourtyavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= fourtyday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate Work Availability Score (WAS) --
IF fourtyavg = '0'
	THEN SET was = '0';
	ELSE SET was = sevenavg / fourtyavg;
END IF;

-- Calculate Zero Credit Days (ZCD) --
SET zcd = (SELECT COUNT(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= twentyday) AND (`Date`<= today) AND (`Project ID`= project) AND (`Project Daily Credit`= '0'));

-- Calculate "Calculated" listing category --

IF
	(was >= '0.1') AND
	(zcd <= '7') AND
	(vote != 'OUT') AND
	(currentstatus != 'Unlisted')
	THEN SET whitelist = 'Whitelisted';

ELSEIF
	((was < '0.1') OR
	(zcd > '7') OR
	(vote != 'Out')) AND
	(currentstatus != 'Unlisted')
	THEN SET whitelist = 'Greylisted'; 

ELSE SET whitelist = 'Unlisted';

END IF;

-- Calculate "Experimental" listing category, testing for process updates --

IF 
	(was >= '0.1') AND
	(zcd <= '7') AND
	((compute >= '2000') OR (compute = '0')) AND
	(vote != 'Out') AND
	(currentstatus != 'Unlisted')
	THEN SET expwhitelist = 'Whitelisted';
	
ELSEIF
	((was < '0.1') OR
	(zcd > '7') OR
	((compute <= '2000') OR (compute = '0')) OR
	(vote != 'Out')) AND
	(currentstatus != 'Unlisted')
	THEN SET expwhitelist = 'Greylisted';

ELSE SET expwhitelist = 'Unlisted';

END IF;

-- Calculate "Experimental Recommended" listing category, testing for process updates

IF 
	(was >= '0.1') AND
	(zcd <= '7') AND
	((compute >= '2000') OR (compute = '0'))
	THEN SET recwhitelist = 'Whitelisted';
	
ELSEIF
	(was < '0.1') OR
	(zcd > '7') OR
	((compute <= '2000') OR (compute = '0'))
	THEN SET recwhitelist = 'Greylisted';

ELSE SET recwhitelist = 'Unlisted';

END IF;

-- Enter Project Overrides Here (Used for projects not exporting stats through tables.xml) --
-- SETI doesn't export stats in the files we collect but they are a big project with consistant work over many years --
IF (project = 'seti') THEN
	SET whitelist = 'Whitelisted (Override)',
	expwhitelist = 'Whitelisted (Override)',
	recwhitelist = 'Whitelisted (Override)';
END IF;
-- WEP doesn't export stats in the files we collect and they are a small project that would be unlikely to support our load --
IF (project = 'wep') THEN
	SET whitelist = 'Unlisted (Override)';
END IF;
-- Leiden do not accept new user sign-ups so cannot be whitelisted regardless of work --
IF (project = 'leiden') THEN
	SET whitelist = 'Unlisted (Override)',
	expwhitelist = 'Unlisted (Override)',
	recwhitelist = 'Greylisted (Override)';
END IF;

-- Update main Project Summary --
UPDATE 	grc_listings.`Projects_Main`
	SET 	`Project Avg Daily Credit (7 Day)`= sevenavg,
			`Project Avg Daily Credit (40 Day)`= fourtyavg,
			`W.A.S (Work Availability Score)`= was,
			`Z.C.D (Zero Days Credit)`= zcd,
			`Calculated Status` = whitelist,
			`Calculated Status (Experimental)` = expwhitelist,
			`Recommended Status (Experimental)` = recwhitelist
	WHERE `Project ID`= project;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
