**RTB-Trader-Restore**

A script has been written by Colin Borins to automate the restore process of RTB-Trader with a local instance of Redis and Postgres. 

**Steps to use script:**

Step One: Download the Restore.sh file

Step Two: Put the file into a local directory

Step Three: Allow the script to execute by running: chmod +x /EnteryourDirectory/Restore-Trader.sh

Step Four: To run the script run: sh Restore-Trade

**Note:**

1. If you run into an error stating that the rails are still running a restart of your computer may be needed. 

2. If you run into an error stating that adgear is not a user, create the adgear user: createuser -s adgear
