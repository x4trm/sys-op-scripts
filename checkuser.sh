#!/bin/bash
if [ $# -eq 0 ]
then
    echo "Uzyj checkuser z argumentem"
else    
    if [ $1 = $USER ]
    then
        echo "$USER jest wlascicielem powloki"
    else
        echo "$1 nie jest wlascicielem powloki"
    fi
fi
