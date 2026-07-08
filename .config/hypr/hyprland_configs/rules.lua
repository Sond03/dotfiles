hl.window_rule({ match = { class = "^Mullvad vpn$", title = "^Mullvad vpn$",float = true} })

hl.window_rule({ name  = "fix-xwayland-drags", match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false, },
    no_focus = true,
})

hl.window_rule({
    -- Ignore maximize requests from all apps.
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({ match = { class = "^(Spotify)$"}, workspace = "special:music",})

hl.window_rule({
    match = { class = "^steam$", title = "negative:^(Steam)$"} ,
    float = true,
})

hl.window_rule({
    match = { class = "^steam$", title = "^Steam$" },
    float = false,
})

hl.window_rule({
    match = { title = "Picture-in-Picture"},
    float = true,
    opacity = "1 override",
    keep_aspect_ratio = true,
    pin = true,
})

hl.window_rule({
    match = { class = "org.qt-project.qml" },
    float = true,
    opacity = "1 override",
    persistent_size = true
})

local game_class = "steam_app_22380"

hl.window_rule({ match = { class = "^(" .. game_class .. ")$"},
    allows_input = true,
    render_unfocused = true,
    focus_on_activate = true,
    stay_focused = true
})

hl.layer_rule({ match = { namespace = "quickshell"},
    blur = true,
    ignore_alpha = 0.2
})

hl.layer_rule({ match = { namespace = "wlogout" },
    blur = true,
    ignore_alpha = 0.5
})


hl.layer_rule({ match = { namespace = "logout_dialog" },
    blur = true,
})

hl.layer_rule({ match = { namespace = "^(gtk-layer-shell)"},
    blur = true,
    ignore_alpha = 0.1
})

hl.layer_rule({ match = { namespace = "^(kitty)"},
    blur = true,
    ignore_alpha = 0.5
})

hl.layer_rule({ match = { namespace = "waybar"},
    blur = true,
    ignore_alpha = 0.5
})
