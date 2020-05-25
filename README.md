# Hammerspoon Config
## Installation
If you wanna try this out as is, you should just be able to copy the files into your ~/.hammerspoon directory
## Features
* [Window Management](#window-management-features)
* [App Launching](#app-launching)
* [Miscellaneous](#miscellaneous)

## Window Management Features
### Snap Windows
Uses hs.grid() to snap windows to certain positions. 
| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌃⌥ return`  | Maximizes                 |
| `⌃⌥ C`       | Moves to center           |
| `⌃⌥ H`       | Moves to left             |
| `⌃⌥ J`       | Moves to bottom           |
| `⌃⌥ K`       | Moves to top              |
| `⌃⌥ L`       | Moves to right            |
| `⌃⌥ Y`       | Moves to top left         |
| `⌃⌥ U`       | Moves to bottom left      |
| `⌃⌥ I`       | Moves to bottom right     |
| `⌃⌥ O`       | Moves to top right        |
| `⌃⌥ ;`       | Moves to center left      |
| `⌃⌥ '`       | Moves to center right     |
| `⌃⌥ B`       | Moves to left two thirds  |
| `⌃⌥ N`       | Moves to right third      |
| `⌃⌥ M`       | Moves to left third       |
| `⌃⌥ ,`       | Moves to right two thirds |

### Resize Windows
Uses hs.grid() to resize windows.

| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌃⌥⌘ Y`      | Decrease width            |
| `⌃⌥⌘ U`      | Increase height           |
| `⌃⌥⌘ I`      | Decrease height           |
| `⌃⌥⌘ O`      | Increase width            |

### Nudge Windows
Uses hs.grid() to move windows.
| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌃⌥⌘ H`      | Moves left                |
| `⌃⌥⌘ J`      | Moves down                |
| `⌃⌥⌘ K`      | Moves up                  |
| `⌃⌥⌘ L`      | Moves right               |

### Focus Windows
Focuses on a specific window on the current screen.
Centers the mouse on the focused window.
| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌃ H`        | Focuses left              |
| `⌃ J`        | Focuses down              |
| `⌃ K`        | Focuses up                |
| `⌃ L`        | Focuses right             |

### Move Windows to Spaces
Moves the focused window to a different space.
| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌃⌥ 1`       | Moves to space 1          |
| `⌃⌥ 2`       | Moves to space 2          |
| `⌃⌥ 3`       | Moves to space 3          |
| `⌃⌥ 4`       | Moves to space 4          |
| `⌃⌥ 5`       | Moves to space 5          |
| `⌃⌥ 6`       | Moves to space 6          |

## App Launching
Focuses on a specic app. Apart from Visual Studio Code, if that app has no windows open on the current space, it'll open a new window. 
If that app has multiple windows on the current space it'll cycle through the windows. The mouse will also be centered on the focused window.

**NOTE:** This is very specific to the apps I have it set up for so it probably won't work for additional apps unless you configure it to do so.
| Shortcut     | App Focused               |
| ------------ | ------------------------- |
| `⌃ return`   | iTerm                     |
| `⌃ space`   | Finder                    |
| `⌃ F`       | Firefox                   |
| `⌃ V`       | Visual Studio Code        |

## Miscellaneous
### Vim-Like Navigation
Use H,J,K,L keys for vim like navigation.
| Shortcut     | Window Behavior           |
| ------------ | ------------------------- |
| `⌥ H`        | Moves mouse left          |
| `⌥ J`        | Moves mouse down          |
| `⌥ K`        | Moves mouse up            |
| `⌥ L`        | Moves mouse right         |

### Firefox
Use shortcuts to navigate through open Firefox tabs.
| Shortcut     | Behavior                  |
| ------------ | ------------------------- |
| `⌥ Y`        | Moves to left tab         |
| `⌥ O`        | Moves to right tab        |
