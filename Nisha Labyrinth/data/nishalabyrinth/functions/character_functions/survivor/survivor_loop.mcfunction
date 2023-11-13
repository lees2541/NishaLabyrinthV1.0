#execute at @a[team=explorer,tag=survivor] as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"}},tag=berry,distance=..5] run data merge entity @s {Item:{id:"minecraft:sweet_berries"},ItemRotation:0b}
#execute at @a[team=explorer,tag=survivor] as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"}},tag=berry,distance=6..] run data merge entity @s {Item:{id:"minecraft:bamboo"},ItemRotation:0b,Tags:["NL"]}
execute as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] at @s run effect give @a[team=explorer,scores={NL_Food=1..},distance=..4] saturation 1 1


execute at @a[team=explorer,tag=survivor] as @e[distance=..3,tag=berry,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"},ItemRotation:1b}] run effect give @a[team=explorer,tag=survivor,distance=..3,limit=1] speed 2 0
execute at @a[team=explorer,tag=survivor] as @e[distance=..3,tag=berry,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"},ItemRotation:1b}] run give @a[team=explorer,tag=survivor,distance=..3,limit=1] sweet_berries{NL:1b,Drop:1b} 1
execute at @a[team=explorer,tag=survivor] as @e[distance=..3,tag=berry,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"},ItemRotation:1b}] run tag @s remove berry
execute at @a[team=explorer,tag=survivor] as @e[distance=..3,tag=!berry,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"},ItemRotation:1b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:bamboo"},Tags:["NL"]}



execute positioned as @a[team=explorer,tag=survivor,nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},ItemRotation:1b},distance=..3,limit=1,sort=nearest,tag=!NL_used] run tag @s add campfire
execute if entity @e[type=glow_item_frame,tag=campfire] run tag @a[tag=survivor] add campfire

execute if entity @e[type=minecraft:glow_item_frame,tag=!NL_used,tag=campfire] run clear @a[team=explorer,tag=survivor,distance=..3] lapis_lazuli 1
execute positioned as @a[team=explorer,tag=survivor,nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},ItemRotation:1b},distance=..3,limit=1,sort=nearest,tag=!NL_used,tag=campfire] run tag @s add NL_used
execute as @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},ItemRotation:1b},sort=nearest,tag=NL_used,tag=campfire] run data merge entity @s {Fixed:1b}
execute positioned as @a[team=explorer,tag=survivor,nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},distance=..3,limit=1,sort=nearest,tag=campfire,tag=NL_used] run setblock ~ ~ ~ soul_campfire[signal_fire=false,waterlogged=false]{CookingTotalTimes:[I;0,100000,100000,100000],Items:[{Slot:1b,id:"minecraft:bowl",Count:1b},{Slot:2b,id:"minecraft:bowl",Count:1b},{Slot:3b,id:"minecraft:bowl",Count:1b}]}
execute if entity @a[team=explorer,tag=survivor,tag=campfire] run clear @a[team=explorer,tag=survivor,tag=campfire] lapis_lazuli


execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=gate_keeper,distance=..3] haste 2 11
execute if entity @a[team=gate_keeper,scores={NL_minedCamp=1..}] run tag @a[tag=survivor] remove campfire
execute if entity @a[team=gate_keeper,scores={NL_minedCamp=1..}] as @e[type=minecraft:glow_item_frame,tag=NL_used,tag=campfire] run data merge entity @s {Fixed:0b,Tags:["NL","NL_marker"],ItemRotation:0b}
execute as @a[team=gate_keeper,scores={NL_minedCamp=1..}] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:bowl"}},distance=..3]
execute if entity @a[team=gate_keeper,scores={NL_minedCamp=1..}] run scoreboard players reset @a NL_minedCamp

#execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=explorer,distance=..5,scores={}] regeneration 3 0


