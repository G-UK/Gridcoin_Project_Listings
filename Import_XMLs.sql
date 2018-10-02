-- --------------------------------------------------------
-- Host:                         192.168.0.25
-- Server version:               10.1.35-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for procedure grc_listings.Import_XMLs
DELIMITER //
CREATE DEFINER=`g`@`192.168.0.3` PROCEDURE `Import_XMLs`(
	IN `project` VARCHAR(255)
)
    COMMENT 'This Procedure imports the XML data from the project files'
BEGIN
-- Project files need downloading to /tmp/Project/Credit and /tmp/Project/Compute, this can be done using a bash script running as a daily cron job --

-- Yesterdays values --
DECLARE oldcredit BIGINT;
DECLARE oldcompute BIGINT;
DECLARE oldtime BIGINT;
DECLARE oldhumantime DATETIME;

-- Full XML from the XML stats file --
DECLARE creditxml TEXT;
DECLARE computexml TEXT;
DECLARE unixtimexml TEXT;

-- xPath of variables in XML stats file --
DECLARE creditxpath TEXT;
DECLARE computexpath TEXT;
DECLARE unixtimexpath TEXT;

-- Values extracted from XML stats file --
DECLARE credit BIGINT;
DECLARE compute BIGINT;
DECLARE unixtime BIGINT;

-- Dates and Times converted to Human Readable --
DECLARE humandate DATE;
DECLARE humantime DATETIME;

-- Variable to hold the days credit delta --
DECLARE dailycredit INT;

-- Variables required for extracting data from HTML where XML is not available --
DECLARE althtml TEXT;
DECLARE altstartpos INT;
DECLARE altendpos INT;
DECLARE altstring TEXT;

-- Create New Line for Todays Date if required --
SET oldcredit = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldcompute = (SELECT `Project Compute Speed (GFlops)` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldtime = (SELECT `Unix Timestamp` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));

-- Grab time data from XML file --
SET unixtimexml = load_file(CONCAT('/tmp/Projects/Credit/', project));
SET unixtimexpath = '/tables/update_time';
SET unixtime = extractValue(unixtimexml, unixtimexpath);

-- Grab credit data from XML file --
SET creditxml = load_file(CONCAT('/tmp/Projects/Credit/', project));
SET creditxpath = '/tables/total_credit';
SET credit = extractValue(creditxml, creditxpath);

-- Grab compute data from XML file, if it fails set compute to 0--
SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
IF (extractValue(computexml, computexpath) IS NULL)
	THEN SET compute = '0';
	ELSE SET compute = extractValue(computexml, computexpath);
END IF;

-- Convert Unix timestamp to Human Readable --
SET humandate = (SELECT FROM_UNIXTIME(unixtime));
SET humantime = (SELECT FROM_UNIXTIME(unixtime));
SET oldhumantime = (SELECT FROM_UNIXTIME(oldtime));

-- ----------------------- --
-- Special Import Projects --
-- ----------------------- --

-- Amicable Compute (Compute is in Ryzen 1700's, x200 for approx G/Flops) --
IF project = 'amicable' THEN
	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath)*200;
	END IF;
END IF;

-- Collatz Compute (Compute is Integer Speed) --
IF project = 'collatz' THEN
	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET computexpath = '/server_status/database_file_states/current_integer_speed';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- Einstein Compute (Compute is for CPU only) --
IF project = 'einstein' THEN
	SET computexml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET computexpath = '/server_status/database_file_states/cpu_flops';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- GPUGrid Compute (No Server Status XML, so pull from HTML) --
IF project = 'gpugrid' THEN
	SET althtml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET altstartpos = (LOCATE('current GigaFLOPs', althtml)) + 26;
	SET altendpos = LOCATE('</td>', althtml, altstartpos);
	SET altstring = SUBSTRING(althtml, altstartpos, (altendpos - altstartpos));
	SET altstring = REPLACE(altstring, ',', '');
	SET compute = CONVERT(altstring, SIGNED);
END IF;

