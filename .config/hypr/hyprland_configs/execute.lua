require("hyprland_configs.variables")
hl.on("hyprland.start", function()
    -- udiskie: tray icon + automount
    hl.exec_cmd("udiskie -t -a")

    -- mostly wip for now
    -- hl.exec_cmd("hypridle")

    -- utilities 
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("qs")
    hl.exec_cmd("hyprpaper")

    -- app launcher daemon
    hl.exec_cmd("walker --gapplication-service")

    hl.exec_cmd("spotify", { workspace = "special:music silent" })
    -- hl.exec_cmd("[workspace special:music silent] spotify")
    hl.exec_cmd("[workspace 1 silent] " .. terminal)
    hl.exec_cmd("[workspace 2] " .. browser)
end)
