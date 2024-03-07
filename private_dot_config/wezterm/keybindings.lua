local wezterm = require("wezterm")

return {
    {
        key = "c",
        mods = "SUPER",
        action = wezterm.action.CopyTo("Clipboard"),
    },
    {
        key = "c",
        mods = "CTRL|SHIFT",
        action = wezterm.action.CopyTo("Clipboard"),
    },

    {
        key = "v",
        mods = "SUPER",
        action = wezterm.action.PasteFrom("Clipboard"),
    },
    {
        key = "v",
        mods = "CTRL|SHIFT",
        action = wezterm.action.PasteFrom("Clipboard"),
    },

    {
        key = "=",
        mods = "SUPER",
        action = wezterm.action.IncreaseFontSize,
    },
    {
        key = "=",
        mods = "CTRL",
        action = wezterm.action.IncreaseFontSize,
    },

    {
        key = "-",
        mods = "SUPER",
        action = wezterm.action.DecreaseFontSize,
    },
    {
        key = "-",
        mods = "CTRL",
        action = wezterm.action.DecreaseFontSize,
    },

    {
        key = "0",
        mods = "SUPER",
        action = wezterm.action.ResetFontSize,
    },
    {
        key = "0",
        mods = "CTRL",
        action = wezterm.action.ResetFontSize,
    },

    {
        key = "t",
        mods = "SUPER",
        action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
    {
        key = "t",
        mods = "CTRL",
        action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },

    {
        key = "1",
        mods = "SUPER",
        action = wezterm.action.ActivateTab(0),
    },
    {
        key = "1",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(0),
    },

    {
        key = "2",
        mods = "SUPER",
        action = wezterm.action.ActivateTab(1),
    },
    {
        key = "2",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(1),
    },

    {
        key = "3",
        mods = "SUPER",
        action = wezterm.action.ActivateTab(2),
    },
    {
        key = "3",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(2),
    },

    {
        key = "4",
        mods = "SUPER",
        action = wezterm.action.ActivateTab(3),
    },
    {
        key = "4",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(3),
    },

    {
        key = "5",
        mods = "SUPER",
        action = wezterm.action.ActivateTab(4),
    },
    {
        key = "5",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(4),
    },

    {
        key = "w",
        mods = "SUPER",
        action = wezterm.action.CloseCurrentTab({ confirm = true }),
    },
    {
        key = "w",
        mods = "CTRL",
        action = wezterm.action.CloseCurrentTab({ confirm = true }),
    },

    {
        key = "%",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitHorizontal({
            domain = "CurrentPaneDomain",
        }),
    },
    {
        key = '"',
        mods = "CTRL|SHIFT",
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "RightArrow",
        mods = "CTRL|SHIFT",
        action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
    },
    {
        key = "LeftArrow",
        mods = "CTRL|SHIFT",
        action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
    },
    {
        key = "UpArrow",
        mods = "CTRL|SHIFT",
        action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
    },
    {
        key = "DownArrow",
        mods = "CTRL|SHIFT",
        action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
    },
    {
        key = "LeftArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
        key = "RightArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Right"),
    },
    {
        key = "UpArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
        key = "DownArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Down"),
    },
}
