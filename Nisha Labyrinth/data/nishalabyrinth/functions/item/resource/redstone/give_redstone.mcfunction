#tag @a[team=!gate_keeper,nbt=!{Inventory:[{Slot:7b}]}] add pinned_slot
#item replace entity @a[tag=pinned_slot] hotbar.7 with redstone{display:{Name:'{"text":"주술의 흔적","color":"red","bold":true}',Lore:['{"text":"제단에 바치면 문을 열 수 있다","color":"white"}']},NL:1b} 4
#item modify entity @a[tag=pinned_slot] hotbar.7 nishalabyrinth:items/redstone
#execute as @a[team=!gate_keeper,tag=!pinned_slot] run function nishalabyrinth:item/resource/redstone/give_redstone
#tag @a remove pinned_slot
scoreboard players set r NL_temp 0
execute as @s[team=!gate_keeper,nbt={Inventory:[{Slot:7b}]},nbt=!{Inventory:[{Slot:7b,id:"minecraft:redstone"}]}] store result score r NL_temp run function nishalabyrinth:system/pinned_item_slot/redstone/empty_redstone_slot
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:redstone"}]}] run scoreboard players set r NL_temp 1
execute if score r NL_temp matches 1 run item replace entity @s hotbar.7 with redstone 1
execute if score r NL_temp matches 1 run item modify entity @s hotbar.7 nishalabyrinth:items/redstone
execute if score r NL_temp matches 0 run loot give @s loot minecraft:command/item/redstone

scoreboard players set r NL_temp 0
