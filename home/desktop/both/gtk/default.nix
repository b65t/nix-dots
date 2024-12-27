{ pkgs, lib, inputs, ... }:

{
gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
    };
    theme = {
      name = "catppuccin-mocha-blue-standard+default";
    };
    cursorTheme = {
      name = "Furina 2.0";
    };
      gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
 };
}