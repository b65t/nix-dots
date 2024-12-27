{ pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      add_newline = true;

      format = lib.strings.concatStrings [
        "$os"
        "$directory"
	"$cmd_duration"
        "$line_break"
	"$time"
        "$character"
      ];

      directory = {
        format = "[$path ](bold blue)";
        read_only = "󰌾";
      };

      cmd_duration = {
        min_time = 1000;
	format = "[$duration](bold blue)";
      };

      character = {
        success_symbol = "[ ❯](bold blue)";
        error_symbol = "[ ](bold red)";
      };

      os = {
        disabled = false;
        format = "$symbol";
      };

      os.symbols = {
        NixOS = "[ ](blue)";
      };

      line_break = {
        disabled = false;
      };

      time = {
        disabled = false;
        time_format = "%R";
        format = "[ $time](bold blue)";
      };

    };
  };
}

