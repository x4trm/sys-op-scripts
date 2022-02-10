#!/bin/bash

time1=$(date '+%Y-%m-%d %H:%M:%S')
time2=$(uptime -s)

a=0
u="s"

while getopts ":au:" o; do
    case $o in
        a) a=1;;
	u) u=$OPTARG;; 
    esac
done

shift $((OPTIND-1))

if [ $# -eq 1 ]
then 
	time1="$1"
fi

declare -A x

LC_ALL=C

x["s"]=$(echo $(date '+%s' -d "$time1") - $(date '+%s' -d "$time2") | bc )
x["m"]=$(echo "scale=2; ${x["s"]} / 60 " | bc )
x["h"]=$(echo "scale=2; ${x["s"]} / (60*60) " | bc )
x["d"]=$(echo "scale=2; ${x["s"]} / (60*24*60) " | bc )


if [ $a -eq 1 ]
then
  printf "uptime=%11.2f s\n" ${x["s"]}
  printf "       %11.2f m\n" ${x["m"]}
  printf "       %11.2f h\n" ${x["h"]}
  printf "       %11.2f d\n" ${x["d"]}
else
  printf "uptime=%.2f %s\n" ${x[${u}]} ${u}
fi


