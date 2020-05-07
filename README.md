# CRTPi-Project
*A Vanilla+ experience for CRT gamers utilizing Retropie!*

Thank you very much to Mike V, Sakitoshi, Mike Chi, the guys at Strike Devices, Ruckage, ChipsnBlip, Podunk_Labs, kitty666cats, and anyone I've missed! Thank you for the input, support, resources, and help along the way!

**Major Changelogs and Features can be viewed in the pinned posts here:**

    https://reddit.com/r/u_erantyint

**Required Hardware:**

    Raspberry Pi 3B or 3B+
    GPIO RGB DAC Hat & Appropriate RGB/YPrBr cable (RGB && VGA)
    	OR
    XBOX 360-E A/V or Zune A/V cable (RCA)
    5v 2.5A Micro USB power supply (Element14 recommended)
    4GB+ SD Card

**Optional Prerequisites: Install these prior to installing the CRTPi zips!** 

	Install the following theme: /ruckage/snes-mini/
	Install the following opt packages: scummvm, lr-beetle-wswan, lr-fbalpha2012, lr-mame2000, lr-mame2010, lr-nxengine, lr-ppsspp, lr-prboom, lr-snes9x2002, lr-tgbdual, lr-tyrquake
	Install the following experimental packages: lr-mame2003-plus
	Install libxpm-dev and libx11-dev: "sudo apt-get install libxpm-dev && sudo apt-get install libx11-dev"
	Install MUNT (MT-32 Emulation) using this guide: https://retropie.org.uk/forum/topic/12549/tutorial-installing-munt-mt-32-emulation-on-rpi-3 (qtmobility-dev will fail on 4.6, this is OK) [mt32roms.zip in master is for step 10]


**Instructions: This is recommended to be installed on a fresh Retropie install on a 3B or 3B+ using the 4.5.1 or 4.6 offical images. Anything you overwrite is your own fault at this point!**

*RGB*

    Install Retropie and configure your desired content
    Download the CRTPi-RGB.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RGB.zip" 
    ***WARNING: THE NEXT STEP WILL OVERWRITE GAMELIST.XML FILES AS SHOWN IN THE REPRO! BACK UP ACCORDINGLY!!***
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-RGB.zip"
    Return read/write permissions to those files with the command "sudo chmod a+rw -R /opt/retropie/configs/"
    Remove the zip with the command "sudo rm CRTPi-RGB.zip"
    Power off the Pi with the command "sudo poweroff" and remove power once the green light stops blinking
    Put SD card in PC and edit /boot/config.txt to uncomment the appropriate block for your GPIO device AND comment out all other device blocks
    Install GPIO hat with RGB output (RetroTINK Ultimate, VGA666, Pi2SCART, RGB-Pi, etc.)
    Put SD card back in Pi and power on while connected to your output device
    Drop to the command line or connect via SSH and input the command "sudo chmod a+x -R /opt/retropie/configs/all/*.sh"
    Launch back into emulationstation (if necessary)
    **If using a VGA666-based hat** (anything other than RetroTINK) run 'Enable VGA666' from the Retropie carousel menu
    Reboot (VGA script will reboot automatically)
    Launch Retropie-Setup and choose "resetromdirs" from the Configurations menu
	
*RCA*

    Install Retropie and configure your desired content
    Download the CRTPi-RCA.zip into your root folder (cd /) with the command "sudo wget https://github.com/crtpi/CRTPi-Project/raw/master/CRTPi-RCA.zip" 
    ***WARNING: THE NEXT STEP WILL OVERWRITE GAMELIST.XML FILES AS SHOWN IN THE REPRO! BACK UP ACCORDINGLY!!***
    Unzip and overwrite files with the command "sudo unzip -o -q CRTPi-RCA.zip"
    Return read/write permissions to those files with the command "sudo chmod a+rw -R /opt/retropie/configs/"
    Remove the zip with the command "sudo rm CRTPi-RCA.zip"
    Reboot the Pi with the command "sudo reboot" and wait for it to return to Emulationstation
    Drop to the command line or connect via SSH and input the command "sudo chmod a+x -R /opt/retropie/configs/all/*.sh"
    Launch back into ES with the command "emulationstation"
    Launch Retropie-Setup and choose "resetromdirs" from the Configurations menu

*VGA*

    Coming soon!
    
If you have any questions, comments, concerns, or issues -- please PM me or DM me on Reddit or post on one of the threads. Chances are, it's a "feature" not a "bug." :)
