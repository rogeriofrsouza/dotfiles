local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 10.75

-- config.font = wezterm.font_with_fallback({
-- 	"JetBrains Mono",
-- })

config.enable_tab_bar = false

config.color_scheme = "Tokyo Night Moon"

config.term = "xterm-256color"

config.window_padding = {
	top = 2,
	right = 0,
	bottom = 0,
	left = 2,
}

config.initial_cols = 132
config.initial_rows = 43

return config
