hs.application.enableSpotlightForNameSearches(true)

local function get_visible_win_cnt(app_name) 
    local app = hs.application.find(app_name)
    local vis_wins = app:visibleWindows()
    local vis_win_cnt = 0
    for i, vis_win in ipairs(vis_wins) do
        vis_win_cnt = vis_win_cnt + 1
    end
    return vis_win_cnt
end

local function cycleWindows(app_name, cnt)
    local win = hs.window.focusedWindow()
    if not win then
        return
    end

    local win_id = win:id()
    local app = win:application()
    local app_id = app:bundleID()
    local curr_app_name = hs.application.nameForBundleID(app_id)
    local matches = string.find(curr_app_name, app_name)

    if matches then
        local vis_wins = app:visibleWindows()
        -- Finder always has 1 window open
        if app_name == 'Finder' then
            vis_wins[cnt - 1]:focus()
            return
        else 
            vis_wins[cnt]:focus()
            return
        end
    end
end

function launch(app_name)
    local cnt = get_visible_win_cnt(app_name) 
    if cnt > 1 then
        cycleWindows(app_name, cnt)
    end

    hs.application.launchOrFocus(app_name)
    -- hs.timer.usleep(150000)

    cnt = get_visible_win_cnt(app_name) 
    -- Finder always has 1 window open
    if app_name == 'Finder' then
        if cnt == 1 then 
            hs.osascript.applescriptFromFile('/Users/alanacquinones/Documents/applescripts/' .. app_name .. 'Window.txt')
        end
        return
    end 

    if cnt == 0 then
        hs.osascript.applescriptFromFile('/Users/alanacquinones/Documents/applescripts/' .. app_name .. 'Window.txt')
    end
end

hs.hotkey.bind(mashlaunch, 'return', function() launch('iTerm') end)
hs.hotkey.bind(mashlaunch, 'f', function() launch('Firefox') end)
hs.hotkey.bind(mashlaunch, 'space', function() launch('Finder') end)

hs.hotkey.bind(mashlaunch, 'i', function() hs.application.launchOrFocus('IntelliJ IDEA') end)
hs.hotkey.bind(mashlaunch, 'v', function() hs.application.launchOrFocus('Visual Studio Code') end)
