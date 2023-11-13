function nishalabyrinth:jobs/functions/explorer
tag @p add fisher
give @p fishing_rod{Unbreakable:1b,Enchantments:[{id:"minecraft:lure",lvl:3s}],NL:1b}
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/fisher_image
item replace entity @p armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:334,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1