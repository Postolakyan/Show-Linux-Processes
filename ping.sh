#!/bin/bash
echo "Date">>ping.txt
date>>ping.txt
echo "_____________________________________________">>ping.txt
cat /etc/resolv.conf | grep nameserver>>ping.txt
echo "______________________________________________">>ping.txt


cat /etc/hosts | grep 127.0.0.1>> ping.txt
echo  "______________________________________________">>ping.txt

ping -c 2 google.com>>ping.txt
echo "_________________________________________________">>ping.txt

ping -c 2 facebook.com>>ping.txt
echo "___________________________________________________">>ping.txt

ping -c 2 tert.am>>ping.txt
echo "______________________________________________________">>ping.txt

#source  ping.sh>>ping.txt ping.txt

