#!/bin/bash



#
--------------------------------------------------------------------------------

#Script name: check_disk_usage.sh

#prurpose: monitor disk usage and alert if the usage exceeds threshold

#Author: Trivedi

#
--------------------------------------------------------------------------------

#Threshold percentage
THRESHOLD=80

#Fetch current disk usage
CURRENT_USAGE=$(df -h | awk 'NR == 2 {print $5}' | tr -d "%")

#Display usage
echo "Current Disk Usage: ${CURRENT_USAGE}%"

#check threshold
if [ "$CURRENT_USAGE" -ge "$THRESHOLD" ]; then

	echo "WARNING: Disk usage exceeded threshold"

else

	echo "Disk usage is under control"

fi
