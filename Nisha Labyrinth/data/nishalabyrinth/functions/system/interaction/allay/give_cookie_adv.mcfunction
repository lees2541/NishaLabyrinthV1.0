#advancement revoke @s only nishalabyrinth:system/interaction/allay/interact_allay
#say hoho
execute if entity @a[advancements={nishalabyrinth:system/library/prison/escape_jail=true}] run return 0
tellraw @a[team=!gate_keeper] {"text":"알레이가 이슬호롱을 받고 좋아합니다"}
execute at @s run team leave @e[type=allay,tag=area,tag=cookie,distance=..5,sort=nearest,tag=!auto]
execute at @s run tag @e[type=allay,tag=area,tag=cookie,distance=..5,sort=nearest,tag=!auto] add auto
execute if entity @s[advancements={nishalabyrinth:system/location/in_the_lib=false}] at @s run tag @e[type=allay,tag=area,tag=cookie,distance=..5,sort=nearest,tag=auto] add auto1
execute if entity @s[advancements={nishalabyrinth:system/location/in_the_lib=true}] at @s run tag @e[type=allay,tag=area,tag=cookie,distance=..5,sort=nearest,tag=auto] add auto2
execute at @s run team leave @e[type=allay,tag=auto,tag=cookie,limit=1,sort=nearest,distance=..5]
execute at @s run tag @e[type=allay,tag=cookie,tag=auto,limit=1,sort=nearest,distance=..5] remove cookie
scoreboard players set @s NL_cookie_id 0


clear @s paper{prison_key:1b} 1


