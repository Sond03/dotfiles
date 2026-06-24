-- cursor size envs
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "rose-pine-hyprcursor")

-- toolkit wayland 
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("GDK_BACKEND", "wayland, x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")
