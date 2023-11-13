execute as @e[type=armor_stand,tag=bobber] at @s if entity @a[team=explorer,tag=!fisher,distance=..1.5] run tag @s add bobbertp
execute if entity @a[team=explorer,tag=!fisher,tag=!bobber_tp] as @e[type=armor_stand,tag=bobber] at @s run playsound minecraft:lantern_pulling master @a ~ ~ ~ 0.6
execute as @e[type=armor_stand,tag=bobber,tag=bobbertp] at @s run tag @a[team=explorer,distance=..1.5] add bobbertp
tag @e[type=armor_stand,tag=bobber,tag=bobbertp] remove bobber
execute if entity @e[type=armor_stand,tag=bobbertp] run kill @e[type=fishing_bobber]
#execute as @e[type=armor_stand,tag=bobber,tag=bobbertp] at @s run teleport @a[team=explorer,tag=!fisher,distance=..1.5] @a[team=explorer,tag=fisher,limit=1]
execute as @e[type=armor_stand,tag=!bobber,tag=bobbertp] at @s run effect give @a[team=explorer,distance=..1.5] glowing 4 0
#execute as @e[type=armor_stand,tag=!bobber,tag=bobbertp] at @s run effect give @a[team=explorer,distance=..1.5] hero_of_the_village 4 0
function nishalabyrinth:character_functions/fisher/lantern_moving