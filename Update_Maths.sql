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

-- Dumping structure for procedure grc_listings.Update_Maths
DELIMITER //
CREATE PROCEDURE `Update_Maths`(
	IN `project` VARCHAR(255)
)
    COMMENT 'This procedure calculates the project stats needed for calculati'
BEGIN

-- Calculated Dates --
DECLARE today DATE;
DECLARE sevenday DATE;
DECLARE twentyday DATE;
DECLARE fourtyday DATE;

-- Average Daily Credit over period --
DECLARE sevenavg BIGINT;
DECLARE fourtyavg BIGINT;

-- Calculated Values --
DECLARE was DECIMAL(3,2);
DECLARE zcd BIGINT;

-- Set Dates relative to the current date --
SET today = DATE_SUB(CURDATE(), INTERVAL 1 DAY);
SET sevenday = DATE_SUB(CURDATE(), INTERVAL 8 DAY);
SET twentyday = DATE_SUB(CURDATE(), INTERVAL 21 DAY);
SET fourtyday = DATE_SUB(CURDATE(), INTERVAL 41 DAY);

-- Calculate the 7 day average daily credit for the project --
SET sevenavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= sevenday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate the 40 day average daily credit for the project --
SET fourtyavg = (SELECT AVG(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= fourtyday) AND (`Date`< today) AND (`Project ID`= project));

-- Calculate Work Availability Score (WAS) avoiding divide by zero --
IF fourtyavg = '0'
	THEN SET was = '0';
	ELSE SET was = sevenavg / fourtyavg;
END IF;

-- Calculate Zero Credit Days (ZCD) --
SET zcd = (SELECT COUNT(`Project Daily Credit`)
	FROM grc_listings.`Projects_Data`
	WHERE (`Date`>= twentyday) AND (`Date`<= today) AND (`Project ID`= project) AND (`Project Daily Credit`= '0'));
	
-- Update main Project Summary --
UPDATE 	grc_listings.`Projects_Main`
	SET 	`Project Avg Daily Credit (7 Day)`= sevenavg,
			`Project Avg Daily Credit (40 Day)`= fourtyavg,
			`W.A.S (Work Availability Score)`= was,
			`Z.C.D (Zero Credit Days)`= zcd
	WHERE `Project ID`= project;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
