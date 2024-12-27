{ pkgs, lib, ... }:

{
  services.picom = {
    enable = true;
    shadow = false;
    settings = {
      backend = "glx"; # Fixes black backdrop on some rounded corners
      corner-radius = 8;
      round-borders = 8;
      vsync = true;
      blur = {
        method = "gaussian";
        size = 10;
        deviation = 2;
      };
       blur-background-exclude = [
       "override_redirect = true"
       ];
       #Ignore polybar
      rounded-corners-exclude = [
        "window_type = 'dock'"
        "window_type = 'desktop'"
      ];
      shadow-exclude = [
        "class_g = 'i3-frame'"
        "override_redirect = true"
      ];
      opacity-rule = [
        "0:_NET_WM_STATE@:32a *= '_NET_WM_STATE_HIDDEN'"
      ];
    };
  };
}
