## generic
# history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# shell options
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt no_beep
setopt autocd
setopt extended_glob
setopt share_history

## prompts
# add colors
autoload -Uz colors && colors
# PROMPT: blue arrow
PROMPT='%F{blue}->%f '
# PS2: magenta arrow
PS2='%F{magenta}->%f '
# RPROMPT: current working dir
RPROMPT='%F{yellow}%~%f'


## plugins
# zsh-syntax-highlighting - downloaded from dnf
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#typeset -gA ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[command]='fg=white'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=white'

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init zsh)"

alias cd=z
alias pfetch='curl -s https://private.oddcell.ca/pfetch|sh'
alias usb0='arduino-cli monitor -p /dev/ttyUSB0 -c baudrate=9600'
alias basicOn0='clear; stty -echo && usb0'

#eval "$(lesspipe.sh)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
doubledd() {
  local iso="$1"
  local device="$2"
  sudo pv "$iso" | sudo dd bs=4M oflag=sync of="$device"
}
alias usrmount="udisksctl mount -b" usrumount="udisksctl unmount -b"
alias xtwm2="lcxterm"
#eval $(thefuck --alias)
source /etc/profile
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
if [[ -n $GUIX_ENVIRONMENT ]]; then
    if [[ $PS1 =~ '(.*)\$' ]]; then
        PS1="${match[1]} [env]\$ "
    fi
fi
eval "$(starship init zsh)"

if [ -e /home/odd/.nix-profile/etc/profile.d/nix.sh ]; then . /home/odd/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
alias sign="gpg --detach-sign"
alias rtsh="rt bash -c \"HOME=/home/odd;bash\""

