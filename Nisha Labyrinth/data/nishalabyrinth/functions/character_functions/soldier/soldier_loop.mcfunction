execute as @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] run give @a[team=explorer,tag=soldier,scores={NL_damage_taken=1..}] arrow{NL:1b} 1
execute if entity @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] as @a[team=explorer,tag=soldier,scores={NL_damage_taken=1..}] run scoreboard players set @s request_time 1
execute if entity @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] as @a[team=explorer,tag=soldier,scores={NL_damage_taken=1..}] run effect give @a[team=explorer, tag=soldier] absorption 50 0 true
execute if entity @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] as @a[team=explorer,tag=soldier,scores={NL_damage_taken=1..}] run effect give @a[team=explorer, tag=soldier] regeneration 1 3 true
execute if entity @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] as @a[team=explorer,tag=soldier,scores={NL_damage_taken=1..}] at @a[team=explorer] run playsound minecraft:admit master @a[team=explorer]
execute as @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] run effect give @s speed 3 0
execute as @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] run effect give @s absorption 10 0
execute as @a[team=explorer,tag=!soldier,scores={NL_damage_dealt=1..},nbt={SelectedItem:{id:"minecraft:paper"}}] run clear @s paper 1
execute if entity @a[team=explorer,tag=!soldier,scores={gk_touch=1..}] if entity @a[team=explorer,tag=soldier,scores={request_time=1..}] run effect give @a[team=explorer,scores={gk_touch=1..}] instant_damage 1 0
execute if entity @a[team=explorer,tag=!soldier,scores={gk_touch=1..}] if entity @a[team=explorer,tag=soldier,scores={request_time=1..}] run effect give @a[team=soldier,scores={request_time=1..}] instant_damage 1 0
execute if entity @a[team=explorer,tag=soldier,scores={request_time=1..}] as @a[team=explorer,tag=!soldier,scores={gk_touch=1..}] run scoreboard players set @s gk_touch 0
execute as @a[tag=soldier] at @s if entity @a[team=gate_keeper,distance = ..28] run tag @s add cool1p
execute as @a[tag=soldier] at @s if entity @a[team=gate_keeper,distance = 28..] run tag @s remove cool1p


execute as @p[team=explorer,tag=soldier] at @s anchored eyes facing entity @a[team=explorer,tag=!soldier,limit=1,distance=..13] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run effect give @a[team=explorer,tag=soldier] speed 1 1
execute as @a[scores={NL_damage_taken=1..},tag=soldier] run effect give @s minecraft:speed 3 0
#execute if entity @a[team=explorer,tag=soldier,scores={request_time=1..}] at @a[tag=soldier] run tp @a[team=explorer,distance=..4] @e[type=arrow,nbt={inGround:1b},limit=1]
execute if entity @a[team=explorer,tag=soldier,scores={request_time=1..}] as @e[type=arrow,limit=1,nbt=!{inGround:1b}] at @s run ride @a[team=explorer,distance=..4,limit=1] mount @s

effect give @a[scores={gk_touch=1..},tag=soldier] speed 4 1 false
effect give @a[scores={gk_touch=1..},tag=soldier] glowing 4 0
#effect give @a[scores={gk_touch=1..},tag=soldier] minecraft:hero_of_the_village 4
execute if entity @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]}] as @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]}] run tag @s add switching
execute if entity @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1 = ..0}] at @a run playsound minecraft:dash player @a
execute as @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1 = ..0}] run effect give @s glowing 2 0
#execute as @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1 = ..0}] run effect give @s hero_of_the_village 2
execute at @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1 = ..0}] run particle minecraft:explosion ~ ~ ~ 0 0 0 1.2 15
tag @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1=..0}] remove skill_ready
advancement revoke @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1=..0}] only nishalabyrinth:character/soldier/skill2
execute if entity @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1=..0}] run effect give @a[team=explorer,tag=soldier] speed 2 1

execute if entity @a[team=explorer,tag=soldier,nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b}]},scores={NL_cool1=..0}] run scoreboard players set @a[team=explorer,tag=soldier] NL_cool1 20
execute as @a[tag=soldier,tag=switching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @a[tag=soldier,tag=switching] run item replace entity @s weapon.mainhand with crossbow 1
execute as @a[tag=soldier,tag=switching] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/soldier_wp1
execute as @a[tag=soldier,tag=switching] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/soldier_wp_used
execute if entity @a[team=explorer,tag=soldier,tag=switching] run tag @a[tag=soldier,tag=switching] remove switching
#effect give @a[scores={gk_touch=1..,first_aid=151},tag=soldier] regeneration 6 2
#scoreboard players set @a[scores={gk_touch=1..,first_aid=151},tag=soldier] soldier_cool 0 
#scoreboard players set @a[scores={gk_touch=1..,first_aid=151},tag=soldier] first_aid 0
effect give @a[scores={NL_Food=1..},tag=soldier] speed 10 0
execute if entity @e[type=arrow,nbt={inGround:1b}] run scoreboard players set @a[team=explorer,tag=soldier] request_time 0
execute if entity @e[type=arrow,nbt={inGround:1b}] if entity @a[team=explorer,tag=soldier, scores={request_time=1..}] at @a[team=explorer, tag=soldier] run effect give @a[team=explorer, distance=..3] night_vision 2