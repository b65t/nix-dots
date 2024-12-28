{ pkgs, lib, ... }:

{

home.packages = with pkgs;  [
pywal16
];

imports = [
./hyprland.nix
./rofi.nix
./kitty.nix
./ghostty.nix
];

}