-- Mind Modelling (No Server Status XML, so pull from HTML) --
IF project = 'mindmodelling' THEN
	SET althtml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET altstartpos = (LOCATE('Current GigaFLOPS', althtml)) + 38;
	SET altendpos = LOCATE('</td>', althtml, altstartpos);
	SET altstring = SUBSTRING(althtml, altstartpos, (altendpos - altstartpos));
	SET altstring = REPLACE(altstring, ',', '');
	SET compute = CONVERT(altstring, SIGNED);
END IF;

-- Primegrid Compute (No Server Status XML, so pull from HTML) --
IF project = 'primegrid' THEN
	SET althtml = load_file(CONCAT('/tmp/Projects/Compute/', project));
	SET altstartpos = (LOCATE('Current TeraFLOPs', althtml)) + 26;
	SET altendpos = LOCATE('</td>', althtml, altstartpos);
	SET altstring = SUBSTRING(althtml, altstartpos, (altendpos - altstartpos));
	SET altstring = REPLACE(altstring, ',', '');
	SET compute = (CONVERT(altstring, SIGNED))*1000;
END IF;

-- World Community Grid Credit (Convert "Points" to "Credits" & Calculate compute based on BOINC standard) --
IF project = 'wcg' THEN
	SET unixtimexml = load_file(CONCAT('/tmp/Projects/Credit/', project));
	SET unixtimexpath = '/GlobalStatistics/LastUpdated';
	SET humandate = extractValue(unixtimexml, unixtimexpath);
	SET humantime = extractValue(unixtimexml, unixtimexpath);
	SET creditxml = load_file(CONCAT('/tmp/Projects/Credit/', project));
	SET creditxpath = '/GlobalStatistics/StatisticsTotals/Points';
	SET credit = (extractValue(creditxml, creditxpath)/7);
	SET compute = (credit - oldcredit)/200;	
END IF;

-- Compute Speed Estimates where not provided by project (Calculate compute based on BOINC standard) --
IF project = ('yoyo' OR 'primaboinca') THEN
	SET compute = (credit - oldcredit)/200;
END IF;

-- CPDN compute, not working unless standalone, No idea why!?! --
IF project = ('cpdn') THEN
	SET computexml = load_file('/tmp/Projects/Compute/cpdn');
	SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- SRBase compute, not working unless standalone, No idea why!?! --
IF project = ('srbase') THEN
	SET computexml = load_file('/tmp/Projects/Compute/srbase');
	SET computexpath = '/server_status/database_file_states/current_floating_point_speed';
	IF (extractValue(computexml, computexpath) IS NULL)
		THEN SET compute = '0';
		ELSE SET compute = extractValue(computexml, computexpath);
	END IF;
END IF;

-- --------------------------- --
-- End Special Import Projects --
-- --------------------------- --

-- Calculate credit since last day. aka Daily Credit --
SET dailycredit = credit - oldcredit;

-- Add new line for todays date in the Project Data table --
IF humandate = CURDATE()
	THEN REPLACE
		INTO grc_listings.`Projects_Data`
					(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Project Daily Credit`)
		VALUES 	(project, humandate, unixtime, credit, compute, dailycredit);	
	ELSE REPLACE
		INTO grc_listings.`Projects_Data`
					(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Project Daily Credit`)
		VALUES 	(project, CURDATE(), oldtime, oldcredit, oldcompute, '0');
END IF;

-- Update total credit and last update on Main Project Summary table --
IF humandate = CURDATE()
	THEN 
		UPDATE grc_listings.`Projects_Main`
		SET 	`Project Total Credit`= credit,
				`Project Compute Speed (GFlops)`= compute,
				`Last Update`= humantime
		WHERE `Project ID`= project;
	ELSE
		UPDATE grc_listings.`Projects_Main`
		SET 	`Project Total Credit`= oldcredit,
				`Project Compute Speed (GFlops)`= oldcompute,
				`Last Update`= oldhumantime
		WHERE `Project ID`= project;
END IF;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
