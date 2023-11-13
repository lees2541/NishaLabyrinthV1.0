
execute if entity @e[type=text_display,limit=1,tag=route_A,tag=point,tag=gauge_bar,nbt=!{see_through:1b}] run return 0
execute store result score #prisoner NL_temp as @e[type=text_display,limit=1,tag=patrol,tag=gauge_bar,tag=point,tag=route_A] run function nishalabyrinth:system/prison/pickpocket/gauge_bar/get_range

execute if score #prisoner NL_temp matches 1 run function nishalabyrinth:system/prison/pickpocket/result/success1
execute if score #prisoner NL_temp matches 2 run function nishalabyrinth:system/prison/pickpocket/result/success2
execute if score #prisoner NL_temp matches 3 run function nishalabyrinth:system/prison/pickpocket/result/fail


execute as @e[type=text_display,tag=route_A,tag=gauge_bar,tag=NL] run function nishalabyrinth:system/prison/pickpocket/unable_gauge

loot insert 703 40 579 loot minecraft:chests/pickpocket
