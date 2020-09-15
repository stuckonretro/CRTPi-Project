#!/usr/bin/env bash
#=====================================================================================================================================
#title           :	runcommand-onstart.sh
#description     :	This script perform the following - #Mike Vencio
#					Determines if the game being run is a console or an arcade/fba
#					Dynamically creates the game_name.zip.cfg file for Arcade/MAME/FBA/NeoGeo
#					Dynamically add these parameters (video_allow_rotate = "true" and video_rotation = 1) for vertical games
#					vertical.txt contains all the mame 0.184 vertical games
#og. author		 :	Michael Vencio
#revision		 :  CRTPi-Project v3.1
#rev. author     :  http://reddit.com/r/u_erantyint
#rev. date		 :  September15-2020
#=====================================================================================================================================

#### Michael Vencio ####

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

# Create rom_name.cfg
	if ! [ -f "$rom_fp"".cfg" ]; then 
		touch "$rom_fp"".cfg" 
	fi
	
# Determine if vertical  
	if grep -w "$rom_bn" /opt/retropie/configs/all/vertical.txt ; then 
		# Add vertical parameters (video_allow_rotate = "true")
		if ! grep -q "video_allow_rotate" "$rom_fp"".cfg"; then
			echo -e "video_allow_rotate = \"true\"" >> "$rom_fp"".cfg" 2>&1
		fi
		
		# Add vertical parameters (video_rotation = 1)
		if ! grep -q "video_rotation" "$rom_fp"".cfg"; then
			echo -e "video_rotation = \"1\"" >> "$rom_fp"".cfg" 2>&1
		fi	
		
		# Add integer scale parameters (video_scale_integer = true)
		if ! grep -q "video_scale_integer" "$rom_fp"".cfg"; then
			echo -e "video_scale_integer = \"true\"" >> "$rom_fp"".cfg" 2>&1
		fi
	fi
fi
