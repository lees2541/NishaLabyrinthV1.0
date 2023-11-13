#execute as @e[tag=jun] at @s run summon lightning_bolt ^ ^ ^7

summon item_display ~ ~ ~ {Tags:["hex"],item:{id:"minecraft:diamond_sword",Count:1b}}

data merge entity @e[type=item_display,limit=1,tag=hex] {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,2f,0f,1f],translation:[0f,10f,0f],scale:[1f,1f,1f]}}