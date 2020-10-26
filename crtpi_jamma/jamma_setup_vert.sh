mount -o remount, rw /
cp mme4crt /usr/local/bin/
rm /usr/local/bin/pikeyd165 > /dev/null
cp pikeyd165 /usr/local/bin/
cp pikeyd165 /usr/bin/
cp pikeyd165.conf /etc/
mv /opt/retropie/configs/all/autostart.sh /opt/retropie/configs/all/autostart.sh_backup 
cp autostart_vert.sh /opt/retropie/configs/all/autostart.sh
chmod a+rwx /opt/retropie/configs/all/autostart.sh
chmod a+rwx /usr/bin/pikeyd165
chmod a+rwx /usr/local/bin/pikeyd165
chmod a+rwx /usr/local/bin/mme4crt