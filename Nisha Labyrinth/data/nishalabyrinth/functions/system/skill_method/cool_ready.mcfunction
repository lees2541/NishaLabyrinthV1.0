execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run item modify entity @s hotbar.0 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:1b}]}] run item modify entity @s hotbar.1 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run item modify entity @s hotbar.2 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:3b}]}] run item modify entity @s hotbar.3 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:4b}]}] run item modify entity @s hotbar.4 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:5b}]}] run item modify entity @s hotbar.5 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:6b}]}] run item modify entity @s hotbar.6 nishalabyrinth:items/cool_ready

execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:0b}]}] run item modify entity @s hotbar.0 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:1b}]}] run item modify entity @s hotbar.1 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:2b}]}] run item modify entity @s hotbar.2 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:3b}]}] run item modify entity @s hotbar.3 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:4b}]}] run item modify entity @s hotbar.4 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:5b}]}] run item modify entity @s hotbar.5 nishalabyrinth:items/cool_ready
execute as @a[scores={NL_cool1=..0},tag=!skill_ready,nbt={Inventory:[{id:"minecraft:crossbow",Slot:6b}]}] run item modify entity @s hotbar.6 nishalabyrinth:items/cool_ready

execute as @a[team=gate_keeper,tag=chopper,advancements={nishalabyrinth:character/chopper/skill3=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] at @s run playsound minecraft:gate_keeper_cool master @s
execute as @a[team=explorer,tag=swordsman,advancements={nishalabyrinth:character/swordsman/skill1=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] at @s run playsound minecraft:explorer_cool master @s
execute as @a[team=explorer,tag=soldier,advancements={nishalabyrinth:character/soldier/skill2=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] at @s run playsound minecraft:explorer_cool master @s
execute as @a[team=gate_keeper,tag=roamer,advancements={nishalabyrinth:character/roamer/skill2=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] at @s run playsound minecraft:gate_keeper_cool master @s

advancement grant @a[team=gate_keeper,tag=chopper,advancements={nishalabyrinth:character/chopper/skill3=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] only nishalabyrinth:character/chopper/skill3
advancement grant @a[team=explorer,tag=swordsman,advancements={nishalabyrinth:character/swordsman/skill1=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] only nishalabyrinth:character/swordsman/skill1
advancement grant @a[team=explorer,tag=soldier,advancements={nishalabyrinth:character/soldier/skill2=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] only nishalabyrinth:character/soldier/skill2
advancement grant @a[team=gate_keeper,tag=roamer,advancements={nishalabyrinth:character/roamer/skill2=false},limit=1,scores={NL_cool1=..0},tag=!skill_ready] only nishalabyrinth:character/roamer/skill2
