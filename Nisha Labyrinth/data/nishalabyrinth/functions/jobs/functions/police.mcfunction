function nishalabyrinth:jobs/functions/explorer
#function nishalabyrinth:item/explorer/flashlight
tag @p add police
scoreboard players set @p NL_flash_used 0
bossbar set nl:lighted_time players @a
item modify entity @p hotbar.1 nishalabyrinth:items/explorer/police_wp1 
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/police_image
item replace entity @p armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:341,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
tag @p add skill_ready