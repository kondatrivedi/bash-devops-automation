#!/bin/bash


#---------------------------------------------------------------------------------------------------------------

#Script Name: system_uptime_reporter.sh

#Purpose: Display server uptime information

# What it does: Display how long system has been running

# This helps check if system was rebooted recently

#Author: Trivedi 

#-----------------------------------------------------------------------------------------------------------------

#get current timestamp
CURRENT_TIME=$(date)


#show uptime
SYSTEM_UPTIME=$(uptime -p)

#show when the last reboot was
echo "Last reboot:"

who -b


echo
echo

#Count logged in users
echo "Logged in users:"

who | wc -l 


echo "================================="
echo "system uptime report"
echo "================================="
echo "Generated at: $CURRENT_TIME"
echo "System uptime: $SYSTEM_UPTIME"
echo "================================="
