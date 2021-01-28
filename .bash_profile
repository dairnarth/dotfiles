#
# ~/.bash_profile
#
export PATH="$HOME/.scripts:$PATH"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export ALTBROWSER="lynx"

[[ -f ~/.bashrc ]] && . ~/.bashrc

echo -e $'                                                                              '
echo -e $'\e[0;36m                    ▄                                                         ' 
echo -e $'\e[0;36m                   ▟█▙         \e[1;31m....             \e[35m...                           '
echo -e $'\e[0;36m                  ▟███▙    \e[1;31m.xH888888Hx.      \e[35mxH88"`~ .x8X         \e[34m.xHL        '
echo -e $'\e[0;36m                 ▟█████▙ \e[1;31m.H8888888888888:  \e[35m:8888   .f"8888Hf   \e[34m.-`8888hxxx~   '
echo -e $'\e[0;36m                ▟███████▙\e[1;31m888*"""?""*88888X\e[35m:8888>  X8L  ^""` \e[34m.H8X  `%888*"     '
echo -e $'\e[0;36m               ▂▔▀▜█████\e[1;31;46m\'\e[49mf     d8x.   ^%88X\e[35m8888  X888h      \e[34m888X     ..x..    '
echo -e $'\e[0;36m              ▟██▅▂▝▜███\e[1;31;46m\'>\e[0;36;49m▙   \e[1;31m<88888X   \'88\e[35m8888  !88888.   \e[34m\'8888k .x8888888x  '
echo -e $'\e[0;36m             ▟███████████\e[1;31;46m`:\e[49m..:`888888>    8>\e[35m888   %88888    \e[34m?8888X    "88888X '
echo -e $'\e[0;36m            ▟███████████████▙   \e[1;31m`"*88     X\e[35m8888 \'> `8888>    \e[34m?8888X    \'88888>'
echo -e $'\e[0;36m           ▟███████████████\e[1;31;46m.x\e[49mHHhx.."      !\e[35m8888L %  ?888  \e[34mH\e[35m!\e[34mH %8888     `8888>'
echo -e $'\e[0;36m          ▟███████████████\e[1;31;46mX888\e[49m88888hx. ..! \e[35m`8888  `-*""  \e[34m\'\e[35m/\e[34m88> 888"      8888 '
echo -e $'\e[0;36m         ▟█████████▛▀▀▜██\e[1;31;46m!\e[0;36m███\e[1;31;46m"*\e[49m888888888"    \e[35m"888.      :"\e[34m"8` .8" ..     88*  '
echo -e $'\e[0;36m        ▟████████▛      ▜███████\e[1;31m^"***"`        \e[35m`""***~"`     \e[34m`  x8888h. d*"   '
echo -e $'\e[0;36m       ▟█████████        ████████▙\e[0m_________________________.-. \e[1;34m!""*888%~      '
if [ $(cat /sys/class/power_supply/BAT0/capacity) ==  100 ]
then
    echo -e $"\e[0;36m      ▟██████████        █████\e[40m▆▅▄▃▂\e[1;4;37m      $(date +%y%m%d) $(date +%H%M%S) $(cat /sys/class/power_supply/BAT0/capacity) \e[5;21;24;32;49m ※ \e[0m)\e[1;34m!   \`\"  .      "
elif [ $(cat /sys/class/power_supply/BAT0/capacity) <= 20 ]; then
	echo -e $"\e[0;36m      ▟██████████        █████\e[40m▆▅▄▃▂\e[1;4;37m      $(date +%y%m%d) $(date +%H%M%S) 0$(cat /sys/class/power_supply/BAT0/capacity) \e[5;21;24;31;49m ※ \e[0m)\e[1;34m!   \`\"  .      "
else
    echo -e $"\e[0;36m      ▟██████████        █████\e[40m▆▅▄▃▂\e[1;4;37m      $(date +%y%m%d) $(date +%H%M%S) 0$(cat /sys/class/power_supply/BAT0/capacity) \e[5;21;24;33;49m ※ \e[0m)\e[1;34m!   \`\"  .      "
fi 2>/dev/null
echo -e $'\e[0;36m     ▟██████████▛        ▜█████████▙                       \e[37m`-^ \e[1;34m\'-....:~       '
echo -e $'\e[0;36m    ▟██████▀▀▀              ▀▀██████▙                                         '
echo -e $'\e[0;36m   ▟███▀▘                       ▝▀███▙                                        '
echo -e $'\e[0;36m  ▟▛▀                               ▀▜▙                                       '
echo -e $'\e[0m                                                                             '

neofetch

sleep 0.3

if [ "$(tty)" == "/dev/tty1" ]; then
    exec startx
fi

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0282828"   # black
    echo -en "\e]P1cc241d"   # dark red
    echo -en "\e]P298971a"   # dark green
    echo -en "\e]P3d79921"   # dark yellow
    echo -en "\e]P4458588"   # dark blue
    echo -en "\e]P5b16286"   # dark magenta
    echo -en "\e]P6689d6a"   # dark cyan
    echo -en "\e]P7a89984"   # light grey
    echo -en "\e]P8928374"   # dark grey
    echo -en "\e]P9fb4934"   # light red
    echo -en "\e]PAb8bb26"   # light green 
    echo -en "\e]PBfabd2f"   # light yellow
    echo -en "\e]PC83a598"   # light blue
    echo -en "\e]PDd3869b"   # light magenta
    echo -en "\e]PE8ec07c"   # light cyan
    echo -en "\e]PFebdbb2"   # white
    clear
fi
