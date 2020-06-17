# when exiting an emulator -- revert to 576i PAL
if tvservice -s | grep -q NTSC; then tvservice -c "PAL 4:3"; fbset -depth 8 -yres 576; fbset -depth 32; fi > /dev/null