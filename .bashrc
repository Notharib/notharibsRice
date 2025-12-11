# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \w]\$ '

export PATH="$HOME/.local/bin:$PATH"

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
eval "$(thefuck --alias fuck)"

fastfetch

alias py='python3'
alias icat='kitten icat'
alias la='ls -a'
alias clr='clear && fastfetch'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias intest='ping archlinux.org'
alias infix='echo -e "nameserver 1.1.1.1\nnameserver 8.8.8.8" | sudo tee /etc/resolv.conf'
alias job='sudo poweroff'
alias rb='sudo reboot'
alias perc='upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage'
alias folderClr='py ~/scripts/clearFolder.py'
alias kernClr='sudo vkpurge rm all'
alias vpy='./.venv/bin/python'
alias cock='tty-clock -sc'
alias bma='blueman-applet &'
alias bm='blueman-manager'

export PATH=$PATH:/home/notharib/.spicetify
export PATH=$PATH:/var/lib/flatpak/exports/bin


if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi


[ -f "/home/notharib/.ghcup/env" ] && . "/home/notharib/.ghcup/env" # ghcup-env
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
