
execute if score r NL_altar_guage matches 1..1199 as @a[team=gate_keeper] at @s if entity @e[distance=..3,tag=tainted,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:lime_dye"},ItemRotation:1b}] run scoreboard players remove r NL_altar_guage_var 300
execute if score r NL_altar_guage matches 1500 as @a[team=gate_keeper] at @s if entity @e[distance=..3,tag=tainted,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:lime_dye"},ItemRotation:1b}] run scoreboard players add r NL_altar_guage_var 100
scoreboard players set @a[team=gate_keeper] NL_altar_curse -1
execute if score r NL_red_progress matches 9 run effect give @a[team=explorer] glowing 10
execute as @a at @s run playsound minecraft:corrupt master @s ~ ~ ~ 0.7
execute at @a[team=gate_keeper] as @e[distance=..3,tag=tainted,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:lime_dye"},ItemRotation:1b}] run tag @s remove tainted
execute at @a[team=gate_keeper] as @e[distance=..3,tag=!tainted,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:lime_dye"},ItemRotation:1b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:bamboo"},Tags:["NL"]}


execute if score r NL_lib_alarm_status matches 0 run scoreboard players add r NL_lib_alarm 700
return 1