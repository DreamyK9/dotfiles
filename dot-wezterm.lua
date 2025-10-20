-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local assets_folder = ""

-- Shell
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	assets_folder = os.getenv("USERPROFILE") .. "/.wezterm/assets"
	config.default_prog = { "wsl.exe", "--cd", "~" }
else
	assets_folder = os.getenv("HOME") .. "/.wezterm/assets"
	config.default_prog = { "/bin/zsh", "-l" }
end

-- Font settings
config.font_size = 16
config.line_height = 1.2
config.font = wezterm.font_with_fallback({
	"Monocraft",
	"DepartureMono Nerd Font",
	"JetBrains Mono",
	"Nerd Font Symbols",
	"Noto Color Emoji",
})

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
