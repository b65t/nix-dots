{ pkgs, lib, ... }:

{
services.dunst = {
    enable = true;
     settings = {
      global = {
      rounded = "yes";
      origin = "top-center";
      width = "400";
      height = "200";
      progress_bar = true;
      padding = "10";
      corner_radius = "10";
   };
        urgency_critical = {
        background = "#232634";
        foreground = "#e78284";
	frame_color = "#292c3c";
      };
        urgency_low = {
        background = "#232634";
        foreground = "#c6d0f5";
	frame_color = "#292c3c";
      };
        urgency_normal = {
        background = "#232634";
        foreground = "#c6d0f5";
	frame_color = "#292c3c";
      };
  };
 };
}
