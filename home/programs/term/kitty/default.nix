{ pkgs, lib, ... }:

{
  programs.kitty = {
    enable = true;
     font = {
      name = "Hack Nerd Font";
      size = 12;
    };
     settings = {
      background_opacity = "0.6";
      scrollback_lines = "10000";

      window_padding_width = "5";

      foreground = "#c6d0f5";
      background = "#232634";

      color0 = "#45475A";
      color1 = "#e78284";
      color2 = "#a6d189";
      color3 = "#ef9f76";
      color4 = "#8caaee";
      color5 = "#babbf1";
      color6 = "#81c8be";
      color7 = "#9DA9A0";
      color8 = "#727169";
      color9 = "#e78284";
      color10 = "#a6d189";
      color11 = "#ef9f76";
      color12 = "#8caaee";
      color13 = "#babbf1";
      color14 = "#81c8be";
      color15 = "#9Da9a0";
    };
  };
}
