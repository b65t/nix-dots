WALLPAPER_DIR=/home/islam/.nix/Background/
CHOICE=$(ls "$WALLPAPER_DIR" -1 | rofi -dmenu -p "Wallpaper")
WALLPAPER="$WALLPAPER_DIR/$CHOICE"

if [[ -z $CHOICE ]]; then
  echo "no wallpaper selected"
  exit
fi

~/.nix/home/desktop/wayland/hyprland/swww.sh "$WALLPAPER"
wal -n -i "$WALLPAPER"
$HOME/.cache/wal/colors.sh

pkill waybar
waybar &

