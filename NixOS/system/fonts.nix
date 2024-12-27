{ config, lib, pkgs, ... }:

{

fonts.packages = with pkgs; [

  nerd-fonts.symbols-only
  nerd-fonts.hack
  nerd-fonts.noto
  nerd-fonts.jetbrains-mono
  nerd-fonts._0xproto

];

}
