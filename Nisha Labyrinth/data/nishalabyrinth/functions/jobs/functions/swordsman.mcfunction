function nishalabyrinth:jobs/functions/explorer
tag @p add swordsman
tag @p add ndef_mod
tag @p add starter
tag @p remove 1st_mod
tag @p remove 2nd_mod
tag @p remove 3nd_mod
scoreboard players set @p def_mod_time 0
give @p warped_fungus_on_a_stick
execute as @p run function nishalabyrinth:character_functions/swordsman/overriding_bkwp
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/sm_image
execute as @p if entity @s[name=!Mobystross] run item replace entity @s armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:335,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
execute as @p if entity @s[name=Mobystross] run item replace entity @s[team=!gate_keeper] armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:337,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1