#!/bin/bash
# -------------------------------------------------------
filedir="$1"

searchstr="$2"
 
[ $# -ne 2 ] && { echo "Usage: $0 filedir searchstr"; exit 1; }
 
if [ ! -d "$filedir" ]
then
   echo "Error: Directory $filedir does NOT exsist"
   exit 1
fi

filescount="$(grep -rl "$filedir" -e "$searchstr" | wc -l)" #xargs -0)" 

linecount="$(grep -r "$searchstr" "$filedir" | wc -l)"

echo "The number of files are $filescount and the number of matching lines are $linecount"