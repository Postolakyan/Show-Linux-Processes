#!/bin/bash
Free(){
	echo "RAM      "
	echo "________________"
	free -m
}
Process(){
	echo "________________"
	echo " Process in pc"
	echo "____________________________________________________________________"
	lscpu | head -n 20
}
Uname(){
	echo "_________________________________________________________"
	uname -a
	echo --------------------
	df -h
	}
Uptime() {
	echo "uptime"
	echo "----------------------------------------------------------------"
	uptime
}
Sensors() {
	echo "Sensors"
	echo "__________________________________________________________________________"
	sensors
}


Free
Process
Uname	
Uptime
Sensors
