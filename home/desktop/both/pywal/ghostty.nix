{ pkgs, lib, ... }:

{
home.file.".config/wal/templates/colors-ghostty".text = ''
background = {background}
foreground = {foreground}
cursor-color = {cursor}
selection-background = {color8}
selection-foreground = {foreground}
palette = 0={color0}
palette = 1={color1}
palette = 2={color2}
palette = 3={color3}
palette = 4={color4}
palette = 5={color5}
palette = 6={color6}
palette = 7={color7}
palette = 8={color8}
palette = 9={color9}
palette = 10={color10}
palette = 11={color11}
palette = 12={color12}
palette = 13={color13}
palette = 14={color14}
palette = 15={color15}
'';
}
