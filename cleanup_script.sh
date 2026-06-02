#!/bin/bash


#-----------------------------------------------

#Script name: cleanup_script.sh

#Purpose: Automatically cleans the logs older than 7 days

#Author: Trivedi

#-----------------------------------------------

#Directory to clean
TARGET_DIR="/home/ubuntu/cleanup_test"

#files older than these many days
DAYS=7

echo "============================================="

echo "cleanup script started"

echo "============================================="


#show files before deletion
echo "files to be deleted"


find "$TARGET_DIR" -name "*log" -mtime +$DAYS


#delete old log files
find "$TARGET_DIR" -name "*.log" -mtime +$DAYS -delete


echo "=============================================="

echo "cleanup completed"

echo "=============================================="
