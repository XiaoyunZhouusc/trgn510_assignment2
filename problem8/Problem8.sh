#!/bin/bash
if [ -d $1 ]; then
    cd $1
    FILES=$(ls)
    echo $FILES $1
    for f in $FILES
    do
    if [ -d $f ]; then
        echo "$f is a directory"
    else
        wc -c $f
    fi
    done
else
    wc -c  $1
fi

