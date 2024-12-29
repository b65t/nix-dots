{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [
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
