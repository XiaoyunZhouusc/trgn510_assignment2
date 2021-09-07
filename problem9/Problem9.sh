#!/bin/bash

dealWithFile()
{   
    echo "Processing $1 file..."
    wordCount=$(wc -c $1)
    splitBySpace=($wordCount)
    if [ ${splitBySpace[0]} -gt "1000" ]; then
        echo "Skipping $1 file... "
    else 
        echo $wordCount
    fi
}

if [ -d $1 ]; then
    cd $1
    FILES=$(ls)
    echo $FILES $1
    for f in $FILES
    do
    if [ -d $f ]; then
        echo "$f is a directory"
    else    
        dealWithFile $f
    fi
    done
else
    dealWithFile $1
fi
