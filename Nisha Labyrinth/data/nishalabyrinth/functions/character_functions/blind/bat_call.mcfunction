execute as @a[team=explorer,tag=blind] at @s if entity @e[distance=..1.8,tag=pet,type=bat] as @e[limit=1,tag=pet,type=bat] at @a[distance=..1.8,team=explorer,tag=blind,scores={bat_mode=0}] run tp @e[type=bat,tag=pet,distance=..1.8] ^-1.1 ^1.2 ^1.1 facing ^ ^ ^
execute as @a[team=explorer,tag=blind] at @s if entity @e[distance=2..,tag=pet,type=bat] at @e[type=bat,tag=pet] facing entity @a[limit=1,distance=2..,team=explorer,tag=blind,scores={bat_mode=0}] eyes run tp @e[type=bat,tag=pet] ^ ^ ^0.6 facing ^ ^ ^5
execute as @a[team=explorer,tag=blind,scores={bat_mode=0}] run data merge entity @e[type=bat,tag=pet,limit=1] {BatFlags:0b}
execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1003302}}]}] at @s if entity @e[type=bat,tag=pet,distance=..2.0] run function nishalabyrinth:character_functions/blind/overriding_wp




