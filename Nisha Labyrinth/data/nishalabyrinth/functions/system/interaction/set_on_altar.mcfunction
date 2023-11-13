execute at @s as @e[type=interaction,tag=altar,tag=NL,distance=..3] if data entity @s attack positioned as @s run setblock ~ ~1 ~ minecraft:redstone_wire keep
execute as @e[type=interaction,tag=altar,tag=!altar_side] on attacker run effect give @s[team=explorer,tag=!police] minecraft:glowing 13
execute as @e[type=interaction,tag=altar,tag=!altar_side] on attacker run effect give @s[team=explorer,tag=police] minecraft:glowing 3


#execute store result score #redstone NL_return as @s run function nishalabyrinth:system/altar/set_on/clear_redstone

#execute if score #redstone NL_return matches 1 run clear @s redstone{lib:1b} 1
execute as @e[type=interaction,tag=altar] positioned as @s if block ~ ~1 ~ redstone_wire run clear @a[team=!gate_keeper] redstone 1
execute as @e[type=interaction,tag=altar] positioned as @s if block ~ ~1 ~ redstone_wire run kill @s
