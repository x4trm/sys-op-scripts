#!/bin/bash
r=no
while getopts ":r" Option;
do
    case "${Option}" in
    r) r=yes;;
    *) r=no;;
    esac
done
shift 
if [ -e $1 ];
then
    if [ $r == "no" ]
    then
        plik=$1
        shift
        while [ $1 ]
        do
            head -n $1 $plik | tail -n 1
            shift
        done
    else
        plik=$1
        shift
        while [ $1 ]
        do
            tail -n $1 $plik | head -n 1
            shift
        done

    fi

else
    echo "podaj prawidlowa nazwe pliku"
fi
