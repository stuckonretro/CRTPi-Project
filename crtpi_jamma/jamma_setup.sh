sudo mount -o remount, rw /
sudo mv /opt/retropie/configs/all/emulationstation/es_input.cfg /opt/retropie/configs/all/emulationstation/es_input.cfg_backup
sudo cp es_input.cfg /opt/retropie/configs/all/emulationstation/es_input.cfg
sudo cp pikeyd165 /usr/bin/
sudo cp pikeyd165.conf /etc/
sudo echo "/usr/bin/pikeyd165 -d" >> ~/custom.sh
sudo chmod u+x ~/custom.sh
sudo chmod u+x /usr/bin/pikeyd165
emulationstation