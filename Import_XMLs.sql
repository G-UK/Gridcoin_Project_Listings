-- --------------------------------------------------------
-- Host:                         192.168.0.105
-- Server version:               10.3.14-MariaDB-1 - Debian buildd-unstable
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.1.0.5479
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
DECLARE oldcredit2 BIGINT;
DECLARE oldcompute INT;
DECLARE oldusers INT;
DECLARE oldworkunits INT;
DECLARE oldtime BIGINT;
DECLARE oldhumantime DATETIME;

#Input Variables for XML scrape
DECLARE creditpath TEXT;
DECLARE computepath TEXT;
DECLARE creditxml TEXT;
DECLARE computexml TEXT;
DECLARE creditxpath TEXT;
DECLARE computexpath TEXT;
DECLARE usersxpath TEXT;
DECLARE workunitxpath TEXT;
DECLARE unixtimexpath TEXT;
DECLARE wcgtime DATETIME;

#Output Variables from XML scrape
DECLARE credit BIGINT;
DECLARE compute INT;
DECLARE users INT;
DECLARE workunits INT;
DECLARE unixtime BIGINT;

#Dates and Times converted to Human Readable
DECLARE humandate DATE;
DECLARE humantime DATETIME;

#Variable for Project TCD (Total Credit Delta)
DECLARE dailycredit BIGINT;
DECLARE dailycredit2 BIGINT;

#Variables required for extracting data from HTML where XML is not available
DECLARE html TEXT;
DECLARE compute_start INT;
DECLARE compute_end INT;
DECLARE compute_string TEXT;
DECLARE user_start INT;
DECLARE user_end INT;
DECLARE user_string TEXT;
DECLARE wu_start INT;
DECLARE wu_end INT;
DECLARE wu_string TEXT;

#### End Variables ####


