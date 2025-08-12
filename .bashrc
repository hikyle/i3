#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

POSH=agnoster

alias c='clear'
alias ff='fastfetch'
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias grep='grep --color=always'
alias cleanup='sudo pacman -Rns $(pacman -Qdtq)'
alias cat='bat'
alias nano='micro'
alias updatemirrors='sudo reflector --sort rate --country US --latest 10 --protocol https --save /etc/pacman.d/mirrorlist'
alias m='micro'
alias n='micro'

if [[ $(tty) == *"pts"* ]]; then
	fastfetch
fi

eval "$(oh-my-posh init bash --config robbyrussell)"
