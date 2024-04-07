bindkey -e

# Enable colors and change prompt:
autoload -U colors zsh/terminfo && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b"
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments
setopt HIST_IGNORE_SPACE

## aliases
alias ls='ls -p --color=auto'
alias ll='ls -l'
alias la='ls -al'
alias grep='grep --color=auto'
alias lsofpg='sudo lsof -P -i -n | grep LISTEN'
alias emacs="emacsclient -c -a 'emacs'"
# git 
alias gis="git status"
alias gia="git add"
alias gic="git commit -v"
alias gid="git diff"
alias gil="git log -p"
alias gip="git push"
# Various
alias p="python"
alias se="sudoedit"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
# Completion.
zmodload zsh/complist 
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' completer _expand_alias _complete _ignored _approximate
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'
#- buggy
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
#-/buggy

zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always
_comp_options+=(globdots)		# Include hidden files.
setopt COMPLETE_ALIASES
zstyle ':completion:*' rehash true
# git support
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_

# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

HISTFILE="${XDG_STATE_HOME:-$HOME}"/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000
export HISTTIMEFORMAT="[%F %T] "
setopt HIST_FIND_NO_DUPS
# setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_SPACE

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
