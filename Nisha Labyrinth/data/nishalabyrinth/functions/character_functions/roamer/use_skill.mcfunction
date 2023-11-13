execute if entity @e[team=explorer,tag=trap_detected] at @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute if entity @e[team=explorer,tag=trap_detected] at @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
execute if entity @e[team=explorer,tag=trap_detected] at @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] run playsound minecraft:scream master @a
execute if entity @e[team=explorer,tag=trap_detected] run tag @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] remove skill_ready
execute if entity @e[team=explorer,tag=trap_detected] if entity @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] run function nishalabyrinth:character_functions/roamer/summon_wolf
execute if entity @e[team=explorer,tag=trap_detected] as @a[scores={NL_fstick_used=1..,NL_cool1=..0},team=gate_keeper, tag=roamer] run advancement revoke @s only nishalabyrinth:character/roamer/skill2

execute if entity @e[team=explorer,tag=trap_detected] store result score @a[team=gate_keeper,tag=roamer,scores={NL_fstick_used=1..,NL_cool1=..0},limit=1] NL_cool1 run data get storage minecraft:nishalabyrinth rm_cool1