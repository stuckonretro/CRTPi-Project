#!/bin/bash
if [ ! -e "/boot/config.hdmi" ]; then
	echo "Swithcing to GPIO..."
	sudo mv /boot/config.txt /boot/config.hdmi
	sudo mv /boot/config.gpio /boot/config.txt
	sudo chmod 777 /boot/config.txt
	sudo reboot now
	
elif [ ! -e "/boot/config.gpio" ]; then
	echo "Swithcing to HDMI..."
	sudo mv /boot/config.txt /boot/config.gpio
	sudo mv /boot/config.hdmi /boot/config.txt
	sudo chmod 777 /boot/config.txt
	sudo reboot now
else
	echo "No Alternate Config Found..."
	exit
fi 