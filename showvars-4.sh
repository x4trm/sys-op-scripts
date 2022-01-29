#!/bin/bash
if [ "$1" = "-c" ]
then
    shift 1
    while [ $1 ]
    do
        argument=$(printenv $1)
        nazwa=`echo $1 | tr [A-Z] [a-z]`
        echo "$nazwa=$argument"

        shift 1
    done
else
    while [ $1 ]
    do
        echo "$1=$(printenv $1)"
        shift 1
    done
fi