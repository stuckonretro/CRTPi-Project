# CRTPi-Project
*A Vanilla+ experience for CRT gamers utilizing Retropie!*
_____

Thank you very much to Mike V, Sakitoshi, Mike Chi, the guys at Strike Devices, Artemio Urbina, Ruckage, ChipsnBlip, Podunk_Labs, kitty666cats, and anyone I've missed! Thank you for the input, support, resources, and help along the way!

**Major Changelogs and Features can be viewed in the pinned posts here:**

    https://reddit.com/r/u_erantyint

**User Photo Galleries (Photos from Historical Versions):**

* RGB: https://photos.google.com/share/AF1QipNjCNQs45Gza9YDe-WWCmIQZWPUEbVvt8PoIdKRNrBiEPedw-yl6r5g8jKpWkfJWA?key=QWtsS3FBWWo0aHU5M1hlRDVvU3JxQVNsSVoxSVdB
* RCA: https://photos.google.com/share/AF1QipO8q3LzMQIlexAD0kgEGIArp5Ax8Y9SMxCqoiaouZKDKbcJO3AN-YS7YuaykX1J7A?key=LXJMbWZheG8yamxNOGwxLVRXOWlwRzRia2R6a2FB
* VGA: https://photos.google.com/share/AF1QipNO6y2Vjt0jFrwY0kYbgsD-R2-KjNFuaDqKrFZQsCebWi6O1nZAF4ozajdksLw7KQ?key=WGVHbWMxLXd2ZlFqbFhGZ3BLRjZTSE42S1FNVFdB

**Required Hardware:**

    Raspberry Pi 3B or 3B+
    GPIO RGB DAC Hat & Appropriate RGB/YPrBr cable (RGB && VGA)
    --OR--
    XBOX 360-E A/V or Zune A/V cable (RCA)
    5v 2.5A Micro USB power supply (Element14 recommended)
    4GB+ SD Card
    
_____

**Optional Prerequisites: Install these prior to installing the CRTPi zips!** 

	Install the following theme: /ruckage/snes-mini/
	Install the following opt packages: scummvm, lr-beetle-wswan, lr-fbalpha2012, lr-mame2000, lr-mame2010, lr-nxengine, lr-ppsspp, lr-prboom, lr-snes9x2002, lr-tgbdual, lr-tyrquake, scraper, skyscraper
	Install the following experimental packages: lr-mame2003-plus
	Install libxpm-dev and libx11-dev: "sudo apt-get install libxpm-dev && sudo apt-get install libx11-dev"
	Install MUNT (MT-32 Emulation) using this guide: https://retropie.org.uk/forum/topic/12549/tutorial-installing-munt-mt-32-emulation-on-rpi-3 (Remove 'qtmobility-dev' from step 1) (mt32roms.zip in master is for step 10)

_____

**Instructions: This is recommended to be installed on a fresh Retropie install on a 3B or 3B+ using the 4.6 offical image (Or 4.5.1 updated to 4.6). Anything you overwrite is your own fault at this point!**

*RGB: For RetroTINK Ultimate, Pi2SCART, RGB-Pi, or VGA666 to a 15khz Display*

    Install Retropie and configure your desired content
    Connect to WiFi or Ethernet with internet access
    Download the CRTPi-RGB.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RGB.zip" 
    ***WARNING: THE NEXT STEP WILL OVERWRITE GAMELIST.XML FILES AS SHOWN IN THE REPRO! BACK UP ACCORDINGLY!!***
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-RGB.zip"
    Remove the zip with the command "sudo rm CRTPi-RGB.zip"
    Power off the Pi with the command "sudo poweroff" and remove power once the green light stops blinking
    Put SD card in PC and edit /boot/config.txt to uncomment the appropriate block for your GPIO device AND comment out all other device blocks
    Install GPIO hat with RGB output (RetroTINK Ultimate, VGA666, Pi2SCART, RGB-Pi, etc.)
    Put SD card back in Pi and power on while connected to your output device
    Drop to the command line or connect via SSH
    Restore read/write access to the files you have overwritten with the command  "sudo chmod a+rw -R /opt/retropie/configs/"
    Restore execute access to the runcommand scripts with the command "sudo chmod a+x -R /opt/retropie/configs/all/*.sh"
    Launch back into ES with the command "emulationstation"
    **If using a VGA666-based hat** (anything other than RetroTINK) run 'Enable VGA666' from the Retropie carousel menu
    Reboot (VGA script will reboot automatically)
    Launch Retropie-Setup and choose "resetromdirs" from the Configurations menu
	
