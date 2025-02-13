autoload -Uz compinit promptinit
compinit
promptinit

export LS_COLORS="di=34:ln=36:so=37:pi=37:ex=32:bd=37:cd=37:su=37:sg=37:tw=37:ow=37" # https://geoff.greer.fm/lscolors/
export EDITOR=nvim
export NNN_FCOLORS='00000c0a00000e0000000000'

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 'ma=46;30'
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' completer _expand _complete _ignored _approximate

HISTFILE="$HOME/.zsh_history"
HISTSIZE=65536
SAVEHIST=65536

bindkey '^[[3~' delete-char
bindkey '^H' backward-delete-word
bindkey '^[[3;5~' delete-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

PROMPT='%F{magenta}%2~%f %B%F{cyan}%#%f%b '

alias 'v'='nvim'
alias 'c'='clear'
alias 'g'='grep -i --color'
alias 'G'='grep --color'
alias 'H'='rm ~/.zsh_history'
alias 'n'='nnn -e'
alias 'N'='nnn -Hde'
alias 'ls'='ls --color=auto'
alias 'la'='ls --color=auto -la'
alias 'i'='sudo xbps-install -S'
alias 'u'='sudo xbps-install -Suy'
alias 'r'='sudo xbps-remove -R'
alias 'q'='xbps-query -Rs'
