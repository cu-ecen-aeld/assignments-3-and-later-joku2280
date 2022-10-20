#!/bin/bash
# -------------------------------------------------------

#Check for argument count
#exit if not correct
[ $# -ne 2 ] && { echo "Usage: $0 file writestr"; exit 1; }

#Assign first argument to file variable
file="$1"

#Assign second argument to write string variable
writestr="$2"
 
#Make file/directory and write to file
mkdir -p "$(dirname "$file")" && touch "$file"

echo "$writestr" > "$file"

#if unable to write exit with 1
if [ $? -ne 0 ]
then
    echo "Unable to write to file "$file""
    exit 1
fi