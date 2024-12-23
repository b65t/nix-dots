{ pkgs, lib, ... }:

{
  programs.kitty = {
    enable = true;
     font = {
      name = "Hack Nerd Font";
      size = 12;
    };
     settings = {
      scrollback_lines = "10000";

      window_padding_width = "5";


     include= "/home/islam/.cache/wal/colors-kitty.conf";
     background_opacity = "0.6";
    };
  };
}
