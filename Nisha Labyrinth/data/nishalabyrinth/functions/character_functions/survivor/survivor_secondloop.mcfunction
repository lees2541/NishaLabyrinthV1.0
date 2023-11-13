#execute if entity @a[team=explorer,scores={NL_minedRed=1..}] run tag @e[type=minecraft:glow_item_frame,sort=random,nbt={Item:{id:"minecraft:bamboo"}},tag=!berry,limit=1] add berry



#execute at @a[team=explorer,tag=survivor, scores={NL_cool1=..0}] run give @p apple 1
#execute at @a[team=explorer,tag=survivor, scores={NL_cool1=..0}] run scoreboard players set @p NL_cool1 170
execute as @a[scores={NL_usedGApple=1..}] run effect give @s saturation 1 4 true
execute as @a[scores={NL_usedBerry=1..}] run effect give @s saturation 1 3 true
execute as @a[scores={NL_usedGApple=1..,NL_fear=1..}] run scoreboard players remove @s NL_fear 1 
execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=explorer,distance=..4,predicate=!nishalabyrinth:system/heal] regeneration 2 1
#execute as @a[team=explorer,predicate=nishalabyrinth:system/heal] at @s unless entity @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect clear @s regeneration
execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=explorer,distance=..4] absorption 2 0
execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=explorer,distance=..4] speed 2 0
execute at @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:bamboo"},Fixed:1b},tag=campfire,tag=NL_used] run effect give @a[team=gate_keeper,distance=..6] glowing 2 0 true
#execute as @a[team=explorer,scores={NL_usedApple=1}] run effect give @s slowness 15 0 true
execute at @a[team=gate_keeper] run effect give @a[team=explorer, tag=survivor, distance=15..28] speed 2 0 true
scoreboard players set @a NL_usedBerry 0
scoreboard players set @a NL_usedGApple 0