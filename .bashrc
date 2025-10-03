#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '

# Adding .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"


# Things to run when opening a shell
export GPG_TTY=$(tty)
fastfetch -l arch3 && systemd-analyze
eval "$(thefuck --alias)"

# Pywal support
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

# Useful aliases
alias job='shutdown now'
alias sercl='git add ./client && git add ./server'
alias clr='clear && fastfetch -l arch3 && systemd-analyze'
alias rb='reboot'
alias pyhton='python'
alias spl='cd Spellcasters-Tourney && clear && onefetch'
alias la='ls -a'
alias py='python'
alias help-pls='./Downloads/LM-Studio-0.3.27-4-x64.AppImage'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias app.py='python app.py'
alias client.py='python client.py'
alias server.py='python server.py'
alias intest='ping archlinux.org'
alias icat='kitten icat'
alias pacSearch='(yay -F -l && pacman -F -l) | fzf'
