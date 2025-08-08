-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local assets_folder = "C:/Users/jwolf/.wezterm/assets"

-- Shell
config.default_prog = { "wsl.exe" }

-- Font settings
config.font_size = 12
config.line_height = 1.2
config.font = wezterm.font({ family = "SauceCodePro NFM", weight = "DemiBold" })

-- Colors
config.color_scheme = "Catppuccin Mocha"

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = assets_folder .. "/kitty_sky_blurred_darkened.png"

return config

