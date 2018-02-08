# Clocoss Signoff 4 - Datastore Backup to Bucket

# Requirements

1) Ensure that you have installed git
```sudo apt-get install git```
2) Ensure you are running a Google Cloud Console VM 

# How to Install

Clone the following repository:

``` git clone https://github.com/up776060/up776060S4```

# Performing hourly Backups

1) Ensure you are in the correct directory

``` cd up776060S4 ```

2) Run the backup script

``` sh startBackup.sh ```

3) After the inital bucket and backup has been created, you will need to open the Cronjob Manager to schedule hourly backups.

```crontab -e```

4) At the end of the script that opens, paste the following line and save the file (Ctrl X if using Nano) :

```0 * * * * sh /home/{Username}/UP776060S4/export.sh```

This will automatically run a backup of the datastore on the hour, every hour until the job is manually removed.
