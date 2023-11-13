execute as @s[type=trident,tag=!moving,nbt={inGround:1b}] run scoreboard players set @a[team=gate_keeper,tag=tellus] NL_trident_return 0
execute as @s[type=trident,tag=!moving,nbt={inGround:1b}] run tag @s add moving
execute as @e[type=trident,tag=moving] run scoreboard players add @a[team=gate_keeper,tag=tellus,scores={NL_trident_return=..100}] NL_trident_return 1
#execute as @e[type=trident,tag=moving] run effect give @a[team=gate_keeper,tag=tellus] slowness 3 1
execute if entity @e[type=trident,tag=moving] run schedule function nishalabyrinth:character_functions/tellus/trident_return 2t replace