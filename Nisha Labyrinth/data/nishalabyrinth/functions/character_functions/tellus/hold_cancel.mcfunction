scoreboard players set @a[team=gate_keeper,tag=tellus,scores={NL_temp=1..}] NL_temp 0
execute as @e[type=glow_item_frame,tag=tellus_tp] run team join NL_gk_only @s
execute as @e[type=glow_item_frame,tag=tellus_tp] run data merge entity @s {Tags:["NL"]}
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s anchored eyes facing entity @e[type=armor_stand,tag=tellus_tp,limit=1,sort=nearest] eyes positioned as @e[type=armor_stand,tag=tellus_tp,limit=1,sort=nearest] run tp @s ~ ~ ~ facing ^ ^ ^1
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run effect give @a[team=explorer,distance=..2.5] instant_damage 1 0
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run playsound minecraft:tattack1 master @a
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run playsound minecraft:tattack2 master @a
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run particle minecraft:crimson_spore ~ ~ ~ 3 3 3 1 250
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1.5 50
execute as @a[team=gate_keeper,tag=tellus,predicate=nishalabyrinth:sneak,limit=1,nbt={SelectedItem:{id:"minecraft:trident"}}] run effect give @s speed 2 0

execute if entity @e[type=trident] run clear @a[team=gate_keeper,tag=tellus] trident

stopsound @a master minecraft:tcharge
stopsound @a master minecraft:tcharge_c

kill @e[type=armor_stand,tag=tellus_tp]
kill @e[type=marker,tag=tellus_tp]
execute as @e[type=glow_item_frame,tag=NL,nbt={Glowing:1b,Facing:1b}] run data merge entity @s {Glowing:0b}
#execute as @e[type=glow_item_frame,team=NL_blue,tag=NL] run team leave @s
#clear @a[team=gate_keeper,tag=tellus,nbt={SelectedItem:{id:"minecraft:trident"}}] trident

bossbar set nl:tellus visible false
schedule clear nishalabyrinth:character_functions/tellus/hold_key_loop
