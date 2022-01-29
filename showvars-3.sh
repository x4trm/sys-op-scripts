#!/bin/bash
if [ $1 ];
then
    x=$(printenv $1)
    if [ $x ];
    then
        x=$(printenv $1)
        echo "$1=$x"
    else
    echo "nieznana zmienna"
    fi
    
else
    echo "Brak zmiennej"
fi 