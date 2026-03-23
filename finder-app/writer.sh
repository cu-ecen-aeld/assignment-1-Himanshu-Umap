#!/bin/bash

if [ $# -ne 2 ];
then
    echo "Both the parameters are required"
    exit 1
fi

# if [ ! -f "$1" ];
# then
#     echo "Error: $1 is not a file"
#     exit 1
# fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")" || {
    echo "Error: Failed to create directory" 
    exit 1
}

echo "$writestr" > "$writefile" || {
    echo "Error: Failed to write to a file"
    exit 1
}