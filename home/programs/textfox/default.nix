{ pkgs, lib, inputs, ... }:

{

textfox = {
    enable = true;
    profile = "default";
     config = {
        background = {
          color = "#1e1e2e";
        };
        border = {
          color = "#cdd6f4";
          width = "1px";
          transition = "1.0s ease";
          radius = "3px";
        };
        displayHorizontalTabs = false;
        displayNavButtons = false;
        newtabLogo = "   __            __  ____          \A   / /____  _  __/ /_/ __/___  _  __\A  / __/ _ \\| |/_/ __/ /_/ __ \\| |/_/\A / /_/  __/>  </ /_/ __/ /_/ />  <  \A \\__/\\___/_/|_|\\__/_/  \\____/_/|_|  ";
        font = { 
          family = "JetBrainsMono Nerd Font";
          size = "15px";
          accent = "#cdd6f4";
        };
        sidebery = {
          margin = "0px";
        };
  };
 };

}
