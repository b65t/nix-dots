{ pkgs, lib, ... }:

{

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-gtk;
  };
  services.emacs.enable = true;
  home.activation.doom = lib.hm.dag.entryAfter["writeBoundary"] ''
    if [ ! -d .emacs.d ]; then
      git clone --depth 1 https://github.com/doomemacs/doomemacs .emacs.d
    fi
    mkdir -p .doom.d
    ln -sf ~/.nix/home/programs/emacs/.doom.d/* .doom.d
  '';


  home.packages = with pkgs; [
    emacs-all-the-icons-fonts
    ispell
  ];

}
