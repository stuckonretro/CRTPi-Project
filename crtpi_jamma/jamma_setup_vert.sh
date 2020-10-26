mount -o remount, rw /
cp pikeyd165 /usr/bin/
cp pikeyd165.conf /etc/
mv /opt/retropie/configs/all/autostart.sh /opt/retropie/configs/all/autostart.sh_backup 
cp autostart_vert.sh /opt/retropie/configs/all/autostart.sh
chmod a+rwx /opt/retropie/configs/all/autostart.sh
chmod a+rwx /usr/bin/pikeyd165