local wezterm = require("wezterm")

local M = {}

-- Config
-- =============================================================================
M.default_prog = { "fish" }
M.font = wezterm.font_with_fallback { "Hack nerd font" }
M.font_size = 11
M.check_for_updates = false
M.window_close_confirmation = "NeverPrompt"
M.initial_cols = 120
M.initial_rows = 30
M.enable_wayland = false
M.window_background_opacity = 1
M.window_decorations = "NONE"
M.enable_tab_bar = true
M.use_fancy_tab_bar = false
M.hide_tab_bar_if_only_one_tab = false
M.front_end = "WebGpu"

-- Theme
-- =============================================================================
local color_overrides = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
color_overrides.background = "#000000"

M.color_schemes = {
  ["Catppuccin_Mocha_Dark"] = color_overrides,
}
M.color_scheme = "Catppuccin_Mocha_Dark"

M.colors = {
  tab_bar = {
    background = "#000000",

    active_tab = {
      bg_color = "#89b4fa",
      fg_color = "#000000",
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "#000000",
      fg_color = "#cdd6f4",
    },

    inactive_tab_hover = {
      bg_color = "#000000",
      fg_color = "#cdd6f4",
      italic = true,
    },

    new_tab = {
      bg_color = "#000000",
      fg_color = "#89b4fa",
      intensity = "Bold",
    },

    new_tab_hover = {
      bg_color = "#000000",
      fg_color = "#89b4fa",
      intensity = "Bold",
    },
  },
}

return M