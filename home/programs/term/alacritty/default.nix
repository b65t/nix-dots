{ pkgs, lib, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
    window = {
      decorations = "full";
      opacity = 0.9;
      padding = {
        x = 5;
        y = 5;
     };
    };
	          colors = {
           primary = {
	   background = "#293136";
	    foreground = "#d3c6aa";
		   };
            normal = {
              black = "#45475A";
              blue = "#7FBBB3";
              cyan = "#83C092";
              green = "#A7C080";
              magenta = "#D699B6";
              red = "#E67E80";
              white = "#9DA9A0";
              yellow = "#c0a36e";
            };
            bright = {
              black = "#727169";
              blue = "#7FBBB3";
              cyan = "#83C092";
              green = "#A7C080";
              magenta = "#D699B6";
              red = "#E67E80";
              white = "#9DA9A0";
              yellow = "#C0A36E";
            };
          };

	 font = {
        normal = {
          family = "Hack Nerd Font";
          style = "Regular";
        };
       };
      };
    };
}
