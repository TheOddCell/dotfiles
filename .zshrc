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
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white'

# caterm - downloaded from repo TheOddCell/caterm
source /usr/share/caterm/caterm.zsh
