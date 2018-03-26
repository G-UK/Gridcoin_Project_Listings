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

-- Set Dates relative to the current date --
SET today = CURDATE();
SET sevenday = DATE_SUB(CURDATE(), INTERVAL 7 DAY);
SET twentyday = DATE_SUB(CURDATE(), INTERVAL 20 DAY);
SET fourtyday = DATE_SUB(CURDATE(), INTERVAL 40 DAY);

-- Calculate the 7 day average daily credit for the project --
SET sevenavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= sevenday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate the 40 day average daily credit for the project --
SET fourtyavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= fourtyday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate Work Availability Score (WAS) --
SET was = sevenavg / fourtyavg;

-- Calculate Zero Credit Days (ZCD) --
SET zcd = (SELECT COUNT(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= twentyday) AND (`Date`<= today) AND (`Project ID`= project) AND (`Project Daily Credit`= '0'));

-- Calculate potential listing category --
IF (was >= '0.1') AND (zcd <= '7') THEN SET whitelist = 'Whitelisted';
ELSEIF (was < '0.1') AND (zcd > '7') THEN SET whitelist = 'Greylisted';
ELSE SET whitelist = 'Unlisted';
END IF;

-- Update main Project Summary --
UPDATE 	grc_listings.`Projects_Main`
	SET 	`Project Avg Daily Credit (7 Day)`= sevenavg,
			`Project Avg Daily Credit (40 Day)`= fourtyavg,
			`W.A.S (Work Availability Score)`= was,
			`Z.C.D (Zero Days Credit)`= zcd,
			`Potential Whitelist Status` = whitelist
	WHERE `Project ID`= project;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
