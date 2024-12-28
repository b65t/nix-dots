{ pkgs, lib, ... }:

{
  programs.wezterm = {
    enable = true;
    # package = inputs.self.packages.${pkgs.system}.wezterm;
    extraConfig = ''
	local wezterm = require("wezterm")

	local config = {}

	config.default_prog = { "fish" }
	config.font = wezterm.font_with_fallback { "hack nerd font" }
	config.font_size = 12
	config.check_for_updates = false
	config.window_close_confirmation = "NeverPrompt"
	config.enable_wayland = false
        config.window_background_opacity = 0.6
	config.window_decorations = "NONE"
        config.enable_tab_bar = true
        config.use_fancy_tab_bar = false
        config.hide_tab_bar_if_only_one_tab = false
        config.front_end = "WebGpu"

	config.colors = {
	background = "202020",
	foreground = "c6d0f5",
	cursor_bg = "c6d0f5",
	cursor_border = "c6d0f5",
  ansi = {
    "727169",
    "e78284",
    "a6d189",
    "ef9f76",
    "8caaee",
    "babbf1",
    "81c8be",
    "9da9a0",
  },
  brights = {
    "727169",
    "e78284",
    "a6d189",
    "ef9f76",
    "8caaee",
    "babbf1",
    "81c8be",
    "9da9a0",
  },

  tab_bar = {
    background = "rgba(32, 32, 32, 0.6)",

    active_tab = {
      bg_color = "#89b4fa",
      fg_color = "#cdd6f4",
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "rgba(32, 32, 32, 0.6)",
      fg_color = "#cdd6f4",
    },

    inactive_tab_hover = {
      bg_color = "#1e1e2e",
      fg_color = "#cdd6f4",
    },

    new_tab = {
      bg_color = "rgba(32, 32, 32, 0.6)",
      fg_color = "#89b4fa",
      intensity = "Bold",
    },

    new_tab_hover = {
      bg_color = "#1e1e2e",
      fg_color = "#89b4fa",
      intensity = "Bold",
    },
  },
}

	return config
    '';
 };
}
