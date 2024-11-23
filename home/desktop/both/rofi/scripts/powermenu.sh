#! /bin/sh

chosen=$(printf "\n\n\n" | rofi -dmenu -i -theme-str '@import "~/.nix/home/desktop/both/rofi/powermenu.rasi"')

case "$chosen" in
	"") i3lock ;;
	"") qtile cmd-obj -o cmd -f shutdown ;;
	"") reboot ;;
	"") shutdown now ;;
	*) exit 1 ;;
esac
