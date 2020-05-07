if [[ "$1" = @("atarilynx"|"gamegear"|"gb"|"gba"|"gbc"|"ngp"|"ngpc"|"wonderswan"|"wonderswancolor") ]]; then echo ${4/retroarch.cfg/retroarch_pixelperfect.cfg} > /tmp/run.sh; else echo ${4/retroarch.cfg/retroarch_crt.cfg} > /tmp/run.sh; fi > /dev/null
bash /tmp/run.sh
exit 1