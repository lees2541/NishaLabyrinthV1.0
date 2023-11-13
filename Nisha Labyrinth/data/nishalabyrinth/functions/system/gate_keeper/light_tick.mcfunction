
execute at @a[team=gate_keeper] as @e[type=marker,tag=light_block,distance=1.5..] at @s run function nishalabyrinth:system/gate_keeper/light_delete

execute as @a[team=gate_keeper,predicate=nishalabyrinth:sprinting,predicate=!nishalabyrinth:at_grass] at @s run function nishalabyrinth:system/gate_keeper/light_set
