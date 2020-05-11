cp /opt/retropie/configs/arcade/retroarch_hdmi.cfg /opt/retropie/configs/arcade/retroarch.cfg > /dev/null
cp /opt/retropie/configs/atari800/retroarch_hdmi.cfg /opt/retropie/configs/atari800/retroarch.cfg > /dev/null
cp /opt/retropie/configs/atari2600/retroarch_hdmi.cfg /opt/retropie/configs/atari2600/retroarch.cfg > /dev/null
cp /opt/retropie/configs/atari5200/retroarch_hdmi.cfg /opt/retropie/configs/atari5200/retroarch.cfg > /dev/null
cp /opt/retropie/configs/atari7800/retroarch_hdmi.cfg /opt/retropie/configs/atari7800/retroarch.cfg > /dev/null
default=`cat /opt/retropie/configs/atarilynx/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/atarilynx/retroarch_720_border.cfg /opt/retropie/configs/atarilynx/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/atarilynx/retroarch_1080_border.cfg /opt/retropie/configs/atarilynx/retroarch.cfg; else cp /opt/retropie/configs/atarilynx/retroarch_hdmi.cfg /opt/retropie/configs/atarilynx/retroarch.cfg; fi > /dev/null
cp /opt/retropie/configs/coleco/retroarch_hdmi.cfg /opt/retropie/configs/coleco/retroarch.cfg > /dev/null
cp /opt/retropie/configs/fds/retroarch_hdmi.cfg /opt/retropie/configs/fds/retroarch.cfg > /dev/null
default=`cat /opt/retropie/configs/gamegear/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/gamegear/retroarch_720_border.cfg /opt/retropie/configs/gamegear/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/gamegear/retroarch_1080_border.cfg /opt/retropie/configs/gamegear/retroarch.cfg; else cp /opt/retropie/configs/gamegear/retroarch_hdmi.cfg /opt/retropie/configs/gamegear/retroarch.cfg; fi > /dev/null
default=`cat /opt/retropie/configs/gb/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/gb/retroarch_720_border.cfg /opt/retropie/configs/gb/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/gb/retroarch_1080_border.cfg /opt/retropie/configs/gb/retroarch.cfg; else cp /opt/retropie/configs/gb/retroarch_hdmi.cfg /opt/retropie/configs/gb/retroarch.cfg; fi > /dev/null
default=`cat /opt/retropie/configs/gba/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/gba/retroarch_720_border.cfg /opt/retropie/configs/gba/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/gba/retroarch_1080_border.cfg /opt/retropie/configs/gba/retroarch.cfg; else cp /opt/retropie/configs/gba/retroarch_hdmi.cfg /opt/retropie/configs/gba/retroarch.cfg; fi > /dev/null
default=`cat /opt/retropie/configs/gbc/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/gbc/retroarch_720_border.cfg /opt/retropie/configs/gbc/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/gbc/retroarch_1080_border.cfg /opt/retropie/configs/gbc/retroarch.cfg; else cp /opt/retropie/configs/gbc/retroarch_hdmi.cfg /opt/retropie/configs/gbc/retroarch.cfg; fi > /dev/null
cp /opt/retropie/configs/intellivision/retroarch_hdmi.cfg /opt/retropie/configs/intellivision/retroarch.cfg > /dev/null
cp /opt/retropie/configs/mastersystem/retroarch_hdmi.cfg /opt/retropie/configs/mastersystem/retroarch.cfg > /dev/null
cp /opt/retropie/configs/megadrive/retroarch_hdmi.cfg /opt/retropie/configs/megadrive/retroarch.cfg > /dev/null
cp /opt/retropie/configs/msx/retroarch_hdmi.cfg /opt/retropie/configs/msx/retroarch.cfg > /dev/null
cp /opt/retropie/configs/n64/retroarch_hdmi.cfg /opt/retropie/configs/n64/retroarch.cfg > /dev/null
cp /opt/retropie/configs/neogeo/retroarch_hdmi.cfg /opt/retropie/configs/neogeo/retroarch.cfg > /dev/null
cp /opt/retropie/configs/nes/retroarch_hdmi.cfg /opt/retropie/configs/nes/retroarch.cfg > /dev/null
default=`cat /opt/retropie/configs/ngp/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/ngp/retroarch_720_border.cfg /opt/retropie/configs/ngp/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/ngp/retroarch_1080_border.cfg /opt/retropie/configs/ngp/retroarch.cfg; else cp /opt/retropie/configs/ngp/retroarch_hdmi.cfg /opt/retropie/configs/ngp/retroarch.cfg; fi > /dev/null
default=`cat /opt/retropie/configs/ngpc/default`; if [[ "$default" = "border" ]] && tvservice -s | grep "720"; then cp /opt/retropie/configs/ngpc/retroarch_720_border.cfg /opt/retropie/configs/ngpc/retroarch.cfg; elif [[ "$default" = "border" ]] && tvservice -s | grep "1080"; then cp /opt/retropie/configs/ngpc/retroarch_1080_border.cfg /opt/retropie/configs/ngpc/retroarch.cfg; else cp /opt/retropie/configs/ngpc/retroarch_hdmi.cfg /opt/retropie/configs/ngpc/retroarch.cfg; fi > /dev/null
cp /opt/retropie/configs/pc/retroarch_hdmi.cfg /opt/retropie/configs/pc/retroarch.cfg > /dev/null
cp /opt/retropie/configs/pc98/retroarch_hdmi.cfg /opt/retropie/configs/pc98/retroarch.cfg > /dev/null
cp /opt/retropie/configs/pce-cd/retroarch_hdmi.cfg /opt/retropie/configs/pce-cd/retroarch.cfg > /dev/null
cp /opt/retropie/configs/pcengine/retroarch_hdmi.cfg /opt/retropie/configs/pcengine/retroarch.cfg > /dev/null
cp /opt/retropie/configs/ports/cavestory/retroarch_hdmi.cfg /opt/retropie/configs/ports/cavestory/retroarch.cfg > /dev/null
cp /opt/retropie/configs/ports/doom/retroarch_hdmi.cfg /opt/retropie/configs/ports/doom/retroarch.cfg > /dev/null
cp /opt/retropie/configs/ports/quake/retroarch_hdmi.cfg /opt/retropie/configs/ports/quake/retroarch.cfg > /dev/null
cp /opt/retropie/configs/psx/retroarch_hdmi.cfg /opt/retropie/configs/psx/retroarch.cfg > /dev/null
cp /opt/retropie/configs/sega32x/retroarch_hdmi.cfg /opt/retropie/configs/sega32x/retroarch.cfg > /dev/null
cp /opt/retropie/configs/segacd/retroarch_hdmi.cfg /opt/retropie/configs/segacd/retroarch.cfg > /dev/null
cp /opt/retropie/configs/sg-1000/retroarch_hdmi.cfg /opt/retropie/configs/sg-1000/retroarch.cfg > /dev/null
cp /opt/retropie/configs/snes/retroarch_hdmi.cfg /opt/retropie/configs/snes/retroarch.cfg > /dev/null
cp /opt/retropie/configs/wonderswan/retroarch_hdmi.cfg /opt/retropie/configs/wonderswan/retroarch.cfg > /dev/null
cp /opt/retropie/configs/wonderswancolor/retroarch_hdmi.cfg /opt/retropie/configs/wonderswancolor/retroarch.cfg > /dev/null
cp /opt/retropie/configs/zxspectrum/retroarch_hdmi.cfg /opt/retropie/configs/zxspectrum/retroarch.cfg > /dev/null
exit 1