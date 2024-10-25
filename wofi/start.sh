#!/usr/bin/env bash

CONFIG="$HOME/dotfiles/wofi/config"
STYLE="$HOME/dotfiles/wofi/style.css"

if [[ ! $(pidof wofi) ]]; then
    wofi --conf "${CONFIG}" --style "${STYLE}"
else
    pkill wofi
fi