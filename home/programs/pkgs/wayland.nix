 { config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [

 swww
 wofi
 waybar
 hyprland
 grim
 wlogout
 waypaper
 swaynotificationcenter
 wl-clipboard
 slurp
 hyprpicker
 hyprlock
 hypridle
 hyprsunset
 swaylock

];

}
