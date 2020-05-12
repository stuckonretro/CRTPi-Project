#!/bin/bash
if [ ! -e "/opt/retropie/configs/all/runcommand-onstart.666" ]; then
	echo "Already setup for VGA666..."
	exit
else 
	echo "Switching to VGA666..."
	sudo mv /opt/retropie/configs/all/runcommand-onend.sh /opt/retropie/configs/all/runcommand-onend.888
	sudo mv /opt/retropie/configs/all/runcommand-onend.666 /opt/retropie/configs/all/runcommand-onend.sh
	sudo chmod +x /opt/retropie/configs/all/runcommand-onend.sh > /dev/null
	sudo mv /opt/retropie/configs/all/runcommand-onstart.sh /opt/retropie/configs/all/runcommand-onstart.888
	sudo mv /opt/retropie/configs/all/runcommand-onstart.666 /opt/retropie/configs/all/runcommand-onstart.sh
	sudo chmod +x /opt/retropie/configs/all/runcommand-onstart.sh
	sudo reboot
fi 