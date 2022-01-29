#!/bin/bash

if [ $1 ]
then
    id -Gn $1
    id -G $1
else
    echo "podaj uzytkownika"
fi