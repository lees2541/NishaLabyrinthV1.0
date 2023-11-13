execute as @e[type=allay,tag=area,tag=!cookie,tag=!auto,tag=!prison,tag=!return] at @s if entity @a[team=explorer,distance=..4,tag=!cookie,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}},limit=1,sort=nearest] run function nishalabyrinth:system/allay/cookie/find_cookie_player
execute as @e[type=allay,tag=area,tag=!cookie,tag=!auto,tag=!prison,tag=!return] run function nishalabyrinth:system/allay/follow_lighter
execute as @e[type=allay,tag=area,tag=cookie,tag=!auto,tag=!prison] at @s run function nishalabyrinth:system/allay/cookie/follow_cookie
execute as @e[type=allay,tag=area,tag=auto,tag=auto1,tag=!auto2,tag=!prison] at @s run function nishalabyrinth:system/allay/cookie_auto/goto_area1
execute as @e[type=allay,tag=area,tag=!cookie,tag=auto,tag=auto2,tag=!auto1,tag=!prison] at @s run function nishalabyrinth:system/allay/cookie_auto/goto_prison
