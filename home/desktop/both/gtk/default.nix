{ pkgs, lib, ... }:

{

gtk = {
   # enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    theme = {
      name = "catppuccin-Dark";
      variant = "mocha";
      accents = [ "blue" ];
      size = "standard";
      package =  pkgs.catppuccin-gtk;
    };
      gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
 };
}
