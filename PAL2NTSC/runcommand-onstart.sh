#If Value found in 480i.txt for Consoles
if [ -f "/opt/retropie/configs/$1/480i.txt" ]; 
	then interlaced=$(tr -d "\r" < "/opt/retropie/configs/$1/480i.txt" | sed -e 's/\[/\\\[/'); 
fi > /dev/null
#If Value found in 480i.txt for Ports
if [ -f "/opt/retropie/configs/ports/$1/480i.txt" ]; 
	then interlaced=$(tr -d "\r" < "/opt/retropie/configs/ports/$1/480i.txt" | sed -e 's/\[/\\\[/'); 
fi > /dev/null
# If 480i.txt is Empty
if [ ! -s "/opt/retropie/configs/$1/480i.txt" ] && [ ! -s "/opt/retropie/configs/ports/$1/480i.txt" ] || [ -z "$interlaced" ]; 
	then interlaced="empty"; 
fi > /dev/null
#If Value found in 240p.txt for Consoles
if [ -f "/opt/retropie/configs/$1/240p.txt" ]; 
	then progresive=$(tr -d "\r" < "/opt/retropie/configs/$1/240p.txt" | sed -e 's/\[/\\\[/'); 
fi > /dev/null
#If Value found in 240p.txt for Ports
if [ -f "/opt/retropie/configs/ports/$1/240p.txt" ]; 
	then progresive=$(tr -d "\r" < "/opt/retropie/configs/ports/$1/240p.txt" | sed -e 's/\[/\\\[/'); 
fi > /dev/null
# If 240p.txt is Empty
if [ ! -s "/opt/retropie/configs/$1/240p.txt" ] && [ ! -s "/opt/retropie/configs/ports/$1/240p.txt" ] || [ -z "$progresive" ]; 
	then progresive="empty"; 
fi > /dev/null
#Execute Script
if tvservice -s | grep -q PAL && { ! echo "$3" | grep -q -wi "$interlaced" || echo "$interlaced" | grep -q empty; } && ! echo "$interlaced" | grep -q -xi "all" && { echo "$3" | grep -q -wi "$progresive" || echo "$progresive" | grep -q empty; }; 
	then tvservice -c "NTSC 4:3 P"; fbset -depth 8 -xres 640 -yres 480; fbset -depth 32; 
fi > /dev/null
