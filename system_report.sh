#/bin/bash

#----------------------------------------------

#Script name: system_report.sh

#purpose: displays system information like hostname, current user, uptime, memory usage,
#disk usage, cpu load, last reboot, logged in users, date&time

#Author: Trivedi

#----------------------------------------------


echo "Hostname: $(hostname)"


echo
echo "Current user: $(whoami)"


echo
echo "System Uptime: " 
uptime -p


echo
echo "last reboot: " 
who -b


echo
echo "memory usage: " 
free -h


echo
echo "Disk usage: " 
df -h


echo
echo "Logged In Users: " 
who


echo
echo "Current Date & Time: " 
date


echo
echo "CPU Load average: " 
uptime

echo
echo "================================================"
echo "REPORT COMPLETED"
echo "==============================================="
