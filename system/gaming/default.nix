{ config, lib, pkgs, ... }:

{

hardware.graphics = {
enable = true;
};

 programs.steam.enable = true;
 programs.steam.gamescopeSession.enable = true;

}
