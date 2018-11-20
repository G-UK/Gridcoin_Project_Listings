-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.1.37-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5338
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
    SQL SECURITY INVOKER
    COMMENT 'This Procedure imports the XML data from the project files'
BEGIN

#### Start Variables ####
#Variables to carry yesterdays data
DECLARE oldcredit BIGINT;
DECLARE oldcompute INT;
DECLARE oldtime BIGINT;
DECLARE oldhumantime DATETIME;

#Input Variables for XML scrape
DECLARE creditpath TEXT;
DECLARE computepath TEXT;
DECLARE creditxml TEXT;
DECLARE computexml TEXT;
DECLARE creditxpath TEXT;
DECLARE computexpath TEXT;
DECLARE unixtimexpath TEXT;
DECLARE wcgtime DATETIME;

#Output Variables from XML scrape
DECLARE credit BIGINT;
DECLARE compute INT;
DECLARE unixtime BIGINT;

#Dates and Times converted to Human Readable
DECLARE humandate DATE;
DECLARE humantime DATETIME;

#Variable for Project TCD (Total Credit Delta)
DECLARE dailycredit BIGINT;

#Variables required for extracting data from HTML where XML is not available
DECLARE althtml TEXT;
DECLARE altstartpos INT;
DECLARE altendpos INT;
DECLARE altstring TEXT;

#### End Variables ####


#Load yesterdays data from the table into variables
SET oldcredit = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldcompute = (SELECT `Project Compute Speed (GFlops)` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldtime = (SELECT `Unix Timestamp` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));

#Grab credit data from credit XML file, if it fails set credit to equal yesterdays credit
SET creditpath = (SELECT `Credit Path` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET creditxml = load_file(creditpath);
SET creditxpath = (SELECT `Credit XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET credit = extractValue(creditxml, creditxpath);
IF credit IS NULL THEN
	SET credit = oldcredit;
END IF;

#Grab time data from credit XML file
SET unixtimexpath = (SELECT `Unix Time XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET unixtime = extractValue(creditxml, unixtimexpath);

#Grab compute data from XML file, if it fails set compute to 0
SET computepath = (SELECT `Compute Path` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET computexml = load_file(computepath);
SET computexpath = (SELECT `Compute XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET compute = extractValue(computexml, computexpath);
IF compute IS NULL THEN
	SET compute = 0;
END IF;

-- ----------------------- --
-- Special Import Projects --
-- ----------------------- --

#Amicable Compute (Compute is in Ryzen 1700's, x200 for approx G/Flops)
IF project = 'amicable' THEN
	SET compute = compute*200;
END IF;

#GPUGrid Compute (No Compute in Server Status XML, so pull from HTML instead)
IF project = 'gpugrid' THEN
	SET althtml = load_file(CONCAT('/tmp/Projects/Compute/gpugrid'));
	SET altstartpos = (LOCATE('current GigaFLOPs', althtml)) + 26;
	SET altendpos = LOCATE('</td>', althtml, altstartpos);
	SET altstring = SUBSTRING(althtml, altstartpos, (altendpos - altstartpos));
	SET altstring = REPLACE(altstring, ',', '');
	SET compute = CONVERT(altstring, SIGNED);
END IF;

#Primegrid Compute (No Server Status XML provided, so pull from HTML instead)
IF project = 'primegrid' THEN
	SET althtml = load_file(CONCAT('/tmp/Projects/Compute/primegrid'));
	SET altstartpos = (LOCATE('Current TeraFLOPs', althtml)) + 26;
	SET altendpos = LOCATE('</td>', althtml, altstartpos);
	SET altstring = SUBSTRING(althtml, altstartpos, (altendpos - altstartpos));
	SET altstring = REPLACE(altstring, ',', '');
	SET compute = (CONVERT(altstring, SIGNED))*1000;
END IF;

#World Community Grid is non-standard (Convert "WCG Points" to "BOINC Credits" & Calculate compute based on standard BOINC credit)
IF project = 'wcg' THEN
   SET credit = credit/7;
   SET compute = (credit - oldcredit)/200;
   SET unixtimexpath = (SELECT `Unix Time XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   SET wcgtime = extractValue(creditxml, unixtimexpath);
   SET unixtime = UNIX_TIMESTAMP(wcgtime);
END IF;

#Compute speed estimates where compute speed is not provided by the project (Calculate compute based on standard BOINC credit)
#Yoyo
IF project = 'yoyo' THEN
	SET compute = (credit - oldcredit)/200;
END IF;

#Primaboinca
IF project = 'primaboinca' THEN
	SET compute = (credit - oldcredit)/200;
END IF;

-- --------------------------- --
-- End Special Import Projects --
-- --------------------------- --

#Calculate Total Credit Delta
SET dailycredit = credit - oldcredit;

#Convert Unix timestamps to Human Readable
SET humandate = (SELECT FROM_UNIXTIME(unixtime));
SET humantime = (SELECT FROM_UNIXTIME(unixtime));
SET oldhumantime = (SELECT FROM_UNIXTIME(oldtime));

#Add new line for todays date or update existing line in the Project Data table
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

#Update total credit, compute speed and last update time on Projects Main table if they have been updated today.
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
