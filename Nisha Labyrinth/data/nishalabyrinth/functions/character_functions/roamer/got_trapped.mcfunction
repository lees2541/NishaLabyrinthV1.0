tag @s add trapped
tag @s add trap_detected
tag @s add detected
scoreboard players set @s trap_detected 1
scoreboard players set @s NL_trapped_time 1
scoreboard players add @a[team=gate_keeper,tag=roamer] num_of_trap 1
tellraw @a {"text": "누군가가 덫을 밟았습니다!"}
scoreboard players set @a[team=gate_keeper,tag=roamer] NL_cool1 0


execute as @a at @s run playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.5
schedule function nishalabyrinth:character_functions/roamer/trap_sound 3t

effect give @s slowness 4 50 
effect give @s jump_boost 100 128 
effect give @s glowing 6 0
scoreboard players add @s NL_fear 1

data merge entity @e[type=glow_item_frame,distance=..0.75,limit=1,nbt={Item:{id:"minecraft:egg"}},sort=nearest] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b},Tags:["NL"]}



