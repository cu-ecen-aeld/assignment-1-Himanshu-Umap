#!/bin/bash

# 1st argument is the path to directory to search: filesdir
# 2nd argument is the string to search for: searchstr

if [ $# -ne 2 ]
then 
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$1" ]
then
    echo "Error: $1 is not a directory"
    exit 1
fi

filecount=$(find "$1" -type f | wc -l)
matchcount=$(grep -r "$2" "$1" 2>/dev/null| wc -l)

echo "The number of files are $filecount and the number of matching lines are $matchcount"
