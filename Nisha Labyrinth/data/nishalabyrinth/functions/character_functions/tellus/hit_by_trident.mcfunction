advancement revoke @s only nishalabyrinth:character/tellus/hit_by_trident
tag @s[team=explorer] add chased
scoreboard players set @s[team=explorer] NL_chased 1
execute if entity @a[team=gate_keeper,tag=tellus,scores={NL_fearatk=1..}] run scoreboard players add @s NL_fear 1
execute if entity @a[team=explorer,tag=tellus,scores={NL_fearatk=1..}] run scoreboard players remove @a[team=gate_keeper,tag=tellus] NL_fearatk 1
