#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
set -o vi

if [ "$EUID" -ne 0 ]; then

    PS1='\[\e[30;107m\] [\u@\h]: \[\e[0m\] \[\e[36m\]\w \n\[\e[30;107m\] $(/bin/date "+%y%m%d %H%M%S") \[\e[0m\] \$ '

else

    PS1='\[\e[30;101m\] [\u@\h]:\[\e[0m\] \[\e[36m\w\] \n\[\e[30m;101m\] $(/bin/date "+%y%m%d %H%M%S") \[\e[0m\] \[\e[31m\]\$ '

fi

[[ -f ~/.aliases ]] && . ~/.aliases
