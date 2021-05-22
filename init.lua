hs.window.animationDuration = 0.0
configFileWatcher = nil

require 'config/command_quit'

hyper = {'ctrl', 'alt'}
meh = {'ctrl', 'shift', 'alt'}

-- active apps and open windows
mashlaunch = meh
require 'config/launch_apps'

-- focus on different windows
mashfocus  = meh
--require 'config/focus_windows'

-- move windows to different spaces
mashmove = hyper
-- require 'config/move_windows_to_spaces'

-- snap windows to positions
mashsnap = hyper
require 'config/grid_ui'
require 'config/snap_windows'

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
