#!/bin/bash


#-------------------------------------------

#script name: directory_organizer.sh

#purpose: organize files based on extension

#Author: Trivedi

#-------------------------------------------


#Target Directory
TARGET_DIR="/home/ubuntu/test_directory"


#Move into the target directory
cd "$TARGET_DIR"

#loop through the files
for FILE in *; do
#check if it's a regular file
	if [ -f "$FILE" ]
	then
	    #extract extension
		EXTENSION="${FILE##*.}"

		#create folder
		mkdir -p "$EXTENSION"

		#move fileto corresponding extension
		mv "$FILE" "$EXTENSION/"

		echo "Moved $FILE to $EXTENSION/"
	fi
done


echo "Directory organization completed"


