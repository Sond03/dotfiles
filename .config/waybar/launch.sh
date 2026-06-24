
# Quitting all waybar instances  

waybar_check=$(killall waybar 2>&1 )


if [ "$waybar_check" = "waybar: no process found" ]; then
    waybar 
fi


# Loading waybar configuration based on user
#
