local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.font = wezterm.font("Iosevka Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.color_scheme = "carbonfox"

config.keys = {
	-- Disable debug mode keybind that conflicts with nvim pane switching
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

config.initial_rows = 24
config.initial_cols = 96

return config
