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

-- Dumping structure for procedure grc_listings.Import_XMLs
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Import_XMLs`(
	IN `project` VARCHAR(50)
)
    COMMENT 'This Procedure imports the XML data from the project files'
BEGIN
-- Project files need downloading to /tmp/Project/Credit and /tmp/Project/Compute, this can be done using a bash script running as a daily cron job --

DECLARE oldcredit BIGINT;

DECLARE creditxml TEXT;
DECLARE computexml TEXT;
DECLARE unixtimexml TEXT;

DECLARE creditxpath TEXT;
DECLARE computexpath TEXT;
DECLARE unixtimexpath TEXT;

DECLARE credit BIGINT;
DECLARE compute INT;
DECLARE unixtime INT;

DECLARE dailycredit INT;
DECLARE humantime DATE;

-- Save current credit for project --
SET oldcredit = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = CurDate()-1));

-- Grab time data from XML file --
SET unixtimexml = load_file(CONCAT('/tmp/Projects/Credit/', project));
SET unixtimexpath = '/tables/update_time';
SET unixtime = extractValue(unixtimexml, unixtimexpath);

-- Grab credit data from XML file --
SET creditxml = load_file(CONCAT('/tmp/Projects/Credit/', project));
SET creditxpath = '/tables/total_credit';
SET credit = extractValue(creditxml, creditxpath);

-- Grab compute data from XML file --
SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
IF (extractValue(computexml, computexpath) IS NULL)
	THEN SET compute = '0';
	ELSE SET compute = extractValue(computexml, computexpath);
END IF;

-- Convert Unix timestamp to Human Readable --
SET humantime = (SELECT FROM_UNIXTIME(unixtime));

-- Special Import Projects --
-- Amicable --
IF project = 'amicable' THEN
	SET credit = extractValue(creditxml, creditxpath)*500;
END IF;

-- Collatz --
IF project = 'collatz' THEN
	SET computexpath = '/server_status/database_file_states/current_integer_speed';
	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- Einstein --
IF project = 'einstein' THEN
	SET computexpath = '/server_status/database_file_states/cpu_flops';
	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- World Community Grid --
IF project = 'wcg' THEN
	SET unixtimexml = load_file(CONCAT('/tmp/Projects/Credit/', project));
	SET unixtimexpath = '/GlobalStatistics/LastUpdated';
	SET humantime = extractValue(unixtimexml, unixtimexpath);
	
	SET creditxml = load_file(CONCAT('/tmp/Projects/Credit/', project));
	SET creditxpath = '/GlobalStatistics/StatisticsTotals/Points';
	SET credit = (extractValue(creditxml, creditxpath)/7);

	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;
-- End Special Import Projects --


-- Calculate credit since last day. aka Daily Credit --
SET dailycredit = credit - oldcredit;

-- Update total credit on Main Project Summary table --
UPDATE grc_listings.`Projects_Main`
	SET 	`Project Total Credit`= credit,
			`Project Compute Speed (GFlops)`= compute
	WHERE `Project ID`= project;

-- Add new line for todays date in the Project Data table --
REPLACE
	INTO grc_listings.`Projects_Data`
				(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Project Daily Credit`)
	VALUES 	(project, humantime, unixtime, credit, compute, dailycredit);

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
