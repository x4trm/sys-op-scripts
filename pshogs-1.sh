#!/bin/bash
#skrypt niepelny z poleceniem brak opcji -f
n=3
while getopts ":n:" Option;
do
    case "${Option}" in
    n) n=${OPTARG};;
    *);;
    esac
done
shift $((OPTIND-1))

echo "CPU hogs:"
ps -eo user,vsz,rsz,pcpu,comm | sort -k 4 -r | head -n $[n+1] | tail -n $n
echo "RES hogs:"
ps -eo user,vsz,rsz,pcpu,comm | sort -k 3 -r | head -n $n
echo "VIRT hogs:"
ps -eo user,vsz,rsz,pcpu,comm | sort -k 2 -r | head -n $n
