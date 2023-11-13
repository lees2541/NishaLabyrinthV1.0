data merge entity @s[tag=left] {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.4f,0.5f,0.4f],scale:[0.5f,0.4f,1f]}}

tag @s remove left
tag @s add right

scoreboard players set @s NL_entity_timer 1
#schedule function nishalabyrinth:system/gui/mob_gauge_bar/lib_patrol/go_left 20t replace