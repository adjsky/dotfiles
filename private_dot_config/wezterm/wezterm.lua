local wezterm = require("wezterm")

local custom_color_scheme =
    wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom_color_scheme.background = "#1e2030"
custom_color_scheme.tab_bar.background = "transparent"

local config = {
    font = wezterm.font("JetBrains Mono"),
    font_size = 14,

    default_cursor_style = "BlinkingBar",

    disable_default_key_bindings = true,

    window_padding = {
        left = 6,
        right = 6,
        top = 6,
        bottom = 6,
    },
    animation_fps = 60,

    color_schemes = {
        ["custom"] = custom_color_scheme,
    },
    color_scheme = "custom",

    keys = require("keybindings"),
}

wezterm.plugin
    .require("https://github.com/nekowinston/wezterm-bar")
    .apply_to_config(config, {
        position = "bottom",
        max_width = 32,
        dividers = "slant_right",
        indicator = {
            leader = {
                enabled = true,
                off = " ",
                on = " ",
            },
            mode = {
                enabled = true,
                names = {
                    resize_mode = "RESIZE",
                    copy_mode = "VISUAL",
                    search_mode = "SEARCH",
                },
            },
        },
        tabs = {
            numerals = "arabic",
            pane_count = "superscript",
            brackets = {
                active = { "", ":" },
                inactive = { "", ":" },
            },
        },
        clock = {
            enabled = false,
        },
    })

return config
