### when exiting an emulator -- revert to 320x240p
vcgencmd hdmi_timings 320 1 15 30 42 240 1 4 3 15 1 0 0 60 0 6400000 1 > /dev/null #CRTPi 320x240p Timing Adjusted
tvservice -e "DMT 87" > /dev/null
fbset -depth 8 && fbset -depth 16 && fbset -depth 24 -xres 320 -yres 240 > /dev/null #24b Depth

###