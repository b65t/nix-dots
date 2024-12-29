{ config, pkgs, ... }:

{


  imports =
    [ 
     ./desktop
     ./programs
     ./shell
    ];


  home.username = "islam";
  home.homeDirectory = "/home/islam";

  home.stateVersion = "24.05";


  home.sessionVariables = {
  EDITOR = "nvim";
  BROWSER = "firefox";
  TERMINAL = "ghostty";
  VISUAL = "codium";
  };

  programs.home-manager.enable = true;
}
