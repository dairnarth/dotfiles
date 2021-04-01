#
# ~/.bash_profile
#
export PATH="$HOME/.scripts:$PATH"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export ALTBROWSER="lynx"

[[ -f ~/.bashrc ]] && . ~/.bashrc

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

[[ -e $HOME/.scripts/dfetch ]] && . $HOME/.scripts/dfetch

[[ -e $HOME/.scripts/init/preX ]] && . $HOME/.scripts/init/preX
