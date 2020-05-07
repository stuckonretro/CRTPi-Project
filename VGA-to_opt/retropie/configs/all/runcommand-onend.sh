# when exiting an emulator -- revert to 640x480@65hz VGA
vcgencmd hdmi_timings 640 1 56 56 80 480 0 1 3 25 0 0 0 65 0 36000000 1  > /dev/null #VGA666 640x480p@65hz Timing
tvservice -e "DMT 87" > /dev/null
sleep 1 > /dev/
fbset -depth 8 && fbset -depth 16 -xres 640 -yres 480 > /dev/null
tvservice -s > /dev/null
