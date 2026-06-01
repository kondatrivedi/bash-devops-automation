#!/bin//bash

#-------------------------------------------
#Script name: file_backup.sh

#Purpose: create compressed backups

#Author: Trivedi

#-------------------------------------------


#Source directory
SOURCE_DIR="/home/ubuntu/bash-devops-automation"

#Backup directory
BACKUP_DIR="/home/ubuntu/backups"


#Current date
CURRENT_DATE=$(date +%F)
echo ${CURRENT_DATE}


#backup filename
BACKUP_FILE="BACKUP_DIR/backup_$CURRENT_DATE.tar.gz"



#Create backup
tar -czvf "BACKUP_FILE" "SOURCE_DIR"


#check status
if [ $? -eq 0 ]; then
	echo "Backup completed successfully"
	echo "Backup file: $BACKUP_FILE"
else
	echo "Backup failed"
fi
