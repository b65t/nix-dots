{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [
# add user pkgs here
 # common
 rofi-wayland
 orchis-theme
 nwg-look
 gtk3
 eza
 # file
 file-roller
 nemo
 # gaming
 lutris
 # term
 unzip
 fastfetch
 neofetch
 nitch
 tree
 parted
 yazi
 btop
 #neovim
 vim
 alacritty
 w3m
 imagemagick
 neovim
 # wayland
 swww
 wofi
 waybar
 hyprland
 grim
 wlogout
 pywal16
 waypaper
 swaynotificationcenter
 wl-clipboard
 slurp
 hyprpicker
 hyprlock
 hypridle
 hyprsunset
 swaylock
 # apps
 obs-studio
 mpv
 freetube
 amberol
 gapless
 easytag
 gh
 # system
 autoconf
 automake
 libtool
 m4
 fftw
 pkgconf
 iniparser
 gnumake
 gvfs
 git
 playerctl
 libnotify
 wget
 gcc
];

}
