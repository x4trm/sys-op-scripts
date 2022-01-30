#!/bin/bash
if [ $# = 0 ]
then
    echo "Podaj argumenty"
else
    while [ $1 ]
    do
        head -10 $1
        echo "----------------------------------------------------"
        shift 
    done
fi