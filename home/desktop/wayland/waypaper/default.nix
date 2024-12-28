{ pkgs, lib, ... }:

{

home.file.".config/waypaper/config.ini".text = ''
[Settings]
language = en
folder = ~/.nix/images/Background
monitors = All
wallpaper = 
backend = swww
fill = fill
sort = name
color = #000000
subfolders = False
show_hidden = True
show_gifs_only = False
show_transition_options = True
post_command = ~/.nix/scripts/background/waypaper.sh $wallpaper
number_of_columns = 3
swww_transition_type = grow
swww_transition_step = 90
swww_transition_angle = 30
swww_transition_duration = 2
swwww_transition_fps = 60
use_xdg_state = False
swww_transition_fps = 60
'';

}
