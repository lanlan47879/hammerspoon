hs.window.animationDuration = 0.0
configFileWatcher = nil

-- draw border around active window
-- require 'draw_border'

-- navigate with vin keybinds and between firefox tabs
mashnav = {"alt"}
require 'vim_nav'
require 'firefox'

-- active apps and open windows
mashlaunch = {"ctrl"}
require 'launch_apps'
-- require 'launch_websites'

-- focus on different windows
mashfocus  = {"ctrl"}
require 'focus_windows'

-- snap windows to positions
mashsnap = {"ctrl", "alt"}
require 'grid_ui'
require 'snap_windows'

-- move windows to different spaces
mashmove = {"ctrl", "alt"}
require 'move_windows_to_spaces'

-- manipulate windows
mashman = {"ctrl", "alt", "cmd"}
require 'nudge_windows'
require 'resize_windows'

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
  end)
hs.alert.show("Config loaded")

function reloadConfig()
    if configFileWatcher ~= nil then
        configFileWatcher:stop()
        configFileWatcher = nil
    end
    hs.reload()
end
configFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/init.lua", reloadConfig)
configFileWatcher:start()