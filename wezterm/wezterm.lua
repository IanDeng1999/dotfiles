-- discord.gg/boronide, code generated using luamin.js™
-- 加载 wezterm API 和获取 config 对象
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-------------------- 颜色配置 --------------------

-- config.color_scheme = 'Aurora'

config.color_scheme = 'Flatland'
config.window_decorations = "TITLE | RESIZE"
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false

config.inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8
}

-- 设置字体和窗口大小
config.font = wezterm.font_with_fallback {"JetBrainsMono Nerd Font", "Noto Sans CJK SC"}
config.font_size = 12
config.initial_cols = 80
config.initial_rows = 20

-- 设置默认的启动shell
-- config.default_prog = {'C:\\Windows\\System32\\wsl.exe'}

-------------------- 键盘绑定 --------------------

-- 关闭默认键位
config.disable_default_key_bindings = true

local act = wezterm.action

config.leader = {
    key = ';',
    mods = 'CTRL',
    timeout_milliseconds = 1000
}

config.keys = {{
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = act.CopyTo("Clipboard")
}, {
    key = 'r',
    mods = 'LEADER',
    action = act.SplitHorizontal {
        domain = 'CurrentPaneDomain'
    }
}, {
    key = 'd',
    mods = 'LEADER',
    action = act.SplitVertical {
        domain = 'CurrentPaneDomain'
    }
}, {
    key = 'n',
    mods = 'LEADER',
    action = act.SpawnTab 'DefaultDomain'
}, {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = act.PasteFrom("Clipboard")
}, {
    key = 'w',
    mods = 'LEADER',
    action = act.CloseCurrentTab {
        confirm = false
    }
}, {
    key = '`',
    mods = 'CTRL',
    action = act.ActivateTabRelative(1)
}}

-------------------- 鼠标绑定 --------------------

config.mouse_bindings = {{
    event = {
        Up = {
            streak = 1,
            button = 'Left'
        }
    },
    mods = 'NONE',
    action = act.CompleteSelection 'ClipboardAndPrimarySelection'
}, -- Open HyperLink
{
    event = {
        Up = {
            streak = 1,
            button = 'Left'
        }
    },
    mods = 'CTRL',
    action = act.OpenLinkAtMouseCursor
}}

return config
