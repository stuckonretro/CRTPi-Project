#!/usr/bin/env bash
#title           :	runcommand-onstart.sh
#description     :	This script perform the following
#					Determines if the game being run is a console or an arcade/fba
#					For arcades, it will programatically determine the resolution based on resolution.ini file
#					For consoles, hdmi_timings can be set based on emulator or system
#					Dynamically creates the game_name.zip.cfg file and sets the custom_viewport_height
#					Dynamically add these parameters (video_allow_rotate = "true" and video_rotation = 1) for vertical games
#						vertical.txt contains all the mame 0.184 vertical games
#					Ability to set custom_viewport_width for arcades/fba
#					Fix arcade custom_viewport_width for 320x224 and 320x240 resolutions
#					Added amiga and C64 support
#	                Automatically set custom_viewport_y to center vertically (Removed on 0.7.1)
#					Added support for 480 height arcade games like tapper
#					All console and arcade will default to 2048x240 resolution
#					Disable resolution change for non libretto cores
#					Added support for 448 height arcade games like popeye
#					Added support for 254 height arcade games like mk3
#					Arcade/FBA - Set custom_viewport_width to be rom_resolution_width multiplied closest to 1600
#					Removed text output when running scripts
#					Reverted hdmi_timings to previous version
#					Removed all logging
#					Default non supported emulators to 320x240
#author		 	 :	Michael Vencio
#date            :	2019-05-25
#version         :	0.8.3
#revision		 :  CRTPi-Project v2.0X
#rev. author     :  http://reddit.com/r/u_erantyint
#rev. date		 :  2020-03-23
#notes           :	For advance users only and would need to be tweaked 
#					to cater to your needs and preference
#					resolution.ini (0.184) file needed http://www.progettosnaps.net/renameset/
#===============================================================================================================


# get the system name
system=$1

# get the emulator name
emul=$2
emul_lr=${emul:0:2}

# get the full path filename of the ROM
rom_fp=$3
rom_bn=$3

# Game or Rom name
rom_bn="${rom_bn%.*}"
rom_bn="${rom_bn##*/}"