*RCA: For Composite-Out from the Pi's 3.5mm Port to a 15khz Display*

    Install Retropie and configure your desired content
    Connect to WiFi or Ethernet with internet access
    NTSC: Download the CRTPi-RCA_NTSC.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RCA_NTSC.zip"
    PAL: Download the CRTPi-RCA_PAL.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RCA_PAL.zip"
    ***WARNING: THE NEXT STEP WILL OVERWRITE GAMELIST.XML FILES AS SHOWN IN THE REPRO! BACK UP ACCORDINGLY!!***
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-RCA_NTSC.zip" [OR "sudo unzip -o -q CRTPi-RCA_PAL.zip"]
    Remove the zip with the command "sudo rm CRTPi-RCA_NTSC.zip" [OR "sudo rm CRTPi-RCA_PAL.zip"]
    Reboot the Pi with the command "sudo reboot" and wait for it to return to Emulationstation
    Drop to the command line or connect via SSH
    Restore read/write access to the files you have overwritten with the command  "sudo chmod a+rw -R /opt/retropie/configs/"
    Restore execute access to the runcommand scripts with the command "sudo chmod a+x -R /opt/retropie/configs/all/*.sh"
    Launch back into ES with the command "emulationstation"
    Launch Retropie-Setup and choose "resetromdirs" from the Configurations menu
    
*OPTIONAL: RCA Arcade Config Pack*

    Download the CRTPi-RCA_ArcadePack.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RCA_ArcadePack.zip"
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-RCA_ArcadePack.zip"
    Remove the zip with the command "sudo rm CRTPi-RCA_ArcadePack.zip"
    Restore read/write access to the files you have overwritten with the command  "sudo chmod a+rw -R /opt/retropie/configs/"

*VGA: For VGA666 to 31khz Display*

    Install Retropie and configure your desired content
    Connect to WiFi or Ethernet with internet access
    Download the CRTPi-VGA.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-VGA.zip" 
    ***WARNING: THE NEXT STEP WILL OVERWRITE GAMELIST.XML FILES AS SHOWN IN THE REPRO! BACK UP ACCORDINGLY!!***
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-VGA.zip"
    Remove the zip with the command "sudo rm CRTPi-VGA.zip"
    Power off the Pi with the command "sudo poweroff" and remove power once the green light stops blinking
    Install your VGA666 GPIO hat
    Put SD card back in Pi and power on while connected to your VGA monitor
    Drop to the command line or connect via SSH
    Restore read/write access to the files you have overwritten with the command  "sudo chmod a+rw -R /opt/retropie/configs/"
    Restore execute access to the runcommand scripts with the command "sudo chmod a+x -R /opt/retropie/configs/all/*.sh"
    Launch back into ES with the command "emulationstation"
    Launch Retropie-Setup and choose "resetromdirs" from the Configurations menu
    
_____

The RGB and VGA forks are now utilizing Snap-Shader, plus a newly-enhanced runcommand-onstart script, with provision for *user-specified per-game configuration*! 

**Here's the new script:**

    https://github.com/crtpi/CRTPi-Project/blob/master/RGB-to_opt/retropie/configs/all/runcommand-onstart.sh

**Here's information about Snap-Shader:**

    https://github.com/ektgit/snap-shader-240p

**And here's a quick rundown on how it works:**

Not only does the new script carry forward the per-core scripting for 2048x / 1920x / and 1600x resolutions -- but adds per-game scripting by adding a text file to the system config and naming the rom(s) within the file. This allows you to force 2048x on a system that defaults to 1920x. This is especially useful for PSX, FDS, PCE/PCE-CD, and MAME for the few games that are 256 or 512 wide. Below are some example config files:

**/opt/retropie/conifgs/psx/256.txt**

    Brave Prove
    Castlevania - Symphony of the Night
    Crash Bandicoot
    Final Fantasy Origins
    Final Fantasy Tactics

**/opt/retropie/conifgs/megadrive/256.txt**

    Bubble And Squeak
    Bubsy in - Claws Encounters of the Furred Kind 
    Bugs Bunny in Double Trouble 
    Caesars Palace 
    Captain America and the Avengers 

You get the jist. It doesn't need an extension, but should match the rom name including punctuation. This forces them to launch in 2048x240p instead of the default 1920x240p. This gives the end user full control on a game-per-game basis over the horizontal integer. You'll still need to write a retroarch game config to override the defaults there, but this at least gets you the right field. For games with odd/shifting vertical resolutions (like Chrono Cross, Battle Arena Toshinden, Castlevania SotN, etc.), a single pass of snap-shader is applied (snap-basic, nearest neighbor filtering, and "don't care" scale).

_____

**Final Thoughts:**

If you have any questions, comments, concerns, or issues -- please PM me or DM me on Reddit or post on one of the threads. Chances are, it's a "feature" not a "bug." :)
_____
