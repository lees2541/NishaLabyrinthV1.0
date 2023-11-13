execute if entity @s[advancements={nishalabyrinth:system/drop/drop_item/info_book/drop_info_book=true}] run function nishalabyrinth:item/info_book/give_book
execute if entity @s[advancements={nishalabyrinth:system/drop/drop_item/info_book/icon=true}] run item modify entity @s hotbar.8 nishalabyrinth:items/info_book/icon_to_illust
#advancement revoke @s only nishalabyrinth:system/drop/drop_item/info_book/icon
execute if entity @s[team=!gate_keeper,scores={flashlight=0}] run scoreboard players set @s flashlight 2
execute if entity @s[team=!gate_keeper,scores={flashlight=1}] run scoreboard players set @s flashlight 0
execute if entity @s[team=!gate_keeper,scores={flashlight=2}] run scoreboard players set @s flashlight 1
advancement revoke @s until nishalabyrinth:system/drop/drop_item/info_book/icon
return 0