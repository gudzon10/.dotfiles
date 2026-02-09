local wezterm = require 'wezterm'
local config = {}
-- local config = wezterm.config_builder()

config.automatically_reload_config = true
config.font = wezterm.font('JetBrains Mono', { weight = 'ExtraBold' })
-- config.font = wezterm.font('JetBrainsMono NF ExtraLight')
config.font_size = 21.0
config.line_height = 1.0

print(config)

return config
