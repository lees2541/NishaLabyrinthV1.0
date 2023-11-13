item modify entity @s armor.chest nishalabyrinth:system/stun_off
team modify gate_keeper color dark_red
execute as @s[team=gate_keeper,tag=!hunt_time,scores={NL_stun_time=1}] run effect clear @s blindness
effect clear @s[team=gate_keeper,scores={NL_stun_time=1}] glowing
tag @a[team=gate_keeper,tag=atk_stun,scores={NL_stun_time=..1}] remove atk_stun
attribute @a[team=gate_keeper,tag=!atk_stun,limit=1,scores={NL_stun_time=1}] minecraft:generic.attack_speed base set 0
attribute @a[team=gate_keeper,tag=!atk_stun,limit=1,scores={NL_stun_time=1}] minecraft:generic.attack_damage base set 0.1
scoreboard players set @a[team=gate_keeper,tag=!cursed] NL_debuff_stat 0
scoreboard players set @a[team=gate_keeper,tag=cursed] NL_debuff_stat 1
execute as @s[team=gate_keeper,scores={NL_stun_time=1}] run function nishalabyrinth:system/shader/gui/reset_debuff

