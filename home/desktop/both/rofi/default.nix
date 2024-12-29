{ pkgs, lib, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "/home/islam/.nix/home/desktop/both/rofi/theme.rasi";
    extraConfig = {
        modi = "drun,filebrowser,run";
        drun-display-format = "{icon} {name}";
        display-drun = " apps";
        display-run = " Run";
        display-filebrowser = " File";
      };
  };
}
