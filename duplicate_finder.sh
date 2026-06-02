#!/bin/bash

#----------------------------------------

#script name: duplicate_finder.sh

#Purpose: finds the duplicate files from target directory

#Author: Trivedi

#-------------------------------------------


TARGET_DIR="$1"

if [ -z "$TARGET_DIR" ]; then 

	echo "Usage: ./duplicate_finder.sh <directory>"

	exit 1

fi


echo 
echo "Scanning Directory: $TRAGET_DIR"


echo
echo "Duplicate files found"
echo "----------------------------------"



find "$TARGET_DIR" -type f | xargs md5sum | sort | awk '

{

	if ($1 == prev_hash)
	
		{
		
			print "Duplicate:", $2
		
		}


	 prev_hash=$1

}


'

echo
echo "============================================"
echo "           SCAN COMPLETED                "
echo "============================================"


