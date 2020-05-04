# CRTPi-Project
A Vanilla+ experience for CRT gamers utilizing Retropie with RGB Hats!

https://redd.it/fosbir

Required Hardware:

    Raspberry Pi 3B or 3B+
    GPIO RGB DAC Hat
    Appropriate RGB/YPrBr cable
    5v 2.5A Micro USB power supply
    8GB+ SD Card

Changelog: v2.0 for 888 & 666 03/25/2020

    Disabled Runahead for lr-snes9x (current fork)
    Completely retooled runcommand-onstart script to change system-by-system resolutions based on 256x240 or 320x240 integers
    Fixed issue where arcade Retroarch emulators were ignoring per-game configs created by runcommand script
    Merged 888 and 666 images into one multi-purpose configuration
    Added configuration blocks for all the popular RGB DAC hats inside /boot/config.txt to be set before first boot
    Added "Enable Retrotink" and "Enable VGA666" scripts to the Retropie menu to allow on-the-fly configuration for all hardware
    Disabled Threaded Video in Retroarch
    Enabled horizontal overscan crop for lr-FCEUUM and removed bilinear filtering
    Removed all enhanced resolution and interlacing modes from lr-PCSXReARMed and removed bilinear filtering
    Retooled all launch images and handheld overlays to handle increase to 2048px
    Included new metadata images for the 240p Test Suite roms from /u/chipsnblip
    Added 160p Test Suite for mGBA along side the original mGBA Test Suite
    The following Retroarch systems launch in 2048x240: SNES, NES, FDS, VB, LYNX, WS, WSC, NGP, NGPC, GB, GBC, GBA, PSP, ZXSPEC, PCE, PCE-CD, MS, GG, SG1000
    The following Retroarch systems launch in 1920x240: MD, SEGACD, 32X, PSX, ATARI800/2600/5200, AMIGA, N64, ARCADE, FBA, NEOGEO, MAME-LR, CAVESTORY, QUAKE, DOOM
    All other Retroarch systems launch in a catch-all 1600x240 resolution

What is Different?

    Custom /boot/config.txt settings for DPI output and custom HDMI timings
    Optional overclock values in /boot/config.txt for Pi2 & Pi3B (disabled by default)
    Modified Michael Vencio's Runcommand “On Start” and “On End” scripts to automatically change the resolution system-by-system
    Modified Runcommand "On Start" script to allow creation of game-specific arcade configs for arcade/fba/mame-libretro/neogeo
    NTSC @ 60hz 320x240 resolution for Emulationstation and DOSBox/ScummVM/Kodi
    NTSC @ 60hz 2048x240, 1920x240, and 1600x240 resolution for Retroarch
    Per-system custom refresh rates for Retroarch
    Single-frame Run Ahead enabled for many 8-bit & 16-bit consoles and handhelds for Retroarch
    Preloaded with free 240p test suites for multiple consoles with art by /u/chipsnblip
    Preloaded with various 4:3 splashscreens from the RPiF download
    Custom 4:3 Arcade DOJ "Winners DO Use Drugs" splash screen.
    Preloaded with Ruckage's runcommand launching screens for supported systems
    Preconfigured MOST Retroarch emulators for proper Integer Scale SuperRes
    Retroarch FCEUmm (NES) Emulator preconfigured for 8:7 vert overscan crop enabled w/ composite-direct-fbx palette
    Retroarch Gambatte (GB/GBC) emulator preset to Super Game Boy (SGB2 auto coloration) mode with Integer Scale Overlay
    Retroarch mGBA (GBA) emulator preset to Game Boy Player mode with Integer Scale Overlay
    Preloaded with Ruckage's RetroPie menu icon
    Custom ScummVM system artwork for Ruckage's snes-mini theme
    Emulationstation systems ordered chronologically instead of alphabetically
    Emulationstation preconfigured with best settings for analog A/V including best settings for video preview screensavers
    Custom Retropie menu scripts for switching between Retrotink and VGA666-based hardware
