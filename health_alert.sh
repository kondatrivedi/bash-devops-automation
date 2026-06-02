#!/bin/bash


#-------------------------------------------

#Script name: health_alert.sh

#purpose: monitors system health

#Author: Trivedi

#-------------------------------------------



#Threshold values
DISK_THRESHOLD=80
MEMORY_THRESHOLD=70
CPU_THRESHOLD=75

#get disk usage
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d %)

#get memory usage
MEMORY_USAGE=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')

#get CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')


echo "==============================================="
echo "system health report"
echo "==============================================="


echo "Disk Usage : $DISK_USAGE%"

echo "Memory Usage : $MEMORY_USAGE%"

echo "CPU Usage : $CPU_USAGE%"


#DISK ALERT
if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then 

	echo "WARNING: Disk usage is above threshold"

fi

#MEMORY ALERT
if [ "$MEMORY_USAGE" -gt "$MEMORY_THRESHOLD" ]; then

	echo "WARNING: Memory usage is above threshold"

fi

#Remove decimal value
CPU_INT=${CPU_USAGE%.*}

#CPU ALERT
if [ "$CPU_INT" -gt "$CPU_THRESHOLD" ]; then

	echo "WARNING: CPU Usage is above threshold"

fi


