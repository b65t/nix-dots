{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [

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
 vim
 w3m
 imagemagick
 neovim

];

}
