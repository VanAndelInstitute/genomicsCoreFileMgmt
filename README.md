# genomicsCoreFileMgmt
These are tools (mostly perl) to manage the VAI genomics core file lifecycle

This used to be a small part of the larger hpc admin repo https://github.com/VanAndelInstitute/Admin-Tools
But as the file management got more complex I wanted to move it into its own repo and make it more transparent, especially to the core staff who depend on it. 

Currently the cron on login01 looks like this:

* 22 2 * * 1 /primary/vari/admin/tools/genomicsCoreFileMgmt/genomicsFileMgmtCron.sh
* 6 22 4 1 * * /primary/vari/admin/tools/genomicsCoreFileMgmt/notify.pl

## genomicsFileMgmtCron.sh
This is the master cron job that currently runs on login01

## moveFilesToAWSStaging.pl
move old files to a staging area for archival to AWS

## notify.pl
send emails to staff when files are present in dir
 
## notifyFileAge.pl
send emails to staff when old files are have been sitting too long


## rsync_genomicscore.sh
move old files to .trash dir and clean up for the core dir

## rsync_instruments_iscan.sh
move old files to .trash dir and clean up for the iscan instrument


## rsync_instruments_iseq.sh
move old files to .trash dir and clean up for the iseq instrument


## rsync_instruments_minion.sh
move old files to .trash dir and clean up for the minon instrument

## rsync_instruments_novaseq.sh
move old files to .trash dir and clean up for the novaseq instrument


## rsync_instruments_sequencing.sh
move old files to .trash dir and clean up for the sequencing folder/instrument
