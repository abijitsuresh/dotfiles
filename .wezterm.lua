-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

-- This is where you actually apply your config choices

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
-- config.color_scheme = 'Gruvbox Dark (Gogh)'

config.font = wezterm.font 'Hack Nerd Font'
config.font = wezterm.font 'JetBrains Mono'

-- and finally, return the configuration to wezterm
return config