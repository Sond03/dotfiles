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

hl.window_rule({
    { "forceinput", "class:^(" .. game_class .. ")$" },
    { "renderunfocused", "class:^(" .. game_class .. ")$" },
    { "focusonactivate", "class:^(" .. game_class .. ")$" },
    { "stayfocused", "class:^(" .. game_class .. ")$" }
})
