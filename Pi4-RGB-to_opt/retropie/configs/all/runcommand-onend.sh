# when exiting an emulator -- revert to 320x240p
echo 'vcgencmd hdmi_timings 320 1 16 30 34 240 1 2 3 22 0 0 0 60 0 6400000 1 && tvservice -e "DMT 87" && fbset -depth 8 && fbset -depth 16 && fbset -depth 32 -xres 320 -yres 240' > /opt/retropie/configs/all/desired_mode/value #320x240p Timing
vcgencmd hdmi_timings 320 1 16 30 34 240 1 2 3 22 0 0 0 60 0 6400000 1 > /dev/null/
tvservice -e "DMT 87" > /dev/null/
fbset -depth 8 && fbset -depth 16 && fbset -depth 32 -xres 320 -yres 240 > /dev/null/