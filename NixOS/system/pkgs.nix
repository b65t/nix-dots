{ config, lib, pkgs, ... }:

{

  nixpkgs.config = {
    allowUnfree = true;
  };

   environment.systemPackages = with pkgs; [

   fish
   python3
   pavucontrol

   ];

}
