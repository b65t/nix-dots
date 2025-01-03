{ pkgs, lib, ... }:

{

programs.waybar = {
    enable = true;
     settings = [
     {

       "layer" = "top";
       "position" = "top";
       "margin" = "4";
       "spacing" = "0";
       "ipc" = "true";
       "exclusive" = "true";
        modules-left = [
          "custom/logo"
	        "custom/picker"
          "custom/screen-shot"
          "custom/weather"
          "group/music_controller"
	  "hyprland/window"
	  ];
	  modules-center = [
	  "hyprland/workspaces"
        ];
	  modules-right = [
        "custom/cava"
        "tray"
	"network"
	"pulseaudio"
	"hyprland/language"
	"clock"
	"custom/notification"
       ];

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
	    "7" = [];
     };
        "format-icons" = {
      "empty" = " ";
	    "active" = " ";
	    "default" = " ";
         };
	};
	"tray" = {
#         "icon-size" = 21;
          "spacing" = 10;
        };

	"clock" = {
	"format" = "{:%H/%M}";
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
          "format" = "{icon} {volume}";
          "format-muted" = "󰖁 Muted";
          "format-icons" = {
            "default" = [ "󰋋" ];
          };
	   "tooltip" = false;
	   "on-click" = "pavucontrol";
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
      "format" = "";
       "on-click" = "~/.nix/scripts/rofi/powermenu.sh";
          };

      "memory" = {
        "interval" = 1;
	"format" = " {percentage}%";
      };

      "cpu" = {
        "interval" = 1;
	"format" = " {usage}%";
      };
      "custom/notification" = {
        "tooltip" = false;
        "format" = "{icon}";
        "format-icons" = {
            "notification" = "󱅫";
            "none" = "󰂚";
            "dnd-notification" = "󰂛";
            "dnd-none" = "󰂛";
            "inhibited-notification" = "󱅫";
            "inhibited-none" = "󰂚";
            "dnd-inhibited-notification" = "󰂛";
            "dnd-inhibited-none" = "󰂛";
         };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          "exec" = "swaync-client -swb";
          "on-click" = "swaync-client -t -sw";
          "on-click-right" = "swaync-client -d -sw";
          "escape" = true;
      };
      "group/music_controller" = {
         "orientation" = "horizontal";
          "modules" = [
          "custom/playerctl-backward"
          "custom/playerctl-play"
          "custom/playerctl-forward"
    ];
  };
    "custom/playerctl-backward" = {
        "format" = " ";
        "tooltip" = false;
        "on-click" = "playerctl previous";
        "on-scroll-up" = "playerctl volume .05+";
        "on-scroll-down" = "playerctl volume .05-";
    };
    "custom/playerctl-play" = {
        "format" = "{icon}";
        "return-type" = "json";
        "exec" = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
        "on-click" = "playerctl play-pause";
        "on-scroll-up" = "playerctl volume .05+";
        "on-scroll-down" = "playerctl volume .05-";
        "format-icons" = {
            "Playing" = "";
            "Paused" = "";
            "Stopped" = "";
        };
    };
    "custom/playerctl-forward" = {
        "format" = " ";
        "tooltip" = false;
        "on-click" = "playerctl next";
        "on-scroll-up" = "playerctl volume .05+";
        "on-scroll-down" = "playerctl volume .05-";
};
	"custom/weather" = {
        "exec" = "~/.nix/scripts/waybar/weather.sh -o";
        "exec-if" = "ping wttr.in -c 1";
        "interval" = 3600;
    };

    "custom/screen-shot" = {
        "format" = "󰄀";
        "on-click" = "~/.nix/scripts/screenshot/partial-screenshot.sh";
        "tooltip" = false;
    };
    "custom/picker" = {
      "tooltip" = false;
      "format" = "";
      "on-click" = "hyprpicker -a";
    };
    "custom/separator" = {
     "format" = "{icon}";
     "format-icons" = "|";
     "tooltip" = false;
    };
    "hyprland/language" = {
        "padding" = 10;
	      "format-en" = "us";
	      "format-ar" = "ar";
    };
    "custom/cava" = {
      "exec" = "~/.nix/scripts/waybar/cava.sh";
      "format" = "{}";
    };
    "hyprland/window" = {
     #  "format" = "{}";
     "format" = "{initialTitle}";
        "rewrite" = {
	 "(.*)kitty" = "󰄛 kitty";
         "(.*)Mozilla Firefox" = "󰈹 Firefox";
	 "(.*)Discord" = " Discord";
	 "(.*)Spotify" = "󰓇 Spotify";
         "(.*)Spotify Free" = "󰓇 Spotify";
	 "(.*)Waypaper" = " Waypaper";
	 "(.*)VSCodium" = " VSCodium";
	 "" = " Desktop";
     };
      "separate-outputs" = true;
    };
     }
   ];

    style = ''
     @import '../../.cache/wal/colors-waybar.css';
 * {
    font-family:"noto sans nerd font"; 
    font-size: 13px;
    min-height: 0;
}

