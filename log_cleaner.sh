#!/bin/bash

#-------------------------------------------

#Script name:log_cleaner.sh

#Purpose: clears all the old logs based on the specified duration

#Author: Trivedi

#-------------------------------------------


LOG_DIR="/var/log"

#files modified more than 7 days ago
DAYS=7

echo "========================================="
echo "SYSTEM LOG CLEANER"
echo "========================================="


echo 
echo "cleaning logs older than $DAYS"
echo "Log Directory: $LOG_DIR"

echo
find $LOG_DIR -type f -name "*.log" -mtime +$DAYS

echo 
"Deleting old log files..."

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo
echo "log cleanup completed successfully"

echo "=========================================="
echo "TASK FINISHED"
echo "=========================================="
