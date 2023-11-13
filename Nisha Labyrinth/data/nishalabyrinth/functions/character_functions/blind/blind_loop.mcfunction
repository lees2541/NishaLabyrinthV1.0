execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]},scores={bat_mode=0}] run tag @s add switching
execute as @a[team=explorer,tag=blind,tag=switching,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]},scores={bat_mode=0}] if entity @e[type=bat,tag=pet,distance=..2] run tp @e[type=bat,tag=pet,limit=1] @s
execute as @a[team=explorer,tag=switching,tag=blind,scores={bat_mode=0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] at @s if entity @e[type=bat,tag=pet,distance=..2] run scoreboard players set @s bat_mode 1
execute as @a[team=explorer,tag=!switching,tag=blind,scores={bat_mode=1},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run scoreboard players set @s bat_mode 0
execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]},scores={bat_mode=0}] run tag @s add switching
execute as @a[team=explorer,tag=blind,scores={bat_mode=2},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run tag @s add switching

execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},scores={NL_fstick_used=1..,bat_mode=2}] run scoreboard players set @s NL_fstick_used 0
execute as @a[team=explorer,tag=blind,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},scores={NL_fstick_used=1..,bat_mode=1}] at @s unless entity @e[type=bat,tag=pet,distance=..13] run scoreboard players set @s bat_mode 2
execute if entity @a[team=explorer,tag=blind,scores={bat_mode=2}] run function nishalabyrinth:character_functions/blind/blind_ulti

execute as @a[team=explorer,tag=blind,predicate=nishalabyrinth:sneak,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run function nishalabyrinth:character_functions/blind/blind_sneak
execute as @a[team=explorer,tag=blind,predicate=!nishalabyrinth:sneak,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1003303}}]}] run function nishalabyrinth:character_functions/blind/overriding_wp
execute as @a[team=explorer,tag=blind,predicate=!nishalabyrinth:sneak] run kill @e[type=armor_stand,tag=compass]


execute if entity @a[team=explorer,tag=blind,scores={bat_mode=0}] run function nishalabyrinth:character_functions/blind/bat_call
#execute as @e[tag=pet,type=bat] at @s if entity @a[team=gate_keeper,distance=..12] run data merge entity @e[tag=pet,type=bat,limit=1] {BatFlags:0b}
execute as @e[tag=pet,type=bat] at @s if entity @a[team=explorer,tag=blind,scores={bat_mode=1}] unless entity @a[team=explorer,distance=..2] run data merge entity @e[tag=pet,type=bat,limit=1] {BatFlags:1b}
execute as @e[tag=pet,type=bat,nbt={Glowing:1b}] at @s run effect give @a[team=gate_keeper,distance=..10] glowing 3
execute as @e[tag=pet,type=bat,nbt=!{Glowing:1b},tag=!charged] at @s unless entity @a[team=explorer,tag=blind,distance=..2] run tag @s add charged
#execute as @e[tag=pet,type=bat,nbt=!{Glowing:1b},tag=!charged] at @s unless entity @a[team=explorer,tag=blind,distance=..3] run schedule function nishalabyrinth:character_functions/blind/bat_stay 3s

execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist at @s run effect give @a[team=gate_keeper,tag=!unstoppable,sort=nearest] blindness 2
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist run effect give @a[team=gate_keeper,tag=!unstoppable,limit=1,sort=nearest] slowness 1 250
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist at @s run playsound minecraft:bat_stun master @a ~ ~ ~ 0.8
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1,tag=!sound] if predicate nishalabyrinth:explorer/blind_bat_stun_dist run function nishalabyrinth:system/gate_keeper/stun/stun_sound
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist run tag @a[team=gate_keeper,tag=!unstoppable,limit=1,sort=nearest] add atk_stun
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist run schedule function nishalabyrinth:system/gate_keeper/stun/stun_finish 2s
execute as @e[type=bat,tag=pet,tag=charged,nbt={BatFlags:0b}] at @e[team=gate_keeper,limit=1] if predicate nishalabyrinth:explorer/blind_bat_stun_dist run tag @s remove charged

execute as @e[tag=pet,type=bat] at @s unless entity @a[team=explorer,tag=blind,distance=..2] run data merge entity @e[tag=pet,type=bat,limit=1] {Glowing:1b}
execute as @e[tag=pet,type=bat] at @s if entity @a[team=explorer,tag=blind,distance=..2] run data merge entity @e[tag=pet,type=bat,limit=1] {Glowing:0b}
execute as @e[tag=pet,type=bat] at @s if entity @a[team=explorer,tag=blind,distance=..2] run data merge entity @e[tag=pet,type=bat,limit=1] {BatFlags:0b}


execute as @e[tag=pet,type=bat] at @s if entity @a[team=explorer,tag=blind,distance=..3,scores={bat_mode=0}] run effect give @a[team=explorer,tag=blind,distance=..3] blindness 3

execute as @e[tag=pet,type=bat] at @s if entity @a[team=explorer,tag=blind,distance=3..] run effect clear @a[team=explorer,tag=blind,distance=3.2..] blindness
execute as @a[team=explorer,tag=blind,scores={bat_mode=1}] run effect clear @s blindness


execute as @a[team=explorer,tag=blind,tag=switching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @a[team=explorer,tag=blind,tag=switching] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
execute as @a[team=explorer,tag=blind,tag=switching,scores={bat_mode=1}] run function nishalabyrinth:character_functions/blind/overriding_wp
execute as @a[team=explorer,tag=blind,tag=switching,scores={bat_mode=0}] at @s unless entity @e[type=bat,tag=pet,distance=..2] run playsound minecraft:bat_call master @s ~ ~ ~ 0.1
execute as @a[team=explorer,tag=blind,tag=switching,scores={bat_mode=0}] at @s unless entity @e[type=bat,tag=pet,distance=..2] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/blind_wp2
execute as @a[team=explorer,tag=blind,tag=switching,scores={bat_mode=2}] at @s unless entity @e[type=bat,tag=pet,distance=..2] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/blind_wp2
#item modify entity @a[team=explorer,tag=blind,tag=switching] weapon.mainhand nishalabyrinth:items/gate_keeper/blind_wp
execute as @a[team=explorer,tag=blind,limit=1] at @s facing entity @a[team=gate_keeper,limit=1,sort=nearest] eyes run tp @e[type=armor_stand,tag=compass,limit=1] ^ ^ ^0.5 facing entity @a[team=gate_keeper,limit=1,sort=nearest] eyes
tag @a[team=explorer,tag=blind,tag=switching] remove switching


## 되는거



