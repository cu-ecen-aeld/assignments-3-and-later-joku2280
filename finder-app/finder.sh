#!/bin/bash
# -------------------------------------------------------


#Check for argument count
#exit if not correct
[ $# -ne 2 ] && { echo "Usage: $0 filedir searchstr"; exit 1; }

#Assign first argument to directory variable
filedir="$1"

#Check if directory exsists
#exit if not
if [ ! -d "$filedir" ]
then
   echo "Error: Directory $filedir does NOT exsist"
   exit 1
fi

#Assign second argument to search string variable
searchstr="$2"

#get file count
filescount="$(grep -rl "$filedir" -e "$searchstr" | wc -l)" #xargs -0)" 

#get line count
linecount="$(grep -r "$searchstr" "$filedir" | wc -l)"

echo "The number of files are $filescount and the number of matching lines are $linecount"