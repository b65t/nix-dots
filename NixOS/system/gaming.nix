{ config, lib, pkgs, ... }:

{

hardware.opengl = {
enable = true;
};

 programs.steam.enable = true;
 programs.steam.gamescopeSession.enable = true;

}
