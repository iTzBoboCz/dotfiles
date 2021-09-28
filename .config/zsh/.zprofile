#!/bin/zsh

# Runs on login.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

unsetopt PROMPT_SP

# Default programs:
export EDITOR="gedit"
export TERMINAL="gnome-terminal"
export BROWSER="firefox"
export READER="evince"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh" 
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

