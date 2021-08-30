#!/bin/bash
read -p "Please insert the Name" name
sudo adduser $name	
sudo usermod -a -G sudo $name

