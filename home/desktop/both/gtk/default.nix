{ pkgs, lib, inputs, ... }:

{
gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
    };
    theme = {
      name = "pywal";
    };
    cursorTheme = {
      name = "Frieren-Winter";
    };
      gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
 };
}
