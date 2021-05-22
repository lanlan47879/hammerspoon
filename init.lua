hs.window.animationDuration = 0.0

require 'config/command_quit'

meh = {'ctrl', 'cmd'}
hyper = {'ctrl', 'cmd', 'alt'}

-- active apps and open windows
mashlaunch = hyper
require 'config/launch_apps'

-- focus on different windows
mashfocus  = hyper
require 'config/focus_windows'

-- snap windows to positions
mashsnap = meh
require 'config/grid_ui'
require 'config/snap_windows'

configFileWatcher = nil
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
