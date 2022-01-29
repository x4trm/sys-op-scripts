#!/bin/bash

if [ "$1" = "-r" ]
then
    shift
    echo $#

    i=$#
    for (( $i ; $i > 0 ; i-- ))
    do
        echo ${!i}
    done

else
    echo $#
    while [ $1 ]
    do
        echo "$1"
        shift 
    done
fi