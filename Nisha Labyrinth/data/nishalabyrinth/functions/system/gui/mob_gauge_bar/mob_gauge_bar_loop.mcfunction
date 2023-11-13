execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=20}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/left/left1
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=5}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/left/left2
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=9}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/left/left3
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=11}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/left/left4
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=15}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/left/left5

execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=20}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/right/right1
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=5}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/right/right2
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=9}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/right/right3
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=11}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/right/right4
execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=15}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/right/right5





#execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=20}] if entity @s[tag=right] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/go_left
#execute as @e[type=text_display,tag=point,tag=gauge_bar,scores={NL_entity_timer=20}] if entity @s[tag=left] run function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/go_right

##


#function nishalabyrinth:system/gui/mob_gauge_bar/test/gauge_range_test

##
scoreboard players add @e[type=text_display,tag=gauge_bar,tag=point,tag=!pause] NL_entity_timer 1