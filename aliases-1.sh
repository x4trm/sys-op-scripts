#!/bin/bash


if [ $# == 1 ]
then
    cat $1 | grep '^alias' | sort
    echo ""
    liczba=`cat $1 | grep '^alias' | wc -l`
    echo "liczba aliasow= $liczba"
else
    echo "Podaj nazwe pliku"
fi