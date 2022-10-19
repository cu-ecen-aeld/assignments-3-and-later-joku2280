#!/bin/bash
# -------------------------------------------------------

 
[ $# -ne 2 ] && { echo "Usage: $0 file writestr"; exit 1; }

file="$1"

writestr="$2"
 
#if [ ! -d "$file" ]
#then
#   echo "Error: Directory $file does NOT exsist"
#   exit 1
#fi

mkdir -p "$(dirname "$file")" && touch "$file"


echo "$writestr" > "$file"