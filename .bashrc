#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Adds custom scripts to console
export PATH=${PATH}:~/.system_scripts/

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '

eval $(thefuck --alias fuck)

# Commands to run every time you open the terminal
fastfetch && systemd-analyze

# Powerline daemon
if ! pgrep -f -x "powerline-daemon" > /dev/null; then
   #  If not running, start powerline-daemon
    powerline-daemon -q
fi

#Powerline support
#if [ -f ~/.local/lib/python3.13/python3.13/site-packages/powerline/bindings/bash/powerline.sh ]; then
#    source .local/lib/python3.13/python3.13/site-packages/powerline/bindings/bash/powerline.sh
#fi

# Pywal support
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

#Useful aliases
alias help-pls='ollama run gemma3:1b'
alias job='shutdown now'
alias sercl='git add ./client && git add ./server'
alias clr='clear && fastfetch && systemd-analyze'
alias spl='cd Spellcasters-Tourney/'
alias tock='./tock/target/release/tock -c' 
alias rb='reboot'
alias pyhton='python'

# Created by `pipx` on 2025-06-21 20:23:26
export PATH="$PATH:/home/notharib/.local/bin"


export PATH=$PATH:/home/notharib/.spicetify
export PATH="$HOME/.local/bin:$PATH"
