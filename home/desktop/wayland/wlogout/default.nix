{ pkgs, lib, ... }:

{
  programs.wlogout = {
    enable = true;
    layout = [


{
    "label" = "shutdown";
    "action" = "systemctl poweroff";
    "text" = "Shutdown";
    "keybind" = "s";
}
{
    "label" = "lock";
    "action" = "hyprlock";
    "keybind" = "l";
}
{
    "label" = "reboot";
    "action" = "systemctl reboot";
    "text" = "Reboot";
    "keybind" = "r";
}
{
    "label" = "sleep";
    "action" = "systemctl suspend";
    "keybind" = "h";
}
{
    "label" = "logout";
    "action" = "hyprctl dispatch exit 0";
    "text" = "Logout";
    "keybind" = "e";
}
{
    "label" = "hibernate";
    "action" = "swaylock -f";
    "keybind" = "l";
}
    ];
    style = ''
    @import url("/home/islam/.cache/wal/colors-waybar.css");

window {
	font-family: "hack";
	font-size: 0pt;
	color: @foreground;
	background-color: rgba(24, 27, 32, 0.5);
}

button {
	background-repeat: no-repeat;
	background-position: center;
	background-size: 20%;
	background-color: transparent;
	border: none;
	animation: gradient_f 20s ease-in infinite;
	transition: all 0.3s ease-in;
	box-shadow: 0 0 10px 2px transparent;
	border-radius: 36px 15px 36px 15px;
	margin: 10px;
}

button:focus {
	box-shadow: none;
	background-size: 20%;
}

button:hover {
	background-size: 30%;
	box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.4);
	background-color: @color1;
	color: transparent;
	transition: all 0.4s cubic-bezier(0.55, 0, 0.28, 1.682), box-shadow 1s ease-in;
}

#shutdown {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/power.png"));
}
#shutdown:hover {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/power-hover.png"));
}

#logout {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/logout.png"));
}
#logout:hover {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/logout-hover.png"));
}

#reboot {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/restart.png"));
}
#reboot:hover {
	background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/restart-hover.png"));
}
#lock {
    background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/lock.png"));
}
#lock:hover {
  background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/lock-hover.png"));
}

#sleep {
    background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/sleep.png"));
}
#sleep:hover {
  background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/sleep-hover.png"));
}
#hibernate {
  background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/hibernate.png"));
}
#hibernate:hover {
  background-image: image(url("/home/islam/.nix/home/desktop/wayland/wlogout/icons/hibernate-hover.png"));
}
    '';
 };
}
