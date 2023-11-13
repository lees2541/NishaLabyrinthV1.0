effect give @a[team=gate_keeper,tag=chopper] night_vision 5
effect give @a[team=gate_keeper,tag=chopper] speed 5 7
tag @a[team=gate_keeper,tag=chopper] add unstoppable
scoreboard players set @a[team=gate_keeper,tag=chopper] chp_dash_time 1
tag @a[team=gate_keeper,tag=chopper] add atk_stun
execute at @a run playsound minecraft:entity.hoglin.death player @a
bossbar set nl:chopper_dash visible true
bossbar set nl:chopper_dash color blue
schedule function nishalabyrinth:character_functions/chopper/chopper_dash_finish 5s