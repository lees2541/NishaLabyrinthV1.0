execute facing entity @e[type=marker,limit=1,tag=area1,distance=0.3..] eyes run teleport ^ ^ ^0.1
execute if entity @e[type=marker,tag=area1,distance=..1] run tag @s remove auto1
execute if entity @e[type=marker,tag=area1,distance=..1] run tag @s add auto2
effect give @s[tag=auto2] glowing infinite