kill @s
execute if block ~ ~ ~ light run setblock ~ ~ ~ air
#execute as @e[type=marker,tag=light_block] unless entity @a[team=gate_keeper,predicate=nishalabyrinth:sprinting,distance=..2] if block ~ ~ ~ light at @s run setblock ~ ~ ~ air destroy
#execute as @a[team=gate_keeper,tag=light_block] unless entity @a[team=gate_keeper,predicate=nishalabyrinth:sprinting,distance=..2] as @s run kill @s