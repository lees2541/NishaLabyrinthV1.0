say 알레이는 배회자에게 간식을 뺏겼습니다..
execute as @e[type=interaction,tag=allay] at @s on attacker if entity @s[team=gate_keeper] as @e[type=allay,tag=auto,tag=area,distance=..0.5,limit=1] run function nishalabyrinth:system/allay/cookie/return_area

execute if entity @a[team=prisoner,advancements={nishalabyrinth:system/location/in_the_prison=true}] as @e[type=marker,tag=chests,tag=!lifestone,tag=library,limit=1,sort=random] run function nishalabyrinth:system/library/chest_looting/insert_prison_key



