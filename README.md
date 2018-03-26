# Gridcoin_Project_Listings
SQL Database for the Gridcoin project listings

Create the following folders for the stat XML download:
/tmp/Projects/Credit
/tmp/Projects/Compute

Set the DownloadProjects Bash script to run once a day using a cron job at 22:00 UTC.

The SQL database should grab the relevant data from the downloaded XML's once per day at 23:00 UTC and update the project stats table.

40 Days worth of data is required to get the correct Work Availability Scores (W.A.S).

If the database has not been running then data must be manually imported to "Prime" the database. The last 40 days of project data can be found on https://boincstats.com.

However please do not use a web scraper to scrape this data from the site without permission or you may get banned.
