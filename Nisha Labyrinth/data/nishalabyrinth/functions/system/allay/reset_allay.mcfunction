kill @e[type=allay,tag=NL]
kill @e[type=marker,tag=NL,tag=area]



summon marker 708. 51. 581. {CustomNameVisible:1b,Tags:["NL","area1","area"],CustomName:'{"text":"Area1","color":"red","bold":true}',data:{tag:area1}}
summon marker 683. 50. 600. {CustomNameVisible:1b,Tags:["NL","area2","area"],CustomName:'{"text":"Area2","color":"red","bold":true}',data:{tag:area2}}
summon marker 671 55 621 {CustomNameVisible:1b,Tags:["NL","area3","area"],CustomName:'{"text":"Area3","color":"red","bold":true}',data:{tag:area3}}
summon marker 665 47 624 {CustomNameVisible:1b,Tags:["NL","area4","area"],CustomName:'{"text":"Area4","color":"red","bold":true}',data:{tag:area4}}
summon marker 685 46 615 {CustomNameVisible:1b,Tags:["NL","area5","area"],CustomName:'{"text":"Area5","color":"red","bold":true}',data:{tag:area5}}
summon marker 715 48 596 {CustomNameVisible:1b,Tags:["NL","area6","area"],CustomName:'{"text":"Area6","color":"red","bold":true}',data:{tag:area6}}
summon marker 705 48 593 {CustomNameVisible:1b,Tags:["NL","area7","area"],CustomName:'{"text":"Area7","color":"red","bold":true}',data:{tag:area7}}

summon marker 708 38.5 580 {CustomNameVisible:1b,Tags:["NL","prison","area"],CustomName:'{"text":"Prison","color":"red","bold":true}'}

execute as @e[type=marker,tag=NL,tag=area1,tag=area] at @s run summon allay ~ ~ ~ {Invulnerable:1b,Team:"NL_ex_only",NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["NL","area1","area"],Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.3f,response:1b,Tags:["NL","area1","area","allay"]},{id:"minecraft:interaction",width:0.6f,height:-0.5f,response:1b,Tags:["NL","area1","area","allay"]}]}
execute as @e[type=marker,tag=NL,tag=area5,tag=area] at @s run summon allay ~ ~ ~ {Invulnerable:1b,Team:"NL_ex_only",NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["NL","area5","area"],Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.3f,response:1b,Tags:["NL","area5","area","allay"]},{id:"minecraft:interaction",width:0.6f,height:-0.5f,response:1b,Tags:["NL","area5","area","allay"]}]}
execute as @e[type=marker,tag=NL,tag=area3,tag=area] at @s run summon allay ~ ~ ~ {Invulnerable:1b,Team:"NL_ex_only",NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["NL","area3","area"],Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.3f,response:1b,Tags:["NL","area3","area","allay"]},{id:"minecraft:interaction",width:0.6f,height:-0.5f,response:1b,Tags:["NL","area3","area","allay"]}]}
execute as @e[type=marker,tag=NL,tag=area4,tag=area] at @s run summon allay ~ ~ ~ {Invulnerable:1b,Team:"NL_ex_only",NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["NL","area4","area"],Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.3f,response:1b,Tags:["NL","area4","area","allay"]},{id:"minecraft:interaction",width:0.6f,height:-0.5f,response:1b,Tags:["NL","area4","area","allay"]}]}

scoreboard players set @e[type=allay,tag=area,tag=area1,tag=NL] NL_cookie_id 1
scoreboard players set @e[type=allay,tag=area,tag=area5,tag=NL] NL_cookie_id 2
scoreboard players set @e[type=allay,tag=area,tag=area3,tag=NL] NL_cookie_id 3
scoreboard players set @e[type=allay,tag=area,tag=area4,tag=NL] NL_cookie_id 4

