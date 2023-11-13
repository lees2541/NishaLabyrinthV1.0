scoreboard players add @s[team=!gate_keeper,scores={NL_chance=0..2}] NL_chance 1
execute if entity @s[team=!gate_keeper,scores={NL_chance=2..}] run spawnpoint @s 712 53 623
execute if entity @s[team=!gate_keeper,scores={NL_chance=1}] run team join explorer @s
execute if entity @s[team=!gate_keeper,scores={NL_chance=1}] run tp 712 53 623