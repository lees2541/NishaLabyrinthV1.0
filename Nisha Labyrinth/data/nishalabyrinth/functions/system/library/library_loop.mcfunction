function nishalabyrinth:system/library/mob_path/lib_path_moving
function nishalabyrinth:system/library/alarm/alarm_guage_loop
function nishalabyrinth:system/gui/mob_gauge_bar/mob_gauge_bar_loop
execute if score r NL_lib_alarm_status matches 2 run function nishalabyrinth:system/prison/loop/jail_break_loop
execute as @a[advancements={nishalabyrinth:system/location/in_the_lib=true},predicate=!nishalabyrinth:system/library/at_the_library] run advancement grant @s only nishalabyrinth:system/location/in_the_cave


function nishalabyrinth:system/prison/loop/prison_loop
#execute as @a[advancements={nishalabyrinth:system/location/in_the_lib=false},predicate=nishalabyrinth:system/library/at_the_library] run advancement grant @s only nishalabyrinth:system/location/in_the_lib


execute store result bossbar nl:lib_alarm value run scoreboard players get r NL_lib_alarm