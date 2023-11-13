execute if entity @a[scores={NL_stun_time_var=1..}] if entity @a[team=gate_keeper,scores={NL_stun_time=..0},limit=1] 
execute as @a[scores={NL_stun_time_var=1..}] run scoreboard players operation @a[team=gate_keeper,tag=!unstoppable] NL_stun_time += @s NL_stun_time_var
execute if entity @a[team=explorer,scores={NL_stun_time_var=1..}] if entity @a[team=gate_keeper,tag=!unstoppable] run advancement grant @a only nishalabyrinth:system/effects/stun_alarm
execute as @a[team=gate_keeper,scores={NL_stun_time_var=1..}] run function nishalabyrinth:system/gate_keeper/stun/stun_alarm


execute as @a[team=gate_keeper,scores={NL_stun_time=1}] run function nishalabyrinth:system/gate_keeper/stun/stun_finish
scoreboard players remove @a[team=gate_keeper,scores={NL_stun_time=1..}] NL_stun_time 1
scoreboard players set @a[scores={NL_stun_time=..-1}] NL_stun_time 0

