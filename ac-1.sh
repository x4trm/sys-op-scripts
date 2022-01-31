#!/bin/bash

echo `ac -p | sort -k 2 -nr | head -2 | tail -1 | gawk {'print $0'}`
#ac -p | sort -k 2 -nr | head -2 | tail -1 | gawk {'print $0'}