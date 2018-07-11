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

-- Dumping structure for procedure grc_listings.Update_Maths
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Update_Maths`(
	IN `project` VARCHAR(255)
)
    COMMENT 'This procedure calculates the project stats needed for calculati'
BEGIN
DECLARE today DATE;
DECLARE sevenday DATE;
DECLARE twentyday DATE;
DECLARE fourtyday DATE;
DECLARE sevenavg BIGINT;
DECLARE fourtyavg BIGINT;
DECLARE was DECIMAL(3,2);
DECLARE zcd BIGINT;
DECLARE compute BIGINT;

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
