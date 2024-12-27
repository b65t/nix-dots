#!/usr/bin/env bash

wal -n -i "$1"
$HOME/.cache/wal/colors.sh

pkill waybar
waybar

pkill swaync
swaync
