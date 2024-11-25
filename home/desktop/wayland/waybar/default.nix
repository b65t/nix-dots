{ pkgs, lib, ... }:

{

programs.waybar = {
    enable = true;
     settings = [
     {

       "layer" = "top";
       "position" = "top";
       "margin" = "0";
       "spacing" = "0";
       "ipc" = "true";
       "exclusive" = "true";
        modules-left = [
          "custom/logo"
	  "cpu"
	  "memory"
	  ];
	  modules-center = [
          "custom/spotify"
	  "hyprland/workspaces"
        ];
	  modules-right = [
        "tray"
        "network"
	"hyprland/language"
        "pulseaudio"
        "custom/audionetwork"
        "clock"
       ];
	  "hyprland/window" = {
        #  "max-length" = 25;
      #    "separate-outputs" = false;
        };

    "hyprland/workspaces" = {
        "disable-scroll" = false;
        "all-outputs" = true;
        "format" = "{icon}";
        "persistent-workspaces" = {
            "1" = [];
            "2" = [];
            "3" = [];
            "4" = [];
            "5" = [];
            "6" = [];
     };
        "format-icons" = {
	    "1" = "一";
	    "2" = "二";
	    "3" = "三";
	    "4" = "四";
	    "5" = "五";
	    "6" = "六";
	    "7" = "七";
	    "8" = "八";
	    "9" = "九";
         };
	};
	"tray" = {
#         "icon-size" = 21;
          "spacing" = 10;
        };

	"clock" = {
	"format" = "󰥔 {:%R}";
       };
       "network" = {
        "format-wifi" = "{icon}";
        "format-ethernet" = "{ipaddr}/{cidr} ";
        "format-linked" = "{ifname} (No IP) ";
        "format-disconnected" = "Disconnected 󰤭";
	        "format-icons" = [
            "󰤯" 
            "󰤟"
            "󰤢"
            "󰤥" 
            "󰤨"
        ];
      };
       "pulseaudio" = {
          "scroll-step" = 1;
          "format" = "{icon} {volume}%";
          "format-muted" = "󰖁 Muted";
          "format-icons" = {
            "default" = [ "" ];
          };
	   "tooltip" = false;
	   "on-click" = "pavucontrol";
	 };

     "hyprland/window" = {
       "format" = " {} ";
       "max-length" = 30;
       "separate-outputs" = true;
       "offscreen-css" = true;
       "offscreen-css-text" = "(inactive)";
      };

      "custom/spotify" = {
        "interval" = 1;
        "exec" = "~/.nix/home/desktop/wayland/waybar/now-playing.sh";
        "on-click" = "~/.nix/home/desktop/wayland/waybar/play-next.sh";
        "on-click-right" = "~/.nix/home/desktop/wayland/waybar/play-previous.sh";
        "escape" = true;
	"max-length" = 20;
    };
     "custom/logo" = {
      "format" = "❄️";
       "on-click" = "pkill rofi || ~/.nix/home/desktop/both/rofi/scripts/powermenu.sh";
          };

      "memory" = {
        "interval" = 1;
	"format" = " {percentage}%";
      };

      "cpu" = {
        "interval" = 1;
	"format" = " {usage}%";
      };
      "cava" = {
        "hide_on_silence" = false;
        "framerate" = 60;
        "bars" = 10;
        "format-icons" = ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█"];
        "input_delay" = 1;
        # "noise_reduction" = 0.77;
        "sleep_timer" = 5;
        "bar_delimiter" = 0;
            };
     }
   ];

    style = ''
  @import '../../.cache/wal/colors-waybar.css';
 * {
    font-family:"JetBrainsMono nerd font"; 
    font-size: 14px;
}

window#waybar {
    background-color: rgba(35, 35, 35, 0.0);
    transition-duration: .5s;
   /* border: 2px solid #303446; */
    border-radius: 0px;
;
}

 #workspaces {
   padding-right: 4px;
   padding-left: 4px;
   margin-right: 4px;
   margin-bottom: 4px;
   margin-top: 4px;
   font-weight: Bold;
   border-radius: 10px;
   background: @background;
   border: 0px;
}

 #workspaces button {
    padding: 0px 1px;
    color: @color1;
    border-radius: 10px;
    background-color: @color1;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-right: 3px;
    margin-left: 3px;
    font-size: 1px;
    border: 0px;
    min-height: 2px;
} 

 #workspaces button.urgent {
    color: #E67E80;
}

 #workspaces button.active {
    color: @color1;
    background-color: @color1;
    border-radius: 12px;
    padding-left: 10px;
    padding-right: 10px;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-left: 3px;
    margin-right: 3px;
    /*min-width: 20px;*/
    min-height: 2px;
    font-size: 1px;
    border: 0px;
} 

#workspaces button:hover {
   background-color: #E6B9C6;
   color: black;
   border-radius: 16px;
}

#clock,
#cpu,
#memory,
#network,
#pulseaudio,
#language,
#custom-power,
#custom-spotify,
#custom-logo {
    padding: 0 10px;
    padding-top: 3px;
    padding-bottom: 3px;
    background: @background;
    color: @foreground;
}

#clock {
   /* background-color: #292c3c; */
    border-radius: 0px 10px 10px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
    margin-right: 4px;
    font-weight: bold;
}

#cpu {
    font-weight: bold;
    border-radius: 0;
    margin-top: 4px;
    margin-bottom: 4px;
}

#memory {
    font-weight: bold;
    border-radius: 0px 10px 10px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
}

#network {
	 /* background-color: #292c3c; */
	  border-radius: 10px 0px 0px 10px;
          margin-top: 4px;
          margin-bottom: 4px;
} 

 #network.disconnected {
   /* background-color: #f53c3c; */
} 

#pulseaudio {
   /* background-color: #292c3c; */
    border-radius: 0px 0px 0px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
    font-weight: bold;
}

#pulseaudio.muted {
    color: #24273a;
}

#tray {
  /* background-color: #292c3c; */
   border-radius: 10px;
   margin-bottom: 3px;
   margin-right: 4px;
   margin-top: 4px;
   padding: 0px 10px;
   padding-top: 3px;
   padding-bottom: 3px;
}

#tray > .passive {
    -gtk-icon-effect: dim;
}

#tray > .needs-attention {
    -gtk-icon-effect: highlight;
   /* background-color: #eb4d4b; */
}

#language {
   /* background-color: #292c3c; */
    font-weight: bold;
    border-radius: 0px 0px 0px 0px;
    margin-top: 4px;
   /* margin-right: 4px; */
    margin-bottom: 4px;
}

#custom-power {
    background-color: #343F44;
    color: #A7C080;
    border-radius: 15px;
    margin-top: 3px;
    margin-bottom: 3px;
    margin-right: 3px;
}

#custom-spotify {
    background-color: #292c3c;
    font-weight: bold;
    border-radius: 12px;
    margin-top: 4px;
    margin-bottom: 4px;
    margin-left: 4px;
}

#custom-logo {
    font-weight: bold;
    border-radius: 10px 0px 0px 10px;
    margin-top: 4px; 
    margin-bottom: 4px;
   /* margin-right: 4px; */
    margin-left: 4px;
    background: @background;
}

#window {
    font-weight: bold;
    background: #303446;
    border-radius: 0px 10px 10px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
}   
   '';
   };
}
