#!/bin/bash
if [ $# = 3 ]
then
    echo $@
    echo "Code 0"
else 
    case $# in
    0) echo "No arguments";;
    1) echo "Code 1";;
    2) echo "Code 2";;
    *) echo "To many arguments";; 
    esac
fi