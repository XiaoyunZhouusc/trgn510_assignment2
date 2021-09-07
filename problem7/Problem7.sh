#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi
wget -O web $1 
filename=web
 
while read -n 1 c
do
    echo "$c"
done < "$filename" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
