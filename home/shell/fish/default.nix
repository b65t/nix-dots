{ pkgs, lib, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
    if status is-interactive
	set fish_greeting
end

function fish_prompt
     set_color blue
        printf "-[%s]" (prompt_pwd)
        echo ' 
 '
end

    alias ls="eza --icons"
    alias tree="eza --icons --tree"
    alias cl="clear"
    alias nv="nvim"
    alias nxr="sudo nixos-rebuild switch --flake ."
    alias hmr="home-manager switch --flake ."
    alias fm="yazi"
    alias nxcg="sudo nix-collect-garbage -d"
    ''; 
 };
}
