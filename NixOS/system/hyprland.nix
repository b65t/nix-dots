{ config, lib, pkgs, ... }:	

{


programs.hyprland = {
  enable = true;
  xwayland.enable = true;
};

xdg.portal.enable = true;

}
