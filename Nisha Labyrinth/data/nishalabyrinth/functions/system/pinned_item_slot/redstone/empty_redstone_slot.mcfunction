execute at @s run summon item ~ ~ ~ {Tags:["pinned_slot","NL"],Item:{id:"minecraft:paper",Count:1b}}
execute at @s run data modify entity @e[tag=NL,tag=pinned_slot,type=item,limit=1,distance=..1] Item set from entity @s Inventory.[{Slot:7b}]
item replace entity @s hotbar.7 with air
return 1