-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config:
config.font = wezterm.font "Berkeley Mono"
config.color_scheme = "Batman"
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.default_cwd = "~/proj"

-- and finally, return the configuration to wezterm
return config
