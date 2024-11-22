{ config, lib, pkgs, ... }:

{

   users.users.islam = {
     isNormalUser = true;
     initialPassword = "05042120";
     extraGroups = [ "wheel" "networkmanager" ];
     shell = pkgs.fish;
  #   packages = with pkgs; [
  #   ];
   };

}
