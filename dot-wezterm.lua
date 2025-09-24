-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local assets_folder = "C:/Users/jwolf/.wezterm/assets"

-- Shell
config.default_prog = { "wsl.exe", "--cd", "~" }

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

-- Events
wezterm.on("spawn-nix-tab", function(window, pane)
	-- local current_window = wezterm.mux.get_active_window()
	window:mux_window():spawn_tab({
		args = { "wsl.exe", "-d", "NixOS", "--cd", "~" },
	})
end)

-- Keybindings
config.leader = { key = "a", mods = "ALT", timeout_milliseconds = 1000 }

config.keys = {
	{
		key = "r",
		mods = "CTRL|ALT|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = "n",
		mods = "LEADER",
		action = wezterm.action.EmitEvent("spawn-nix-tab"),
	},
}
return config
