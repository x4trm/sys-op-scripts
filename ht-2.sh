#!/bin/bash
if [ $# = 0 ]
then
    echo "Podaj argumenty"
else
    while [ $1 ]
    do
        echo "plik $1: HEAD"
        head -10 $1
        echo "----------------------------------------------------"
        echo "plik $1: TAIL"
        tail -10 $1
        echo "----------------------------------------------------"
        shift 
    done
fi
