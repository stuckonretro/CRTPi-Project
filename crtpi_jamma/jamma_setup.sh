mount -o remount, rw /
mv /opt/retropie/configs/all/emulationstation/es_input.cfg /opt/retropie/configs/all/emulationstation/es_input.cfg_backup
cp es_input.cfg /opt/retropie/configs/all/emulationstation/es_input.cfg
cp pikeyd165 /usr/bin/
cp pikeyd165.conf /etc/
mv /opt/retropie/configs/all/autostart.sh /opt/retropie/configs/all/autostart.sh_backup 
cp autostart.sh /opt/retropie/configs/all/
chmod a+rwx /opt/retropie/configs/all/autostart.sh
chmod a+rwx /usr/bin/pikeyd165
reboot now