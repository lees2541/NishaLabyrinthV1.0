#particle crit ~ ~ ~ 0 0 0 0 1
execute as @a[dx=0,team=gate_keeper] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 5 0 true
execute as @a[dx=0,team=gate_keeper] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s slowness 1 0
#execute as @a[dx=0,team=gate_keeper] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s hero_of_the_village 1
execute as @a[dx=0,team=gate_keeper] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] as @a[team=explorer,tag=police] run effect give @a[team=explorer,tag=police] speed 1 1

#execute as @e[dx=0,team=gate_keeper] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function nishalabyrinth:system/hitboxes/being_lighted

execute positioned ^ ^ ^1 unless block ~ ~ ~ note_block unless block ~ ~ ~ acacia_planks unless block ~ ~ ~ stone run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 unless block ~ ~ ~ note_block unless block ~ ~ ~ acacia_planks unless block ~ ~ ~ stone run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 unless block ~ ~ ~ acacia_planks run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ air run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ cobblestone_slab run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ stone_slab run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ andesite_slab run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ iron_ore run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ diorite_slab run function nishalabyrinth:system/hitboxes/ray
#execute positioned ^ ^ ^1 if block ~ ~ ~ diorite run function nishalabyrinth:system/hitboxes/ray

