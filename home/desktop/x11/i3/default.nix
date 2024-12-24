{ pkgs, lib, ... }:

let
  modifier = "Mod4";
  theme = import ../theme;

   colors = {
    bg0 = "#1e2326";
    bg1 = "#272e33";
    bg2 = "#2e383c";
    fg0 = "#d3c6aa";
    primary = "#a7c080";
    alert = "#e67e80";
    disabled = "#2e383c";


  };


  in {

 services.flameshot = {
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
        showStartupLaunchMessage = false;
        showHelp = false;
        showSidePanelButton = false;
      };
    };
  };



 xsession.windowManager.i3 = {
    enable = true;
     package = pkgs.i3-gaps;
      config = {
      defaultWorkspace = "workspace number 1";
      floating.modifier = "Mod4";

        #  window = {
        #  border  = 2;
        #  hideEdgeBorders = "both";
        # };
      
        gaps = {
          inner = 10;
          outer = 5;
        };

           colors = {
        focused = {
          border      = "#C0C0C0";
          background  = "#C0C0C0";
          text        = "#ffffff";
          indicator   = "undefined";
          childBorder = "undefined";
        };
        focusedInactive = {
         border      = "#C0C0C0";
         background  = "#C0C0C0";
         text        = "#ffffff";
         indicator   = "undefined";
         childBorder = "undefined";
        };
        unfocused = {
          border      = "#C0C0C0";
          background  = "#C0C0C0";
          text        = "#ffffff";
          indicator   = "undefined";
          childBorder = "undefined";
        };
      };
 
      
        keybindings = {
        "${modifier}+Return" = "exec ${pkgs.kitty}/bin/kitty";
        "${modifier}+d" = "exec ${pkgs.rofi}/bin/rofi -show drun";
        "${modifier}+shift+s" = "exec ${pkgs.flameshot}/bin/flameshot gui -c";
	"Print" = "exec ${pkgs.scrot}/bin/scrot -d 5 '%Y-%m-%d-%T-screenshot.png' -e 'mv $f ~/Pictures/'";
        "${modifier}+down" = "focus down";
        "${modifier}+up" = "focus up";
        "${modifier}+left" = "focus left";
        "${modifier}+right" = "focus right";
        "${modifier}+shift+q" = "kill";
        "${modifier}+f" = "fullscreen toggle";
         
        "${modifier}+Ctrl+Left" = "resize shrink width 16px or 1ppt";
        "${modifier}+Ctrl+Right" = "resize grow width 16px or 1ppt";
        "${modifier}+Ctrl+Up" = "resize grow height 16px or 1ppt";
        "${modifier}+Ctrl+Down" = "resize shrink height 16px or 1ppt";
         
        "${modifier}+1" = "workspace 1";
        "${modifier}+2" = "workspace 2";
        "${modifier}+3" = "workspace 3";
        "${modifier}+4" = "workspace 4";
        "${modifier}+5" = "workspace 5";
        "${modifier}+6" = "workspace 6";
        "${modifier}+7" = "workspace 7";
        "${modifier}+8" = "workspace 8";
        "${modifier}+9" = "workspace 9";

	"${modifier}+shift+1" = "move container to workspace 1";
	"${modifier}+shift+2" = "move container to workspace 2";
	"${modifier}+shift+3" = "move container to workspace 3";
	"${modifier}+shift+4" = "move container to workspace 4";
	"${modifier}+shift+5" = "move container to workspace 5";
	"${modifier}+shift+6" = "move container to workspace 6";
	"${modifier}+shift+7" = "move container to workspace 7";
        "${modifier}+shift+8" = "move container to workspace 8";
	"${modifier}+shift+9" = "move container to workspace 9";

	"${modifier}+Ctrl+f" = "floating toggle";
  



      };

      startup = [
           {
             command = "${pkgs.firefox}/bin/firefox";
            always = true;
            notification = false;
          }
           {
            command = "${pkgs.spotify}/bin/spotify";
            always = true;
            notification = false;
          }
           {
            command = "${pkgs.discord}/bin/discord";
            always = true;
            notification = false;
          }
           {
            command = "systemctl --user restart polybar.service";
            always = true;
            notification = false;
          }
           {
            command = "${pkgs.nitrogen}/bin/nitrogen --restore ";
            always = true;
            notification = false;
          }
           {
            command = "systemctl --user restart polybar &";
            always = true;
            notification = false;

          }
           {
            command = "${pkgs.picom}/bin/picom ";
            always = true;
            notification = false;
           }
           {
          command = "xborders --border-rgb '#7aa2f7' --border-radius 8 --border-width 2 ";
          always = true;
          notification = false;
         }

];

      bars = [];
      
           window.commands = [
        {
          command = "border pixel 0";
          criteria = { class = "^.*"; };
 }
];

   };
  };
 }
