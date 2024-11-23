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
 dunst
 rofi-wayland
 # file
 xfce.thunar
 file-roller
 # gaming
 lutris
 # term
 unzip
 fastfetch
 neofetch
 tree
 parted
 yazi
 #neovim
 vim
 alacritty
 # wayland
 swww
 wofi
 waybar
 hyprland
 grim
 wlogout
 # x11
 feh
 scrot
 xborders
 nitrogen
 i3-gaps
 dmenu
 picom
 # apps
 obs-studio
 mpv
 freetube
 librewolf
 vesktop
 spotify
 discord
 amberol
 gapless
 easytag
 firefox
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
];

}
