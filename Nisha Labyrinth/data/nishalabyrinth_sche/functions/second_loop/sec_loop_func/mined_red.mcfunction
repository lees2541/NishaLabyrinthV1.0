execute as @a[team=explorer, scores={NL_minedRed=1..}] run scoreboard players operation r total_minedRed += @s NL_minedRed
execute if entity @a[team=explorer,scores={NL_minedRed=1..}] if score r total_minedRed matches 1 run scoreboard players set .left total_minedRed 3 
execute if entity @a[team=explorer,scores={NL_minedRed=1..}] if score r total_minedRed matches 2 run scoreboard players set .left total_minedRed 2
execute if entity @a[team=explorer,scores={NL_minedRed=1..}] if score r total_minedRed matches 3 run scoreboard players set .left total_minedRed 1
execute if entity @a[team=explorer,scores={NL_minedRed=1..}] if score r total_minedRed matches 4.. run scoreboard players set .left total_minedRed 0
execute at @a[team=explorer, scores={NL_minedRed=1..}] run effect give @p glowing 3 0
execute at @a[team=explorer, scores={NL_minedRed=1..}] run playsound minecraft:red_alarm master @a ~ ~ ~ 3
execute as @p[team=explorer, scores={NL_minedRed=1..}] run say 탐험가가 저주의 매개체를 캤다!
execute if entity @a[team=!gate_keeper] run scoreboard players set #bonus NL_redstone_bonus 4
## dsaf
execute as @a[team=!gate_keeper] run function nishalabyrinth:item/resource/redstone/give_redstone


#tag @a[team=!gate_keeper,nbt=!{Inventory:[{Slot:7b}]}] add pinned_slot
#item replace entity @a[tag=pinned_slot] hotbar.7 with redstone{display:{Name:'{"text":"주술의 흔적","color":"red","bold":true}',Lore:['{"text":"제단에 바치면 문을 열 수 있다","color":"white"}']},NL:1b} 4
#item modify entity @a[tag=pinned_slot] hotbar.7 nishalabyrinth:items/redstone
#execute as @a[team=!gate_keeper,tag=!pinned_slot] run function nishalabyrinth:item/resource/redstone/give_redstone
#tag @a remove pinned_slot

scoreboard players set #bonus NL_redstone_bonus 1
