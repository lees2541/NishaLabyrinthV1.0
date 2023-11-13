tag @a[team=explorer,scores={NL_minedConc=1}] remove blood_sign

execute if entity @a[team=explorer,tag=blood_sign] run scoreboard players add @a[tag=blood_sign] blood_trace 1
execute at @a[tag=blood_sign,scores={blood_trace=8}] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0 5 force
scoreboard players set @a[scores={blood_trace=8}] blood_trace 0