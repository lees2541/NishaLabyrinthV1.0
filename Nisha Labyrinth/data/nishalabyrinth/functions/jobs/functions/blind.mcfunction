function nishalabyrinth:jobs/functions/explorer
#function nishalabyrinth:item/explorer/flashlight
tag @p add blind
give @p warped_fungus_on_a_stick
execute at @s run summon bat ^ ^1 ^0.5 {PersistenceRequired:1b,Fire:-300,Team:"NL_yellow",HasVisualFire:0b,NoGravity:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,BatFlags:1b,Tags:["NL","pet"]}
function nishalabyrinth:character_functions/blind/overriding_wp
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/blind_image

scoreboard players set @p bat_mode 0
item replace entity @p armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:336,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1

tag @p add skill_ready