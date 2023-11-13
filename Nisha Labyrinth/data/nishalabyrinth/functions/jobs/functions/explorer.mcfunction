effect clear @p
clear @p
function nishalabyrinth:item/explorer/explorer_boots
team join explorer @p
scoreboard players set @p NL_chance 2
scoreboard players set @p NL_death_count 0
#give @p soul_torch{CanPlaceOn:["minecraft:stone_slab","minecraft:stone","minecraft:andesite","minecraft:diorite","minecraft:dirt","minecraft:gravel","minecraft:grass_block","minecraft:cobblestone","minecraft:cobblestone_slab"],display:{Name:'{"text":"탐험가의 횃불","color":"dark_blue","bold":true}',Lore:['{"text":"모든 탐험가의 필수품! 어두운 미궁을 밝혀줄 것이다","color":"white","italic":true}']},HideFlags:16,CustomModelData:52528} 1
give @p cooked_beef 2
scoreboard players set @p NL_cool1 1
scoreboard players set @p NL_cool2 1
scoreboard players set @p NL_cool3 1
advancement revoke @a everything
function nishalabyrinth:system/advancements/set_advancements
function nishalabyrinth:tags/removetags
function nishalabyrinth:item/explorer/jump_pickaxe
function nishalabyrinth:item/info_book/give_book
function nishalabyrinth:item/explorer/flashlight

scoreboard players reset @p NL_Food
scoreboard players reset @p NL_being_lighted
scoreboard players set @p NL_fear 0
scoreboard players set @p NL_music 0
scoreboard players set @p flashlight 0
scoreboard players set @p NL_stack 0
scoreboard players set @p NL_temp 0

spawnpoint @p[team=explorer] 712 53 623
effect give @p saturation 2 10
effect give @p regeneration 1 50
gamemode adventure @p
tag @p remove skill_ready
tag @p add NL


execute unless entity @a[team=explorer,tag=blind] run kill @e[type=bat,tag=NL]
attribute @p generic.attack_damage base set 1
attribute @p generic.attack_speed base set 4

execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s

bossbar set nl:altar_guage visible true
