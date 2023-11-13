execute if entity @a[team=explorer,tag=police] at @a[team=gate_keeper] if entity @a[team=explorer,tag=police,distance=16..] run effect give @a[team=explorer,tag=police] minecraft:invisibility 3
execute if entity @a[team=explorer,tag=police] at @a[team=gate_keeper] if entity @a[team=explorer,tag=police,distance=..15] run effect clear @a[team=explorer,tag=police] minecraft:invisibility
execute as @a[team=explorer,tag=police,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]},predicate=nishalabyrinth:status/invisibility,limit=1] run clear @s carved_pumpkin
execute as @a[team=explorer,tag=police,nbt={Inventory:[{id:"minecraft:air",Slot:103b}]},predicate=!nishalabyrinth:status/invisibility,limit=1] run item replace entity @s armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:341,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1

execute as @a[team=explorer,tag=police,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flashlight:1b}}}] at @s anchored eyes run function nishalabyrinth:system/hitboxes/ray
execute as @a[team=explorer,tag=police,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flashlight:1b}}}] at @s anchored eyes facing entity @a[team=gate_keeper] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players add @a[team=gate_keeper,distance=..12,tag=!immune_flash] NL_being_lighted 1

execute store result bossbar nl:lighted_time value run scoreboard players get @a[team=gate_keeper,limit=1] NL_being_lighted
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] run effect give @a[team=explorer,tag=police] speed 5 1 true
execute at @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] run playsound minecraft:flash_success master @a
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] run function nishalabyrinth:system/gate_keeper/stun/stun_sound
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] as @a[team=explorer,tag=police] run scoreboard players add @s NL_stun_time_var 100
#effect give @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] slowness 3 50 true
#effect give @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] blindness 5
#tag @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable] add atk_stun
#execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45},tag=!unstoppable,tag=atk_stun,tag=!immune_flash] run schedule function nishalabyrinth:system/gate_keeper/stun/stun_finish 3s

tag @a[team=gate_keeper,scores={NL_being_lighted=45}] add immune_flash
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=1..}] run bossbar set nl:lighted_time visible true
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=0}] run bossbar set nl:lighted_time visible false
#execute unless entity @a[team=explorer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @a[team=gate_keeper] NL_being_lighted 0
#execute as @a[team=explorer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run tag @a[team=gate_keeper,distance=..15] add lighted
#execute as @a[team=gate_keeper,tag=lighted] if entity @p[team=explorer, distance= 15] run tag @s remove lighted
#execute if entity @a[team=gate_keeper,tag=!lighted,scores={NL_being_lighted=1..}] run scoreboard players set @a[team=gate_keeper] NL_being_lighted 0
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45}] run schedule function nishalabyrinth:system/hitboxes/im_to_flash 30s
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45}] run scoreboard players add @a[team=explorer,tag=police,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flashlight:1b,Disabled:0b}}}] NL_flash_used 1
execute if entity @a[team=gate_keeper,scores={NL_being_lighted=45}] as @a[team=explorer,tag=police,scores={NL_flash_used=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flashlight:1b,Disabled:0b}}}] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/police_wp2
scoreboard players set @a[team=explorer,tag=police,scores={NL_flash_used=1}] NL_flash_used 0
scoreboard players set @a[team=gate_keeper,scores={NL_being_lighted=45}] NL_being_lighted 0