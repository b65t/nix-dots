#!/usr/bin/env bash

spotify_status=$(playerctl --player=spotify status 2>/dev/null)

if [ "$spotify_status" == "Playing" ]; then
    playerctl --player=spotify previous
else
    playerctl --player=musikcube previous
fi