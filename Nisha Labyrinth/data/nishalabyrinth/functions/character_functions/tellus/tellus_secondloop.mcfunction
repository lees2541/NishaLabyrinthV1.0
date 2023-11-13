execute if entity @a[team=gate_keeper,scores={NL_stack=0 }] as @a[team=gate_keeper,tag=tellus] if score r NL_GK_minedC matches 1.. run scoreboard players set @s NL_stack 1
execute if entity @a[team=gate_keeper,scores={NL_stack=1 }] as @a[team=gate_keeper,tag=tellus] if score r NL_GK_minedC matches 2.. run scoreboard players set @s NL_stack 2
execute if entity @a[team=gate_keeper,scores={NL_stack=2 }] as @a[team=gate_keeper,tag=tellus] if score r NL_GK_minedC matches 3.. run scoreboard players set @s NL_stack 3
execute as @a[scores={NL_temp=0},team=gate_keeper,tag=tellus,nbt={SelectedItem:{id:"minecraft:trident"}}] run item modify entity @s weapon.mainhand nishalabyrinth:system/add_durability

scoreboard players add @a[team=explorer,scores={NL_chased=1..39},tag=chased] NL_chased 1
scoreboard players set @a[team=explorer,tag=chased,scores={NL_chased=40}] NL_chased 0
tag @a[team=explorer,scores={NL_chased=0}] remove chased
scoreboard players remove @e[type=glow_item_frame,tag=trace,scores={NL_timer=2..}] NL_timer 1
execute as @e[type=glow_item_frame,tag=NL_used,tag=trace,scores={NL_timer=1}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b},Tags:["NL"],Fixed:0b}
scoreboard players reset @e[type=glow_item_frame,scores={NL_timer=1}] NL_timer
