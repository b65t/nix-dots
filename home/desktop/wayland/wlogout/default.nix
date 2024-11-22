{ pkgs, lib, ... }:

{
  programs.wlogout = {
    enable = true;
    layout = [
      
{
    "label" = "logout";
    "action" = "hyprctl dispatch exit 0";
    "text" = "Logout";
    "keybind" = "e";
}

{
    "label" = "shutdown";
    "action" = "systemctl poweroff";
    "text" = "Shutdown";
    "keybind" = "s";
}

{
    "label" = "reboot";
    "action" = "systemctl reboot";
    "text" = "Reboot";
    "keybind" = "r";
}
    ];
    style = ''
    window {
	font-family: "hack";
	font-size: 0pt;
	color: #C0C0C0;
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
	border-radius: 36px;
	margin: 10px;
}

button:focus {
	box-shadow: none;
	background-size: 20%;
}

button:hover {
	background-size: 50%;
	box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.4);
	background-color: #696969;
	color: transparent;
	transition: all 0.4s cubic-bezier(0.55, 0, 0.28, 1.682), box-shadow 1s ease-in;
}

#shutdown {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/shutdown.png"));
}
#shutdown:hover {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/power-hover.png"));
}

#logout {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/logout.png"));
}
#logout:hover {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/logout-hover.png"));
}

#reboot {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/reboot.png"));
}
#reboot:hover {
	background-image: image(url("~/.nix/home/desktop/wayland/wlogout/icons/restart-hover.png"));
}

    '';
 };
}
