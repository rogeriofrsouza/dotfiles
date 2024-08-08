local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 10.85

config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"MesloLGS Nerd Font Mono",
})

config.enable_tab_bar = false

config.color_scheme = "Tokyo Night Moon"

config.window_padding = {
	top = 4,
	right = 0,
	bottom = 0,
	left = 0,
}

config.initial_cols = 132
config.initial_rows = 43

return config
