#!/bin/bash
echo "Static hostname: $HOSTNAME"
if [ -e /etc/machine-info ]
then
        icon=$(cat /etc/machine-info | grep ICON | cut -c 11-)
        chassis=$(cat /etc/machine-info | grep CHASSIS | cut -c 9-)
else
	icon=''
	chassis=''
fi
 	
echo "Icon name: $icon"
echo "Chassis: $chassis"
echo "Machine ID: $(cat /etc/machine-id)"
echo "Boot ID: $(cat /proc/sys/kernel/random/boot_id)"
echo "Virtualization: $(virt-what)"
system=$(grep 'PRETTY_NAME=' /etc/os-release | cut -d = -f2 | sed -r 's/"//g')
echo "Operating system: $system"
CPE=$(cat /etc/os-release | grep CPE | sed -r 's/"//g')
if [[ $CPE == '' ]]
then
        CPE=''
else
        CPE=${CPE::-1}
fi
echo "CPE OS Name: $CPE"
echo "Kernel: $(uname -rs)"
echo "Architecture: $(lscpu | awk {'print $2'} | head -1)"
