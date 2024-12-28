{ pkgs, lib, inputs, ... }:

{

home.packages = [
inputs.ghostty.packages."${pkgs.system}".default
]; 

home.file.".config/ghostty/config".text = ''
config-file = /home/islam/.cache/wal/colors-ghostty

font-family = Hack Nerd Font
font-size = 12
font-style = Bold

background-opacity = 0.6
window-padding-x = 5
window-padding-y = 5

clipboard-read = allow
clipboard-write = allow
clipboard-trim-trailing-spaces = true
clipboard-paste-protection = false
copy-on-select = false

gtk-titlebar = false

cursor-style = underline
cursor-style-blink = true
cursor-click-to-move = true
mouse-hide-while-typing = true

scrollback-limit = 100000
'';

}
