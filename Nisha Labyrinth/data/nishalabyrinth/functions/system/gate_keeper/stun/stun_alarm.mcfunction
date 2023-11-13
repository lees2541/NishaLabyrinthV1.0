team modify gate_keeper color yellow

execute as @a[team=gate_keeper,scores={NL_stun_time_var=1..}] run scoreboard players set @s NL_debuff_stat 1
execute if entity @a[team=explorer,scores={NL_stun_time_var=1..}] run scoreboard players set @a[team=gate_keeper] NL_debuff_stat 2
execute if entity @s[team=gate_keeper] run function nishalabyrinth:system/gate_keeper/stun/stun_effect
execute if entity @s[team=gate_keeper,scores={NL_stun_time_var=1..}] run function nishalabyrinth:system/gate_keeper/stun/stun_sound

advancement revoke @s only nishalabyrinth:system/effects/stun_alarm