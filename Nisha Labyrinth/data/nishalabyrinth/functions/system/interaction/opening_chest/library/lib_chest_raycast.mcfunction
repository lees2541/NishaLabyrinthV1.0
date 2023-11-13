#say yeah
execute align xyz if block ~ ~ ~ chest if data block ~ ~ ~ {Lock:"key"} run return 3
#particle campfire_cosy_smoke ~ ~ ~ 0 0 0 1 0 normal
#tp ~ ~ ~
execute if entity @s[team=gate_keeper] align xyz if block ~ ~ ~ chest run function nishalabyrinth:system/interaction/opening_chest/library/gate_keeper/opened_by_gk
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chests,tag=library,distance=..2,tag=occupied] run return 3
execute align xyz if block ~ ~ ~ chest as @e[sort=nearest,limit=1,type=marker,tag=chests,tag=library,distance=..2] run tag @s add occupied
execute align xyz if block ~ ~ ~ chest if entity @e[type=marker,tag=library,tag=chests,tag=lifestone,limit=1,distance=..2,tag=occupied] run function nishalabyrinth:system/library/chest_looting/take_lifestone
execute align xyz if block ~ ~ ~ chest if entity @e[type=marker,tag=library,tag=chests,tag=prison_key,limit=1,distance=..2,tag=occupied] run function nishalabyrinth:system/library/chest_looting/take_prison_key
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chests,tag=library,distance=..2] run return 1
execute unless entity @e[type=marker,tag=NL,distance=..6] run return 2
execute positioned ^ ^ ^0.2 run function nishalabyrinth:system/interaction/opening_chest/library/lib_chest_raycast