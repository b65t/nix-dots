{ pkgs, lib, ... }:

{

programs.waybar = {
    enable = true;
     settings = [
     {

       "layer" = "top";
       "position" = "top";
       "margin" = "5";
       "spacing" = "0";
        modules-left = [
          "custom/logo"
	  "hyprland/window"
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
            "7" = [];
            "8" = [];
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
       "on-click" = "wlogout";
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
 * {
    font-family:"JetBrainsMono nerd font"; 
    font-size: 14px;
}

window#waybar {
    background-color: rgba(35, 38, 52, 0.3);
   /* border-bottom: 3px solid rgba(100, 114, 125, 0.3); */
    color: #ffffff;
    transition-property: background-color;
    transition-duration: .5s;
   /* border: 2px solid #303446; */
    border-radius: 12px;
;
}

window#waybar.hidden {
    opacity: 1;
}

/*
window#waybar.empty {
    background-color: transparent;
}
window#waybar.solo {
    background-color: #FFFFFF;
}
*/

window#waybar.termite {
    background-color: #3F3F3F;
}

window#waybar.chromium {
    background-color: #000000;
    border: none;
}

 button {
    box-shadow:  inset 0 -3px transparent;

    border: none;
    border-radius: 15;
} 


 button:hover {
    background: inherit;
    box-shadow:  inset 0 -3px #E8E8E8; 
}


 #workspaces {
   padding-right: 4px;
   padding-left: 4px;
  /* margin-right: 4px; */
   margin-bottom: 4px;
   margin-top: 4px;
   font-weight: Bold;
   border-radius: 10px;
   background: #303446 /*#292c3c*/;
}

 #workspaces button {
    padding: 0 5px; 
    border-radius: 15px;
    color: #a5adce;
    font-weight: bold;
 
} 

 #workspaces button:hover {
    background: rgba(0, 0, 0, 0.2);
} 

 #workspaces button.focused {
    background-color: #E8E8E8;
    border-radius: 15px;
    box-shadow: inset 0 -3px #ffffff;
} 

 #workspaces button.urgent {
    color: #E67E80;
}

#workspaces button.active {
    color: #c6d0f5;
}


 #mode {
    background-color: #E8E8E8;
    box-shadow: inset 0 -3px #ffffff;
} 

#clock,
#battery,
#cpu,
#memory,
#disk,
#temperature,
#backlight,
#network,
#pulseaudio,
#wireplumber,
#custom-media,
#tray,
#language,
#mode,
#idle_inhibitor,
#scratchpad,
#power-profiles-daemon,
#mpd,
#custom-power,
#custom-spotify,
#custom-logo {
    padding: 0 10px;
    padding-top: 3px;
    padding-bottom: 3px;
    background: #303446 /*#292c3c*/;
}


.modules-left > widget:first-child > #workspaces {
    margin-left: 0;
}

.modules-right > widget:last-child > #workspaces {
    margin-right: 0;
}

#clock {
   /* background-color: #292c3c; */
    color: #c6d0f5;
    border-radius: 0px 10px 10px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
    margin-right: 4px;
    font-weight: bold;
}

#battery {
    background-color: #ffffff;
    color: #000000;
}

#battery.charging, #battery.plugged {
    color: #ffffff;
    background-color: #26A65B;
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: #000000;
    }
}

#battery.critical:not(.charging) {
    background-color: #f53c3c;
    color: #ffffff;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: steps(12);
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#power-profiles-daemon {
    padding-right: 15px;
}

#power-profiles-daemon.performance {
    background-color: #f53c3c;
    color: #ffffff;
}

#power-profiles-daemon.balanced {
    background-color: #2980b9;
    color: #ffffff;
}

#power-profiles-daemon.power-saver {
    background-color: #2ecc71;
    color: #000000;
}

label:focus {
    background-color: #000000;
}

#cpu {
    background-color: #2ecc71;
    color: #000000;
}

#memory {
    background-color: #9b59b6;
}

#disk {
    background-color: #964B00;
}

#backlight {
    background-color: #90b1b1;
}

#network {
	 /* background-color: #292c3c; */
	  border-radius: 10px 0px 0px 10px;
	  color: #c6d0f5;
          margin-top: 4px;
          margin-bottom: 4px;
} 

 #network.disconnected {
   /* background-color: #f53c3c; */
} 

#pulseaudio {
   /* background-color: #292c3c; */
    border-radius: 0px 0px 0px 0px;
    color: #c6d0f5;
    margin-top: 4px;
    margin-bottom: 4px;
    font-weight: bold;
}

#pulseaudio.muted {
    color: #24273a;
}

#wireplumber {
    background-color: #24273a;
    color: #000000;
}

#wireplumber.muted {
    background-color: #f53c3c;
} 

#custom-media {
    background-color: #66cc99;
    color: #2a5c45;
    min-width: 100px;
}

#custom-media.custom-spotify {
    background-color: #66cc99;
}

#custom-media.custom-vlc {
    background-color: #ffa000;
}

#temperature {
    background-color: #f0932b;
}

#temperature.critical {
    background-color: #eb4d4b; 
}

#tray {
  /* background-color: #292c3c; */
   border-radius: 10px;
   margin-bottom: 3px;
   margin-right: 4px;
   margin-top: 4px;
}

#tray > .passive {
    -gtk-icon-effect: dim;
}

#tray > .needs-attention {
    -gtk-icon-effect: highlight;
   /* background-color: #eb4d4b; */
}

#idle_inhibitor {
    background-color: #2d3436;
}

#idle_inhibitor.activated {
    background-color: #ecf0f1;
    color: #2d3436;
}

#mpd {
    background-color: #66cc99;
    color: #2a5c45;
}

#mpd.disconnected {
    background-color: #f53c3c;
}

#mpd.stopped {
    background-color: #90b1b1;
}

#mpd.paused {
    background-color: #51a37a;
}

#language {
   /* background-color: #292c3c; */
    color: #c6d0f5;
    font-weight: bold;
    border-radius: 0px 0px 0px 0px;
    margin-top: 4px;
   /* margin-right: 4px; */
    margin-bottom: 4px;
}

#keyboard-state {
    background: #292c3c;
    color: #000000;
    padding: 0 0px;
    margin: 0 5px;
    min-width: 16px;
}

#keyboard-state > label {
    padding: 0 5px;
}

#keyboard-state > label.locked {
    background: rgba(0, 0, 0, 0.2);
}

#scratchpad {
    background: rgba(0, 0, 0, 0.2);
}

#scratchpad.empty {
	background-color: transparent;
}

#privacy {
    padding: 0;
}

#privacy-item {
    padding: 0 5px;
    color: white;
}

#privacy-item.screenshare {
    background-color: #cf5700;
}

#privacy-item.audio-in {
    background-color: #1ca000;
}

#privacy-item.audio-out {
    background-color: #0069d4;
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
    color: #c0c0c0;
    font-weight: bold;
    border-radius: 12px;
    margin-top: 4px;
    margin-bottom: 4px;
    margin-left: 4px;
}

#custom-logo {
    color: #c6d0f5;
    font-weight: bold;
    border-radius: 10px 0px 0px 10px;
    margin-top: 4px; 
    margin-bottom: 4px;
   /* margin-right: 4px; */
    margin-left: 4px;
    background: #303446 /*#292c3c*/;
}

#window {
    color: #c6d0f5;
    font-weight: bold;
    background: #303446;
    border-radius: 0px 10px 10px 0px;
    margin-top: 4px;
    margin-bottom: 4px;
}   
   '';
   };
}
