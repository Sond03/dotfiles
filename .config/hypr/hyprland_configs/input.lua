hl.config({
    input = {
        kb_layout  = "gb, no",
        kb_variant = "",
        kb_options = "grp:alt_shift_toggle",
        repeat_rate = 50,
        repeat_delay = 300,

        follow_mouse = 1,

        sensitivity = 0.10, -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "flat",

        touchpad = {
            natural_scroll = true,
        },
    },
    cursor = {
        inactive_timeout = 3,
        persistent_warps = true,
        zoom_factor = 1.0
    }

})


hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