# Determine if arcade or fba then determine resolution, set hdmi_timings else goto console section
if [[ "$system" == "arcade" ]] || [[ "$system" == "fba" ]] || [[ "$system" == "mame-libretro" ]] || [[ "$system" == "neogeo" ]] ; then
	# get the line number matching the rom
	rom_ln=$(tac /opt/retropie/configs/all/resolution.ini | grep -w -n $rom_bn | cut -f1 -d":")

	# get resolution of rom
	rom_resolution=$(tac /opt/retropie/configs/all/resolution.ini | sed -n "$rom_ln,$ p" | grep -m 1 -F '[') 
	rom_resolution=${rom_resolution#"["}
	rom_resolution=${rom_resolution//]}
	rom_resolution=$(echo $rom_resolution | sed -e 's/\r//g')
	rom_resolution_width=$(echo $rom_resolution | cut -f1 -d"x")
	rom_resolution_height=$(echo $rom_resolution | cut -f2 -d"x")
	# Set rom_resolution_height for 480p and 448p roms
	if [ $rom_resolution_height == "480" ]; then
		rom_resolution_height="240"
	elif [ $rom_resolution_height == "448" ]; then
		rom_resolution_height="224"
	fi	
	
	# Create rom_name.cfg
	if ! [ -f "$rom_fp"".cfg" ]; then 
		touch "$rom_fp"".cfg" 
	fi
	
	# Set custom_viewport_height
	if ! grep -q "custom_viewport_height" "$rom_fp"".cfg"; then
		echo -e "custom_viewport_height = ""\"$rom_resolution_height\"" >> "$rom_fp"".cfg" 2>&1
	fi
	
	# determine if vertical  
	if grep -w "$rom_bn" /opt/retropie/configs/all/vertical.txt ; then 
		# Add vertical parameters (video_allow_rotate = "true")
		if ! grep -q "video_allow_rotate" "$rom_fp"".cfg"; then
			echo -e "video_allow_rotate = \"true\"" >> "$rom_fp"".cfg" 2>&1
		fi
		# Add vertical parameters (video_rotation = 1)
		if ! grep -q "video_rotation" "$rom_fp"".cfg"; then
			echo -e "video_rotation = \"3\"" >> "$rom_fp"".cfg" 2>&1
		fi	
	fi

	# set the custom_viewport_width 
	if ! grep -q "custom_viewport_width" "$rom_fp"".cfg"; then 
		echo -e "custom_viewport_width = ""\"1920\"" >> "$rom_fp"".cfg"  2>&1
	fi
fi

# determine and set variable resolutions for libretto cores
if [[ "$emul_lr" == "lr" ]]; then
	# get the system name
	system=$1
	# change timings for 256x to 2048x240p
	if 
		[[ "$system" == "snes" ]] || 
		[[ "$system" == "nes" ]] || 
		[[ "$system" == "fds" ]] || 
		[[ "$system" == "virtualboy" ]] || 
		[[ "$system" == "atarilynx" ]] || 
		[[ "$system" == "wonderswan" ]] || 
		[[ "$system" == "wonderswancolor" ]] || 
		[[ "$system" == "ngp" ]] || 
		[[ "$system" == "ngpc" ]] || 
		[[ "$system" == "gb" ]] || 
		[[ "$system" == "gbc" ]] || 
		[[ "$system" == "gba" ]] || 
		[[ "$system" == "psp" ]] || 
		[[ "$system" == "zxspectrum" ]] || 
		[[ "$system" == "pcengine" ]] || 
		[[ "$system" == "pce-cd" ]] || 
		[[ "$system" == "mastersystem" ]] || 
		[[ "$system" == "gamegear" ]] || 
		[[ "$system" == "sg-1000" ]] ; then
			vcgencmd hdmi_timings 2048 1 180 202 300 240 1 3 5 14 0 0 0 60 0 42954545 1 > /dev/null #Retrotink 2048x240p Timing
			tvservice -e "DMT 87" > /dev/null
			fbset -depth 8 && fbset -depth 24 -xres 2048 -yres 240 > /dev/null #Retrotink 24b depth
#			fbset -depth 8 && fbset -depth 16 -xres 2048 -yres 240 > /dev/null #VGA666 16b depth
	# change timings for 320x to 1920x240p
	elif 
		[[ "$system" == "megadrive" ]] || 
		[[ "$system" == "segacd" ]] || 
		[[ "$system" == "sega32x" ]] || 
		[[ "$system" == "psx" ]] || 
		[[ "$system" == "atari2600" ]] || 
		[[ "$system" == "atari5200" ]] || 
		[[ "$system" == "atari800" ]] || 
		[[ "$system" == "atari7800" ]] || 
		[[ "$system" == "amiga" ]] || 
		[[ "$system" == "n64" ]] || 
		[[ "$system" == "arcade" ]] || 
		[[ "$system" == "fba" ]] || 
		[[ "$system" == "neogeo" ]] || 
		[[ "$system" == "mame-libretro" ]] || 
		[[ "$system" == "ports" ]] || 
		[[ "$system" == "cavestory" ]] || 
		[[ "$system" == "quake" ]] || 
		[[ "$system" == "doom" ]] ; then
			vcgencmd hdmi_timings 1920 1 152 247 280 240 1 3 7 12 0 0 0 60 0 40860000 1 > /dev/null #Pi2SCART Generic 1920x240p Timing
			tvservice -e "DMT 87" > /dev/null
			fbset -depth 8 && fbset -depth 24 -xres 1920 -yres 240 > /dev/null #Retrotink 24b depth
#			fbset -depth 8 && fbset -depth 16 -xres 1920 -yres 240 > /dev/null #VGA666 16b depth
	# default to 1600x240p
	else
		vcgencmd hdmi_timings 1600 1 85 157 192 240 1 4 3 15 0 0 0 60 0 32000000 1 > /dev/null #VGA666 Generic 1600x240p Timing
		tvservice -e "DMT 87" > /dev/null
		fbset -depth 8 && fbset -depth 24 -xres 1600 -yres 240 > /dev/null #Retrotink 24b depth
#		fbset -depth 8 && fbset -depth 16 -xres 1600 -yres 240 > /dev/null #VGA666 16b depth
	fi
else
# for non-libretro emulators switch to 320x240p
    vcgencmd hdmi_timings 320 1 23 30 34 240 1 4 3 15 1 0 0 60 0 6400000 1 > /dev/null #Retrotink 320x240p Timing
#	vcgencmd hdmi_timings 320 1 16 30 34 240 1 2 3 22 0 0 0 60 0 6400000 1 > /dev/null #VGA666 320x240p Timing
	tvservice -e "DMT 87" > /dev/null
	fbset -depth 8 && fbset -depth 24 -xres 320 -yres 240 > /dev/null #Retrotink 24b depth
#	fbset -depth 8 && fbset -depth 16 -xres 320 -yres 240 > /dev/null #VGA666 16b depth
fi
