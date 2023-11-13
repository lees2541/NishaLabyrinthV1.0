function nishalabyrinth:jobs/functions/explorer
tag @p add survivor
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/survivor_image
item replace entity @p armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:340,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
tag @p add skill_ready
