{ pkgs, lib, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
    if status is-interactive
	set fish_greeting
end

    '';

    shellAliases = {
      l = "eza -lh --icons";
      ls = "eza --icons";
      la = "eza -a --icons";
      ll = "eza -i --icons";
      tree = "eza --tree --icons";
      cl = "clear";
      nv = "nvim";
      nxr = "doas nixos-rebuild switch --flake .";
      hmr = "home-manager switch --flake .";
      fm = "yazi";
      nxcg = "doas nix-collect-garbage -d";
      nfu = "nix flake update";
      nxso = "nix-store --optimise";
    };
 };
}
