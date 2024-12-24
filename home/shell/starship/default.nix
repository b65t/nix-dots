{ pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
    add_newline = false;

       character = {
         success_symbol = "[](bold blue)";
         error_symbol = "[](bold blue)";
       };

      # package.disabld = true;
    };
  };
}
