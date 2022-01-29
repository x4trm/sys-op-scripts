#!/bin/bash
if [ "$1" = "-n" ]
then
    printenv | wc -l
else
    while [ $1 ]
    do
        x=$(printenv $1)
        if [ $x ]
        then
            echo "$1=$x"
            shift 1
        else
            shift 1
        fi
    done
fi