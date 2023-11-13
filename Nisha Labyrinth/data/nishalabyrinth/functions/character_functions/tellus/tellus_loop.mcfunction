data merge entity @e[type=trident,tag=!moving,nbt=!{inGround:1b},limit=1] {damage:0.5d,pickup:1b}
execute as @a[team=gate_keeper,tag=tellus,limit=1,scores={NL_temp=1}] run function nishalabyrinth:character_functions/tellus/hold_key_loop
execute as @e[type=trident] run function nishalabyrinth:character_functions/tellus/trident_loop
execute as @a[team=gate_keeper,tag=tellus,scores={NL_temp=0},predicate=nishalabyrinth:gate_keeper/tellus_trident] run item modify entity @s weapon.mainhand nishalabyrinth:items/gate_keeper/tellus_wp2
#execute as @a[team=gate_keeper,tag=tellus,scores={NL_temp=0},nbt={SelectedItem:{id:"minecraft:trident"}},predicate] run item modify entity @s weapon.mainhand nishalabyrinth:items/gate_keeper/tellus_weapon



#execute as @a[team=gate_keeper,tag=tellus,scores={gk_attack=1},predicate=!nishalabyrinth:gate_keeper/tellus_wp_ready,tag=!atk_stun] run tag @s add 
execute as @a[team=explorer,tag=chased] run function nishalabyrinth:character_functions/tellus/chased
