execute as @e[tag=bobbertp,limit=3] at @s facing entity @a[team=explorer,tag=fisher,limit=1] eyes run teleport ^ ^ ^0.5
execute as @a[team=explorer,tag=!fisher,tag=bobbertp] at @s if entity @a[team=explorer,tag=fisher,distance=..1.1] if block ~ ~ ~ air run kill @e[tag=bobbertp,type=armor_stand,tag=!bobber]
execute as @a[team=explorer,tag=!fisher,tag=bobbertp] at @s if entity @a[team=explorer,tag=fisher,distance=..1.1] if block ~ ~ ~ tall_grass run kill @e[tag=bobbertp,type=armor_stand,tag=!bobber]
execute as @a[team=explorer,tag=bobbertp] at @s if entity @a[team=explorer,tag=fisher,distance=..0.5] positioned as @a[team=explorer,tag=fisher,distance=..0.5,limit=1,sort=nearest] run tp ~ ~0.2 ~
execute as @a[team=explorer,tag=bobbertp] at @s if entity @a[team=explorer,tag=fisher,distance=..0.4] run kill @e[tag=bobbertp,type=armor_stand,tag=!bobber]
execute as @a[team=explorer,tag=bobbertp] unless entity @e[type=armor_stand,tag=bobbertp] run tag @s remove bobbertp
execute unless entity @e[type=armor_stand,tag=bobbertp] run stopsound @a master minecraft:lantern_pulling
execute if entity @e[type=armor_stand,tag=bobbertp] run schedule function nishalabyrinth:character_functions/fisher/lantern_moving 1t replace
