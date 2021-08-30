#!/bin/bash
sytemctl stop bluetooth.service
sleep 1s
echo "You want start the bluetooth.service? y or n "
read x;
if [ $x == y ]
then
	systemctl start bluetooth.service 
else
 	systemctl stop bluetooth.service
fi
