-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha" -- "Catppuccin Mocha" "Everforest Dark Medium (Gogh)" "rose-pine" "rose-pine-moon"
  else
    return "Everforest Light Soft (Gogh)" -- "Catppuccin Mocha" "Everforest Light Soft (Gogh)"
  end
end

-- This is where you actually apply your config choices
--config.color_scheme = 'rose-pine-moon'
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
--config.color_scheme = 'Everforest Dark Medium (Gogh)'
-- config.color_scheme = 'Gruvbox Dark (Gogh)'

config.font = wezterm.font 'Hack Nerd Font'
config.font = wezterm.font 'JetBrains Mono'

-- and finally, return the configuration to wezterm
return config
