#!/bin/bash

while getopts ":t:b:" Option;
do
    case "${Option}" in
    t) t=${OPTARG};;
    b) b=${OPTARG};;
    *);;
    esac
done
shift $((OPTIND-1))
while [ $1 ]
do
    echo "plik $1: HEAD"
    head -n $t $1
    echo "----------------------------------------------------"
    echo "plik $1: TAIL"
    tail -n $b $1
    echo "----------------------------------------------------"
    shift 
done