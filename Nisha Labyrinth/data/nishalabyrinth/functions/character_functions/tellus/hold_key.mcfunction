scoreboard players add @s[tag=tellus,team=gate_keeper] NL_temp 1
execute if score @s NL_temp matches 1 as @s run function nishalabyrinth:character_functions/tellus/charge_start
execute unless entity @e[type=marker,tag=tellus_tp] as @s[tag=tellus,team=gate_keeper,predicate=nishalabyrinth:sneak] run function nishalabyrinth:character_functions/tellus/summon_marker
execute if score @s NL_temp matches 20.. as @a[team=explorer,predicate=nishalabyrinth:sprinting] at @s if entity @e[type=glow_item_frame,tag=!NL_used,distance=..0.2,limit=1,sort=nearest] run effect give @s glowing 3



execute if entity @e[type=marker,tag=tellus_tp] as @s run function nishalabyrinth:character_functions/tellus/tp_charging
#item modify entity @s[nbt=!{SelectedItem:{Damage:242,id:"minecraft:trident"}}] weapon.mainhand nishalabyrinth:system/reduce_durability
#execute if score @s NL_temp matches 40 run item modify entity @s weapon.maihand nishalabyrinth:system/unbreaking
#execute if entity @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp] positioned as @e[type=marker,tag=tellus_tp,limit=1] as @e[type=glow_item_frame,tag=NL,sort=nearest,limit=1] unless entity @s[tag=tellus_tp] run function nishalabyrinth:character_functions/tellus/change_mark

#execute unless entity @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp] positioned as @e[type=marker,tag=tellus_tp,limit=1] run data merge entity @e[type=glow_item_frame,tag=!NL_used,sort=nearest,limit=1] {Tags:["NL","NL_used","tellus_tp"]}
#execute unless entity @e[type=armor_stand,tag=tellus_tp] positioned as @e[type=glow_item_frame,tag=tellus_tp,limit=1,sort=nearest] run summon armor_stand ~ ~1 ~ {Small:1b,Team:"NL_red",NoGravity:1b,Invulnerable:1b,Glowing:1b,Tags:["tellus_tp","NL"]}


#execute if entity @e[team=NL_red,type=glow_item_frame,tag=NL_used,tag=tellus_tp] positioned as @e[type=armor_stand,tag=tellus_tp,limit=1] as @e[type=glow_item_frame,tag=NL,sort=nearest,limit=1] unless entity @s[team=NL_red] run team leave @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp,limit=1,sort=arbitrary]
#data merge entity @e[team=!NL_red,type=glow_item_frame,tag=NL_used,tag=tellus_tp,limit=1,sort=arbitrary] {Tags:["NL"]}

#execute unless entity @e[type=glow_item_frame,team=NL_red] as @e[type=armor_stand,tag=tellus_tp,limit=1] at @s run data merge entity @e[type=glow_item_frame,tag=!NL_used,sort=nearest,limit=1] {Tags:["NL","NL_used","tellus_tp"]}
#execute if entity @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp,team=!NL_red] run team join NL_red @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp]

#execute unless entity @e[team=NL_red,type=glow_item_frame] positioned as @a[team=gate_keeper] run team join NL_red @e[team=!NL_red,type=glow_item_frame,tag=NL,distance=..7,limit=1,sort=nearest]
#execute as @e[team=NL_red,type=glow_item_frame] run say hi
#execute if entity @e[type=glow_item_frame,team=NL_red] run say hi
#execute as @e[type=marker,tag=tellus_tp,limit=1] at @s run data merge entity @e[type=glow_item_frame,tag=NL,tag=NL_used,tag=tellus_tp,distance=3..,limit=1] {Glowing:0b,Tags:["NL"]}







schedule function nishalabyrinth:character_functions/tellus/hold_cancel 2t replace