#Load yesterdays data from the table into variables
SET oldcredit = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldcredit2 = (SELECT `Project Total Credit` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 2 DAY)));
SET oldcompute = (SELECT `Project Compute Speed (GFlops)` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldusers = (SELECT `Active Users` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldworkunits = (SELECT `Workunit Queue` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));
SET oldtime = (SELECT `Unix Timestamp` FROM grc_listings.`Projects_Data` WHERE (`Project ID` = project) AND (`Date` = DATE_SUB(CURDATE(), INTERVAL 1 DAY)));

#Grab credit data from credit XML file, if it fails set credit to equal yesterdays credit
SET creditpath = (SELECT `Credit Path` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
SET creditxml = load_file(creditpath);
SET creditxpath = (SELECT `Credit XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
IF extractValue(creditxml, creditxpath) <> '' THEN
   SET credit = extractValue(creditxml, creditxpath);
END IF;
IF credit IS NULL THEN
   SET credit = oldcredit;
END IF;
IF credit = '' THEN
   SET credit = oldcredit;
END IF;


#Grab time data from credit XML file
IF project <> 'wcg' THEN
   SET unixtimexpath = (SELECT `Unix Time XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   IF extractValue(creditxml, unixtimexpath) <> '' THEN
      SET unixtime = extractValue(creditxml, unixtimexpath);
   END IF;
END IF;

#Grab compute data from XML file, if it fails set compute to 0
IF project <> 'gpugrid' AND project <> 'primegrid' AND project <> 'primaboinca' THEN
   SET computepath = (SELECT `Compute Path` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   SET computexml = load_file(computepath);
   SET computexpath = (SELECT `Compute XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   SET usersxpath = (SELECT `Users XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   SET workunitxpath = (SELECT `Workunit XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
      IF (extractValue(computexml, computexpath) IS NULL) OR (extractValue(computexml, computexpath) = '')
		   THEN SET compute = oldcompute;
		   ELSE SET compute = extractValue(computexml, computexpath);
      END IF;
      IF (extractValue(computexml, usersxpath) IS NULL) OR (extractValue(computexml, usersxpath) = '')
		   THEN SET users = oldusers;
		   ELSE SET users = extractValue(computexml, usersxpath);
      END IF;
      IF (extractValue(computexml, workunitxpath) IS NULL) OR (extractValue(computexml, workunitxpath) = '')
		   THEN SET workunits = oldworkunits;
		   ELSE SET workunits = extractValue(computexml, workunitxpath);
      END IF;
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
	SET html = load_file('/tmp/Projects/Compute/gpugrid');
	
	SET compute_start = (LOCATE('current GigaFLOPs', html)) + 26;
	SET user_start = (LOCATE('with recent credit', html)) + 27;
	SET wu_start = (LOCATE('Tasks ready to send', html)) + 28;
	
	SET compute_end = LOCATE('</td>', html, compute_start);
	SET user_end = LOCATE('</td>', html, user_start);
	SET wu_end = LOCATE('</td>', html, wu_start);
	
	SET compute_string = SUBSTRING(html, compute_start, (compute_end - compute_start));
	SET user_string = SUBSTRING(html, user_start, (user_end - user_start));
	SET wu_string = SUBSTRING(html, wu_start, (wu_end - wu_start));
	
	SET compute_string = REPLACE(compute_string, ',', '');
	SET user_string = REPLACE(user_string, ',', '');
	SET wu_string = REPLACE(wu_string, ',', '');
	
	SET compute = CONVERT(compute_string, SIGNED);
	SET users = CONVERT(user_string, SIGNED);
	SET workunits = CONVERT(wu_string, SIGNED);
END IF;

#Primegrid Compute (No Server Status XML provided, so pull from HTML instead)
IF project = 'primegrid' THEN
	SET html = load_file(CONCAT('/tmp/Projects/Compute/primegrid'));

	SET compute_start = (LOCATE('Current TeraFLOPs', html)) + 26;
	SET user_start = (LOCATE('with recent credit', html)) + 27;
	SET wu_start = (LOCATE('Results ready to send', html)) + 30;
	
	SET compute_end = LOCATE('</td>', html, compute_start);
	SET user_end = LOCATE('</td>', html, user_start);
	SET wu_end = LOCATE('</td>', html, wu_start);

	SET compute_string = SUBSTRING(html, compute_start, (compute_end - compute_start));
	SET user_string = SUBSTRING(html, user_start, (user_end - user_start));
	SET wu_string = SUBSTRING(html, wu_start, (wu_end - wu_start));

	SET compute_string = REPLACE(compute_string, ',', '');
	SET user_string = REPLACE(user_string, ',', '');
	SET wu_string = REPLACE(wu_string, ',', '');

	SET compute = (CONVERT(compute_string, SIGNED))*1000;
	SET users = CONVERT(user_string, SIGNED);
	SET workunits = CONVERT(wu_string, SIGNED);
END IF;

#World Community Grid is non-standard (Convert "WCG Points" to "BOINC Credits" & Calculate compute based on standard BOINC credit)
IF project = 'wcg' THEN
   SET credit = credit/7;
   SET compute = (credit - oldcredit)/200;
   SET unixtimexpath = (SELECT `Unix Time XPath` FROM grc_listings.`File_Location` WHERE (`Project ID` = project));
   SET wcgtime = extractValue(creditxml, unixtimexpath);
   SET unixtime = UNIX_TIMESTAMP(wcgtime);
   SET users = '10000';
   SET oldusers = '10000';
   SET workunits = '0';
END IF;

#Compute speed estimates where compute speed is not provided by the project (Calculate compute based on standard BOINC credit)
#Yoyo
IF project = 'yoyo' THEN
	SET compute = (credit - oldcredit)/200;
	SET users = '3000';
	SET oldusers = '3000';
END IF;

#Primaboinca doesn't provide any data so estimate compute, users and workunits
IF project = 'primaboinca' THEN
	SET compute = (credit - oldcredit)/200;
   SET users = '500';
   SET oldusers = '500';
   SET workunits = '0';
END IF;

#Prevent Divide by 0 Error and guesstimate active users if data is not available
IF users = '0'
    THEN SET users = '10000';
END IF;

IF oldusers = '0'
    THEN SET oldusers = '10000';
END IF;

-- --------------------------- --
-- End Special Import Projects --
-- --------------------------- --

#Convert Unix timestamps to Human Readable
IF (unixtime IS NULL)
    THEN SET unixtime = oldtime;
END IF;

SET humandate = (SELECT FROM_UNIXTIME(unixtime));
SET humantime = (SELECT FROM_UNIXTIME(unixtime));
SET oldhumantime = (SELECT FROM_UNIXTIME(oldtime));

#Add or Update line for todays date if xml is for today.
IF humandate = CURDATE()
	THEN
		SET dailycredit = credit - oldcredit;
		REPLACE
			INTO grc_listings.`Projects_Data`
						(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Project Daily Credit`)
			VALUES 	(project, humandate, unixtime, credit, compute, users, workunits, dailycredit);
END IF;

#Add or Update line for yesterdays date if xml is for yesterday.	
IF humandate = DATE_SUB(CURDATE(), INTERVAL 1 DAY)
	THEN
		SET dailycredit = oldcredit - oldcredit2;
		REPLACE
			INTO grc_listings.`Projects_Data`
						(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Project Daily Credit`)
			VALUES 	(project, CURDATE(), oldtime, oldcredit, oldcompute, oldusers, oldworkunits, '0');

		REPLACE
			INTO grc_listings.`Projects_Data`
						(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Project Daily Credit`)
			VALUES 	(project, humandate, unixtime, credit, compute, users, workunits, dailycredit);
END IF;

IF humandate < DATE_SUB(CURDATE(), INTERVAL 1 DAY)
	THEN
			REPLACE
			INTO grc_listings.`Projects_Data`
						(`Project ID`, `Date`, `Unix Timestamp`, `Project Total Credit`, `Project Compute Speed (GFlops)`, `Active Users`, `Workunit Queue`, `Project Daily Credit`)
			VALUES 	(project, CURDATE(), oldtime, oldcredit, oldcompute, oldusers, oldworkunits, '0');
END IF;

#Update total credit, compute speed and last update time on Projects Main table if they have been updated today.
IF humandate = CURDATE()
	THEN
		UPDATE grc_listings.`Projects_Main`
		SET 	`Project Total Credit`= credit,
				`Project Compute Speed (GFlops)`= compute,
				`Active Users` = users,
				`Workunit Queue` = workunits,
				`Last Update`= humantime
		WHERE `Project ID`= project;
	ELSE
		UPDATE grc_listings.`Projects_Main`
		SET 	`Project Total Credit`= oldcredit,
				`Project Compute Speed (GFlops)`= oldcompute,
				`Active Users` = oldusers,
				`Workunit Queue` = oldworkunits,
				`Last Update`= oldhumantime
		WHERE `Project ID`= project;
END IF;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
