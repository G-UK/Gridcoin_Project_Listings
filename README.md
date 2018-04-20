# Gridcoin_Project_Listings
SQL Database for the Gridcoin project listings

Create the following folders for the stat XML download:
/tmp/Projects/Credit
/tmp/Projects/Compute

Set the DownloadProjects Bash script to run at least once a day using a cron job.
Set the Update_All procedure to run after each update using a cron job.

40 Days worth of data is required to get the correct Work Availability Scores (W.A.S).

If the database has not been running then data must be manually imported to "Prime" the database. The last 40 days of project data can be found on https://boincstats.com.

However please do not use a web scraper to scrape this data from the site without permission or you may get banned.
