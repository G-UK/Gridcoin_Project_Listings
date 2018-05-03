# Gridcoin_Project_Listings
SQL Database for the Gridcoin Project Listings

I am running this database on a Raspberry Pi3B, Debian 64Bit Buster OS, using MariaDB. The data is then used on my other project https://github.com/G-UK/Gridcoin-Projects-Website

## To Use the Database
Create the following temporary folders for the stats XML download:
/tmp/Projects/Credit
/tmp/Projects/Compute

Using a Task Scheduler such as Cron:
  - Set the DownloadProjects Bash script to run at least once a day.
    - Please be mindful of the Institutions running the projects and download sparingly.
  - Set the Update_All procedure to run after each update.
  - Set the Update_All_Listings procedure to run daily at 23:00 UTC

40 Days worth of data is required to get the correct Work Availability Scores (W.A.S).

If the database has not been running then data must be manually imported to "Prime" the database. The last 40 days of project data can be found on https://boincstats.com.

However please do not use a web scraper to scrape this data from the site without permission or you may get banned. Data can be extracted manually via copy and paste into Excel.
