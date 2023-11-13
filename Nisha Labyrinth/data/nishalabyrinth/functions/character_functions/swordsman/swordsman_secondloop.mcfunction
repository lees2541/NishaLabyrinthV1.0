execute if entity @a[team=explorer, scores={NL_minedConc=1}] run function nishalabyrinth:character_functions/swordsman/overriding_wp



execute if score r total_minedConc matches 1 run tag @a[tag=swordsman ] add 1st_mod
execute if score r total_minedConc matches 2 run tag @a[tag=swordsman ] add 2nd_mod
execute if score r total_minedConc matches 3 run tag @a[tag=swordsman] add 3rd_mod
execute if entity @a[team=explorer,scores={NL_minedConc=1}] as @a[team=explorer,tag=swordsman,tag=1st_mod,tag=! 2nd_mod,tag=! 3rd_mod] run clear @a[team=explorer, tag=swordsman,tag=1st_mod,tag=!2nd_mod] lapis_lazuli 1