#!/bin/bash

echo "$1 + 273.15" | bc -l 
a=$( echo "$1 + 273.15" | bc -l )
echo "$a * $2" | bc -l
b=$( echo "$a * $2" | bc -l )
echo "$b - 273.15" | bc -l


