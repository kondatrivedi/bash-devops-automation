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
	if [ -f "$FILE" ]
	then
		EXTENSION="${FILE##*.}"

		mkdir -p "$EXTENSION"

		mv "$FILE" "$EXTENSION/"

		echo "Moved $FILE to $EXTENSION/"
	fi
done


echo "Directory organization completed"


