#!/bin/zsh
# profile file. Runs on login. Environmental variables are set here.
unsetopt PROMPT_SP
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export GPG_TTY=$(tty)

export INFOPATH="/usr/share/info:$INFOPATH"
# Default programs:
export EDITOR="emacs"
export TERMINAL="alacritty"
export BROWSER="firefox"
export DMENU="dmenu"
# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
#export ALSA_CONFIG_PATH="$XDG_CONFIG_HOME/alsa/asoundrc"
#export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export UNISON="${XDG_DATA_HOME:-$HOME/.local/share}/unison"

export ANDROID_HOME="$XDG_DATA_HOME"/android
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export PSQL_HISTORY="$XDG_DATA_HOME/psql_history"
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export DISTCC_DIR="$HOME/.config/distcc"
export GEM_HOME="$HOME/.cache/gem"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"

# My scripts
export PATH="$HOME/.local/bin:$PATH"
# Ruby
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
# Golang
export PATH="$GOPATH/bin:$PATH"
# Rust
export PATH="$CARGO_HOME/bin:$PATH"
# Flutter
export PATH="/flutter/bin/:$PATH"

if [ -z "${SSH_AGENT_PID}" ];
then
    eval $(ssh-agent)
fi

