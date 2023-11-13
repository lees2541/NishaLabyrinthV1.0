execute as @s[team=explorer,tag=blind,scores={NL_fstick_used=1..,bat_mode=2}] at @s run playsound minecraft:blind_ulti master @a ~ ~ ~ 0.5
execute as @a[team=explorer,tag=blind,scores={bat_mode=2,NL_fstick_used=1..}] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/blind_wp2
execute as @a[team=explorer,tag=blind,scores={NL_fstick_used=1..,bat_mode=2}] run clear @s lapis_lazuli 1
execute as @a[team=explorer,tag=blind] at @s if entity @e[distance=2..,tag=pet,type=bat] positioned as @e[type=bat,tag=pet] facing entity @a[limit=1,distance=2..,team=explorer,tag=blind,scores={bat_mode=2}] eyes run tp @e[type=bat,tag=pet] ^ ^ ^0.6 facing ^ ^ ^5
execute as @a[team=explorer,tag=blind,scores={bat_mode=2}] run data merge entity @e[type=bat,tag=pet,limit=1] {BatFlags:0b}
execute as @e[type=bat,tag=pet,limit=1] at @s if entity @a[team=gate_keeper,tag=!unstoppable,distance=..6,tag=!sound] run scoreboard players add @a[team=explorer,tag=blind] NL_stun_time_var 80
#execute as @e[type=bat,tag=pet,limit=1] at @s if entity @a[team=gate_keeper,tag=!unstoppable,distance=..6,tag=!sound] run function nishalabyrinth:system/gate_keeper/stun/stun_sound
execute as @e[type=bat,tag=pet,limit=1] at @s run tag @a[team=gate_keeper,tag=!unstoppable,distance=..6] add sound 
#execute as @e[type=bat,tag=pet,limit=1] at @s run effect give @a[team=gate_keeper,tag=!unstoppable,distance=..6] blindness 4
#execute as @e[type=bat,tag=pet,limit=1] at @s run effect give @a[team=gate_keeper,tag=!unstoppable,distance=..6] slowness 3 12

#execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1003302}}]}] at @s if entity @e[type=bat,tag=pet,distance=..2.0] run function nishalabyrinth:character_functions/blind/overriding_wp
execute as @e[type=bat,tag=pet,limit=1] at @s run scoreboard players set @a[team=explorer,tag=blind,scores={bat_mode=2},distance=..2.1] bat_mode 0
execute at @e[type=bat,tag=pet,limit=1] if entity @a[team=explorer,tag=blind,scores={bat_mode=0},distance=..2.1] run tag @a[team=gate_keeper,tag=sound] remove sound




