#!/bin/bash

i3status | while :
do
    read line
    serial=`ls /dev |grep ttyUSB |tr '\n' ' '`
    echo "$serial | $line" || exit 1
done
