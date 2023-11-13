
execute if entity @a[team=gate_keeper,tag=roamer,scores={NL_minedConc=1}] if score r NL_GK_minedC matches ..4 run scoreboard players add @a[team=gate_keeper,tag=roamer] num_of_trap 1
scoreboard players add @a[team=explorer,tag=trap_detected,scores={trap_detected=1..}] trap_detected 1
scoreboard players set @a[team=explorer,tag=trap_detected,scores={trap_detected=120..}] trap_detected 0
scoreboard players set @a[team=explorer,scores={trap_detected=1..},tag=!trap_detected] trap_detected 0
