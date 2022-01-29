#!/bin/bash
arg=no
while getopts ":b" Option;
do
    case $Option in
    b) arg=yes;shift;;
    esac
done
if [ $arg == "no" ]
then

	param1=${1:-p1}
	param2=${2:-p2}
	param3=${3:-p3}
else
	param1=${1-p1}
	param2=${2-p2}
	param3=${3-p3}
fi
echo "==$param1=="
echo "==$param2=="
echo "==$param3=="