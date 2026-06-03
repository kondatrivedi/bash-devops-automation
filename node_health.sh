#!/bin/bash

#---------------------------------------------------

#Script name: node_health.sh

#Purpose: this script outputs the node health

#Author:trivedi

#---------------------------------------------------


#debug mode
set -x


#exit the script when there is an error
set -e 

set -o pipefail

df -h

free -g 

nproc


ps -ef | grep amazon | awk -F" " '{print $2}'
