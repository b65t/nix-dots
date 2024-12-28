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
 nwg-look
 gtk3
 gtk4
 gtkmm3
 gtkmm4
 gtkmm2
 eza
 catppuccin-gtk
 papirus-icon-theme
 sassc
 gtk-engine-murrine
 gnome-themes-extra
 # file
 file-roller
 nemo
 # gaming
 #lutris
 # term
 unzip
 fastfetch
 neofetch
 nitch
 microfetch
 tree
 parted
 yazi
 btop
 calcurse
 #neovim
 vim
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
 imv
 wf-recorder
 networkmanagerapplet
 gpu-screen-recorder
 gpu-screen-recorder-gtk
 cavalier
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
