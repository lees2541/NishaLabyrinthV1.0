execute facing entity @e[type=marker,limit=1,tag=prison,tag=area,distance=0.3..] eyes run teleport ^ ^ ^0.07

## 

execute if entity @e[type=marker,limit=1,tag=prison,tag=area,distance=..0.3] run tag @s add prison
execute if entity @e[type=marker,limit=1,tag=prison,tag=area,distance=..0.3] run tag @s remove auto1
execute if entity @e[type=marker,limit=1,tag=prison,tag=area,distance=..0.3] run tag @s remove auto2









#execute if entity @s[type=allay,tag=!prison] unless entity @e[type=marker,tag=prison,distance=..0.3] run return 0
#execute unless entity @e[type=allay,tag=prison,tag=area,tag=!auto,tag=!auto1,tag=!auto2] run tag @s add prison
execute if score r NL_lib_alarm_status matches 0 at @e[type=marker,tag=area,tag=prison,limit=1] if entity @s[type=allay,tag=area,tag=auto,tag=prison,distance=..0.3] if entity @e[distance=..0.3,type=allay,tag=prison,tag=area,tag=!auto] run function nishalabyrinth:system/prison/jail_break
execute if entity @e[type=marker,limit=1,tag=prison,tag=area,distance=..0.3] unless entity @e[type=allay,distance=0.1..,tag=prison,tag=area] run tag @s remove auto
#execute unless entity @e[type=allay,tag=prison,tag=area,tag=!auto] run tag @s remove auto1
#execute unless entity @e[type=allay,tag=prison,tag=area,tag=!auto] run tag @s remove auto2
#execute unless entity @e[type=allay,tag=prison,tag=area,tag=!auto] run tag @s remove auto

#execute if entity @e[type=allay,tag=prison,tag=area] run function nishalabyrinth:system/prison/jail_break

