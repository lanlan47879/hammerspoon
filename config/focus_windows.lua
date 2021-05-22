local function focusWindow(dir)
    if dir == 'north' then
        hs.window.focusedWindow():focusWindowNorth()
    elseif dir == 'east' then
        hs.window.focusedWindow():focusWindowEast()
    elseif dir == 'south' then
        hs.window.focusedWindow():focusWindowSouth()
    else 
        hs.window.focusedWindow():focusWindowWest()
    end

    local win = hs.window.focusedWindow()
    if not win then
        return
    end

    local frame = win:frame()
    local point = {x = frame.x + frame.w / 2, y = frame.y + frame.h / 2}
    hs.mouse.absolutePosition(point)
end

hs.hotkey.bind(mashfocus, "k", function() focusWindow('north') end)
hs.hotkey.bind(mashfocus, "l", function() focusWindow('east') end)
hs.hotkey.bind(mashfocus, "j", function() focusWindow('south') end)
hs.hotkey.bind(mashfocus, "h", function() focusWindow('west') end)