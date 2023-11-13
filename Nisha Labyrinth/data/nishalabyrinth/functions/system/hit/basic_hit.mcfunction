#say hi
#execute at @s as @e[type=zombie,team=explorer] if predicate nishalabyrinth:system/hit/hit_by_gk run function nishalabyrinth:system/hit/hit_by_gk
#say hi hit
execute if score r NL_altar_guage matches 0..1199 run scoreboard players remove r NL_altar_guage_var 400
execute at @s[team=gate_keeper] run scoreboard players set @a[team=explorer,distance=..4,scores={NL_damage_taken=1..}] gk_touch 1
execute at @s[team=gate_keeper] run scoreboard players set @a[team=explorer,distance=..4,scores={NL_A_damage_taken=1..}] gk_touch 1
execute as @a[team=explorer,scores={gk_touch=1}] on attacker if entity @s[team=gate_keeper,tag=!atk_stun] run scoreboard players set @s gk_attack 1
execute as @a[team=gate_keeper,scores={gk_attack=1}] run scoreboard players add @s NL_stun_time_var 80
execute as @a[team=gate_keeper,tag=tellus,scores={gk_attack=1},predicate=nishalabyrinth:gate_keeper/tellus_wp_ready] run scoreboard players set @s gk_attack 0
attribute @s[team=gate_keeper,scores={gk_attack=1}] minecraft:generic.attack_speed base set -31
attribute @s[team=gate_keeper,scores={gk_attack=1}] minecraft:generic.attack_damage base set -1
execute as @a[team=gate_keeper,scores={NL_altar_curse=1},tag=!cursed] run scoreboard players set @s NL_altar_curse 0
execute if entity @s[team=gate_keeper,tag=roamer] run tag @a[team=explorer,limit=1,scores={gk_touch=1},distance=..4] add trap_detected


## 히트매치 성공
#advancement grant @a[team=explorer] only nishalabyrinth:system/hit/hit_by_gk impossible
schedule function nishalabyrinth:system/hit/revoke_hit_adv 1t