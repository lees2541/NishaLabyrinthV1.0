scoreboard players remove @s[team=explorer,scores={NL_chance=1..3}] NL_chance 1
#execute if entity @s[team=explorer,scores={NL_chance=..1}] run spawnpoint @s 693 13 628
#execute if entity @s[team=explorer,scores={NL_chance=0}] run team join NL_ghost @s
#execute if entity @s[team=NL_ghost,scores={NL_chance=0}] run tp 693 13 628