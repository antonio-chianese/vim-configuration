local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { 'wsl', '--distribution', 'Ubuntu' }

config.enable_tab_bar = false -- remove tab bar
config.window_decorations = "RESIZE" -- remove window decorations
config.window_background_opacity = 0
config.win32_system_backdrop = 'Acrylic'

config.color_scheme = "Catppuccin Mocha"

config.audible_bell = "Disabled" -- disable sounds when at the end of doc

-- this is going to be used to toggle between color schemes
-- local function scheme_for_apperance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "Catppuccin Frappe"
-- 	else
-- 		return "Catppuccin Latte"
-- 	end
-- end
--
-- print(wezterm.gui.get_appearance())

-- config.color_scheme = scheme_for_apperance(wezterm.gui.get_apperanace()) -- get the current theme

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 10
config.cursor_blink_rate = 800

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- config.window_background_image = "~/Documents/img-backgrounds/sacred-geometry.jpeg"
config.window_background_gradient = {
	orientation = "Vertical",
	colors = {
		"#1E1E2F",
		"#1E1E2F",
	},
	blend = "Rgb",
	interpolation = "Linear",
}

config.window_padding = {
	left = 44,
	right = 33,
	top = 33,
	bottom = 11,
}

config.keys = {
	{
		key = "c",
		mods = "CMD",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	-- {
		-- Disable Cmd+T (or Super+T on some systems)
		-- key = "t",
		-- mods = "CMD",
		-- action = wezterm.action.DisableDefaultAssignment,
	-- },
    {
        key = "Enter",
        mods = "SHIFT",
        action = wezterm.action.SpawnWindow,
    },
}

return config
