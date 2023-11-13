
tag @s[tag=NL_developer,nbt={Inventory:[{tag:{summon:1b},id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] add sswitching

execute as @s[tag=NL_developer,nbt={SelectedItem:{tag:{summon:1b}}},scores={NL_carrotst_used=1},predicate=!nishalabyrinth:sneak] run function nishalabyrinth:system/info_book/developer_mod/library/summon_pathfind_mob
execute as @s[tag=NL_developer,nbt={Inventory:[{tag:{summon:1b},id:"minecraft:carrot_on_a_stick",Slot:-106b}]},predicate=!nishalabyrinth:sneak] run function nishalabyrinth:system/info_book/developer_mod/library/kill_pathfind_mob
execute as @s[tag=NL_developer,nbt={SelectedItem:{tag:{summon:1b}}},scores={NL_carrotst_used=1,NL_lib_route=4},predicate=nishalabyrinth:sneak] run scoreboard players set @s NL_lib_route 0
execute as @s[tag=NL_developer,nbt={SelectedItem:{tag:{summon:1b}}},scores={NL_carrotst_used=1,NL_lib_route=0..3},predicate=nishalabyrinth:sneak] run scoreboard players add @s NL_lib_route 1



execute as @s[tag=NL_developer,tag=sswitching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @s[tag=NL_developer,tag=sswitching] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"소환막대","color":"yellow"}'},summon:1b,NL:1b,dev:1b}
tag @s remove sswitching