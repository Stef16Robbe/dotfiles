-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config:
config.font = wezterm.font "Berkeley Mono"
config.color_scheme = "Batman"
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.default_cwd = "~/proj"
config.keys = {
  {
    key = "w",
    mods = "CTRL|SHIFT",
    -- mods = "CMD",
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
}
config.scrollback_lines = 10000

-- and finally, return the configuration to wezterm
return config
