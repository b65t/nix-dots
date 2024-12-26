{ pkgs, lib, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
          jnoortheen.nix-ide
          arrterian.nix-env-selector
          ms-python.python
          ms-vscode.cpptools
          catppuccin.catppuccin-vsc
          catppuccin.catppuccin-vsc-icons
          vscodevim.vim
        ];
  userSettings = {
          "update.mode" = "none";
          "extensions.autoUpdate" = false;
          "window.titleBarStyle" = "custom";
          "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'SymbolsNerdFont', 'monospace', monospace";
          "terminal.integrated.fontFamily" = "'Hack Nerd Font'";
          "window.menuBarVisibility" = "toggle";
          "workbench.colorTheme" = "Catppuccin Mocha";
          "workbench.iconTheme" = "catppuccin-mocha";
          "editor.minimap.enabled" = false;
          "vsicons.dontShowNewVersionMessage" = true;
         };
 };
}
