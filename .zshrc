#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
# setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

alias psaux='ps aux|grep henenq'
alias gst='git status'
alias gcm='git commit -m'

alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

# key bindings
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
# bindkey "e[5~" beginning-of-history
# bindkey "e[6~" end-of-history
bindkey "\e[3~" delete-char
# bindkey "e[2~" quoted-insert
# bindkey "eOc" emacs-forward-word
# bindkey "eOd" emacs-backward-word
bindkey "^[[1;2C" forward-word
bindkey "^[[1;2D" backward-word
bindkey "^[[3;2~" backward-delete-word
# # completion in the middle of a line
# bindkey '^i' expand-or-complete-prefix
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


export PATH=$HOME/bin:/usr/local/bin$PATH
export PATH="$HOME/.cargo/bin:$PATH";
export PATH="$HOME/.local/bin:$PATH";
eval "$(starship init zsh)"
