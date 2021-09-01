#!/bin/bash
echo "Do yow want install apache2? y or n"
read x
if [ $x = y ]
then
	sudo apt install apache2
fi

echo "insert the name of website"
read s
cd /etc/apache2/sites-available
sudo vim 000-default.conf cat >> ServerAdmin $s

echo "insert your IP address"
read ip
sudo vim /etc/hosts
cat >> $ip $s

echo "website or computers file? w or c"
read a
if [ $a= w]
then 
 	echo "insert the Website name"
	read web
	wget $web
	sleep 2s
	sudo mv index.html /var/www/html
else
	echo " insert your file name"
	read file
	sudo mv $file /var/www/html
fi






