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

-- Dumping structure for procedure grc_listings.Collatz_Import
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Collatz_Import`(
	IN `project` VARCHAR(50)





)
    COMMENT 'Custom Import for Collatz (''current_integer_speed'' not ''current_floating_point_speed'')'
BEGIN
-- Project files need downloading to /tmp/Project/Credit and /tmp/Project/Compute, this can be done using a bash script running as a daily cron job --

DECLARE creditxml text;
DECLARE computexml text;
DECLARE creditxpath text;
DECLARE computexpath text;
DECLARE oldcredit BIGINT;
DECLARE credit BIGINT;
DECLARE compute INT;
DECLARE daycredit INT;

-- Save current credit for project --
SET oldcredit = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (Date = CurDate()-1));

-- Grab credit data from XML file --
SET creditxpath = '/tables/total_credit';
SET creditxml = load_file(CONCAT('/tmp/Projects/Credit/', project));
SET credit = extractValue(creditxml, creditxpath);

-- Calculate credit since last day. aka Daily Credit --
SET daycredit = credit - oldcredit;

-- Grab compute data from XML file --
SET computexpath =  	'/server_status/database_file_states/current_integer_speed';
SET computexml = 		load_file(CONCAT('/tmp/Projects/Compute/', project));
IF (extractValue(computexml, computexpath) IS NULL)
	THEN SET compute = '0';
	ELSE SET compute = extractValue(computexml, computexpath);
END IF;

-- Update total credit on Main Project Summary table --
UPDATE grc_listings.`Projects_Main`
	SET 	`Project Total Credit`= credit,
			`Project Compute Speed (GFlops)`= compute
	WHERE `Project ID`= project;

-- Add new line for todays date in the Project Data table --
-- Need to figure out how to update the line if it already exists today rather than create a duplicate -- 
REPLACE
	INTO grc_listings.`Projects_Data`
				(`Project ID`, `Date`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Project Daily Credit`)
	VALUES 	(project, CURDATE(), credit, compute, daycredit);

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
