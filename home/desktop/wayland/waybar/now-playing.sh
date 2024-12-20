#!/usr/bin/env bash
# Can parse 'max_length=SOME_INTEGER' as argument 
# (example: ./now-playing max_lentgh=40)

default_max_length=25

trim_info() {
    local info="$1"
    local max_length="$2"

    if [ ${#info} -gt $max_length ]; then
        local trim_length=$((max_length - 1))
        info="${info:0:$trim_length}…"
    fi

    echo "$info"
}

if [[ $1 =~ max_length=([0-9]+) ]]; then
    max_length="${BASH_REMATCH[1]}"
else
    max_length=$default_max_length
fi

spotify_status=$(playerctl --player=spotify status 2>/dev/null)

if [ "$spotify_status" == "Playing" ]; then
    info=$(playerctl metadata --player=spotify --format '  {{title}} • {{artist}}')
else
    musik_status=$(playerctl --player=musikcube status 2>/dev/null)

    if [ "$musik_status" == "Playing" ]; then
        info=$(playerctl metadata --player=musikcube --format '  {{title}} • {{artist}}')
    fi
fi

trimmed_info=$(trim_info "$info" "$max_length")
echo "$trimmed_info"
