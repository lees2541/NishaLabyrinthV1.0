


execute at @s anchored eyes positioned ^ ^ ^0.3 store result score @s NL_chest_raycast run function nishalabyrinth:system/interaction/opening_chest/library/lib_chest_raycast
execute if score @s NL_chest_raycast matches 3 run scoreboard players reset @s NL_open_chest
scoreboard players reset @a NL_chest_raycast

