{ config, lib, pkgs, ... }:

{

nixpkgs = {
  config = {
    allowUnfree = true;
  };
 };

home.packages = with pkgs;  [

 obs-studio
 freetube
 amberol
 gapless
 easytag
 cavalier
 obsidian

];

}
