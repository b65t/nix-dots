{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [

file-roller
nemo
mpv
gh
imv
wf-recorder
networkmanagerapplet
gpu-screen-recorder
gpu-screen-recorder-gtk

];

}
