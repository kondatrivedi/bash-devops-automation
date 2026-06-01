#!/bin/bash


#----------------------------------------

# Script name: find_large_files.sh

#Purpose: find files larger than specified size

#Author: Trivedi 

#----------------------------------------


#Directory to scan
TARGET_DIR="/home/ubuntu/large_files_test"


#file size threshold
SIZE_THRESHOLD="+10M"

CURRENT_TIME=$(date)

echo "============================================="
echo "large file detection report"
echo "genearted at: $CURRENT_TIME"
echo "============================================="


#find large files
find "$TARGET_DIR" -type f -size "$SIZE_THRESHOLD" -exec ls -lh {} \;

echo

echo "Scan completed"
