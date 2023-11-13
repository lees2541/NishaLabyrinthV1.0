scoreboard players set @a[team=gate_keeper] NL_altar_curse 1
tag @a[team=gate_keeper] remove cursed
scoreboard players set r NL_count 0
execute as @e[type=glow_item_frame,tag=NL_used,tag=tainted] run scoreboard players add r NL_count 1
execute if score r NL_count matches ..4 as @e[tag=!training,type=minecraft:glow_item_frame,sort=random,nbt={Item:{id:"minecraft:bamboo"}},tag=!NL_used,tag=NL,tag=!tainted,limit=1,tag=!near_altar] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:lime_dye"},Tags:["NL","tainted","NL_used"]}
scoreboard players set r NL_count 0