window#waybar {
    background-color: transparent;
    transition-duration: .5s;
    border-radius: 7px;
   /* border: 2px solid @color1; */
}

#workspaces {
  /* padding-right: 4px;
   padding-left: 4px; */
   font-weight: bold;
   min-height: 0px;
   padding: 2px 15px 2px 15px;
   background-color: @background;
   border-radius: 10px;
}

#workspaces button {
   color: @color2;
   background: @color1;
   border-radius: 8px;
   font-weight: bold;
   min-width: 0px;
   padding: 0px 8px 0px 8px;
   margin-top: 2px;
   margin-bottom: 2px;
   margin-right: 3px;
   margin-left: 3px;
}

#workspaces button.empty {
   background-color: @foreground;
   color: @foreground;
   font-weight: bold;
}

#workspaces button.active {
   /* background: @color1;  */
   color: @color1;
   background: linear-gradient(50deg, @color1,@color2,@color1,@color2,@color1);
   padding-right: 23px;
   padding-left: 20px;
   font-weight: bold;
}

#clock,
#cpu,
#memory,
#network,
#pulseaudio,
#language,
#custom-power,
#custom-spotify,
#custom-logo,
#custom-cava,
#custom-picker,
#custom-weather,
#custom-screen-shot,
#custom-notification {
   padding: 0 10px;
   padding-top: 0px;
   padding-bottom: 0px;
   color: @foreground;
}

#clock {
   /* margin-top: 4px;
    margin-bottom: 4px; */
    font-weight: bold;
    background-color:@background;
    border-radius: 0px 10px 10px 0px
}

#cpu {
    font-weight: bold;
    border-radius: 0;
    margin-top: 2px;
    margin-bottom: 2px;
    color: @color1;
}

#memory {
    font-weight: bold;
    border-radius: 0px;
    margin-top: 2px;
    margin-bottom: 2px;
    color: @color1;
}

#network {
	  color: @color1;
    /* margin-top: 4px;
    margin-bottom: 4px; */
    font-size: 14px;
    background-color: @background;
    border-radius: 10px 0px 0px 10px;
} 

 #network.disconnected {
   /* background-color: #f53c3c; */
} 

#pulseaudio {
    color: @color1;
    font-weight: bold;
    font-size: 14px;
    background-color: @background;
}

#pulseaudio.muted {
    color: #24273a;
}

#tray {
   padding: 0px 10px;
   padding-top: 3px;
   padding-bottom: 3px;
   background: @background;
   border-radius: 10px;
   margin-right: 5px;
}

#tray > .passive {
    -gtk-icon-effect: dim;
}

#tray > .needs-attention {
    -gtk-icon-effect: highlight;
   /* background-color: #eb4d4b; */
}

#language {
    font-weight: bold;
   /* margin-top: 4px;
    margin-right: 4px;
    margin-bottom: 4px; */
    background-color: @background;
}

#custom-power {
    background-color: #343F44;
    color: #A7C080;
    border-radius: 15px;
    margin-top: 2px;
    margin-bottom: 2px;
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
   background: linear-gradient(120deg, @color1,@color2,@color1);
    border-radius: 11px 11px 6px 11px;
    color: @foreground;
    font-weight: bold;
    font-size: 18px;
}

#window {
    font-weight: bold;
    color: @foreground;
    background: @background;
    margin-left: 5px;
    padding-right: 7px;
    padding-left: 7px;
    border-radius: 10px;
}

#custom-cava {
   color: @foreground;
   background: linear-gradient(45deg, @color1,@color2,@color1);
   min-height: 0px;
   border-radius: 10px;
   margin-right: 5px;
   font-family: Hack Nerd font;
}

#custom-separator {
	color: #49464f;
  background-color: @background;
}

#custom-notification {
	color: @foreground;
	font-size: 14px;
  background: linear-gradient(200deg, @color1,@color2,@color1);
  margin-left: 5px;
  border-radius: 11px 11px 11px 6px;
}

#custom-picker {
        color: @color1;
        background-color: @background;
        border-radius: 10px 0px 0px 10px;
        margin-left: 5px;
}

#custom-playerctl-forward,
#custom-playerctl-play,
#custom-playerctl-backward {
	padding: 0 3px;
}

#custom-playerctl-forward,
#custom-playerctl-backward {
	color: @color1;
}
#custom-playerctl-play {
  background: @background;
	color: @foreground;
}
#custom-playerctl-backward {
  background: @background;
  border-radius: 10px 0px 0px 10px;
  margin-left: 5px;
}
#custom-playerctl-forward {
  background: @background;
  border-radius: 0px 10px 10px 0px;
}

#custom-weather {
	color: @foreground;
	font-weight: bold;
  background-color: @background;
  border-radius: 0px 10px 10px 0px;
}

#custom-screen-shot {
	color: @color1;
  background-color: @background;
}
   '';
   };
}
