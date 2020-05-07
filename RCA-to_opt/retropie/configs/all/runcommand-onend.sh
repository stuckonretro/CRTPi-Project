# when exiting an emulator -- revert to 480i NTSC
if tvservice -s | grep -q NTSC; then tvservice -c "NTSC 4:3"; fbset -depth 8 -yres 480; fbset -depth 32; fi > /dev/null
