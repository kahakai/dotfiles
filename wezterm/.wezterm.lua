local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.keys = {
	-- New Pane
	{
		key = "n",
		mods = "ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "n",
		mods = "SHIFT|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- Navigane Panes
	{ key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },

	-- Close Pane
	{
		key = "x",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config
