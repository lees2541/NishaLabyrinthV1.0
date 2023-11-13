function nishalabyrinth:jobs/functions/explorer
tag @p add soldier

#scoreboard players set @p soldier_cool 0
scoreboard players set @p request_time 0

tag @p add starter
bossbar set nl:request_time players @a[team=explorer]
give @p crossbow
item replace entity @s armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:339,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/soldier_image
function nishalabyrinth:character_functions/soldier/overriding_wp
