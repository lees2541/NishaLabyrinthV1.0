effect clear @p
clear @p
scoreboard players reset @p NL_chance

team join gate_keeper @p
give @p cooked_beef 64
bossbar set nl:lighted_time players @a
function nishalabyrinth:tags/removetags
#give @p lantern{CanPlaceOn:["minecraft:soul_sand"],display:{Name:'{"text":"영혼 등불","color":"aqua","bold":true}',Lore:['{"text":"누군가의 영혼이 빛을내고 있다. 누군지는 아무도 모른다.","color":"white","italic":true}','{"text":"소울샌드위에만 설치가능","color":"gold"}']},HideFlags:16} 1
#give @p netherite_pickaxe{CanDestroy:["minecraft:lantern"],display:{Name:'{"text":"사신의 낫","color":"dark_purple","bold":true}',Lore:['{"text":"영혼모래에 붙은 영혼을 떼어낼 수 있다.","italic":true}','{"text":"영혼  등불 수확 가능","color":"gold"}']},HideFlags:8} 1
#give @p redstone_torch{display:{Name:'{"text":"영혼 등불","color":"dark_red","bold":true}',Lore:['{"text":"누군가의 영혼이 빛을 내고 있다. 누군지는 아무도 모른다.","color":"white","italic":true}']},CustomModelData:33298,keeper_soul_lantern:1b} 1
advancement revoke @p everything
function nishalabyrinth:system/advancements/set_advancements
function nishalabyrinth:item/info_book/give_book
scoreboard players set @p gk_cool 5
scoreboard players reset @p NL_totem_used
scoreboard players set @p NL_being_lighted 0
scoreboard players set @p NL_fearatk 0
scoreboard players reset r NL_GK_minedC
scoreboard players set @p NL_cool1 0
scoreboard players set @p NL_cool2 0
scoreboard players set @p NL_cool3 0
scoreboard players set @p NL_music 0
scoreboard players set @p NL_temp 0
scoreboard players set @p NL_stack 0
scoreboard players set @p NL_altar_curse 1
scoreboard players set @a NL_debuff_stat 0
tag @p remove skill_ready
tag @p add NL
execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @p at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
attribute @p minecraft:generic.attack_damage base set 0.1
attribute @p minecraft:generic.attack_speed base set 0
bossbar set nl:altar_guage visible true




