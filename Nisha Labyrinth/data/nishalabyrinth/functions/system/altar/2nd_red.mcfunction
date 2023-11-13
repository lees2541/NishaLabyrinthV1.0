#setblock 677 39 581 minecraft:redstone_block replace
execute at @a run playsound minecraft:alarm master @a ~ ~ ~ 3
scoreboard players set r NL_red_progress 2
scoreboard players set r NL_red_progress_left 8
advancement grant @a only nishalabyrinth:system/2nd
scoreboard players set r NL_altar_guage 1
function nishalabyrinth:system/interaction/set_on_inside
function nishalabyrinth:system/tainted_scaffold/set_tainted
title @a title [{"text":"7개 남았습니다","color":"dark_red","bold":true}]
#schedule function nishalabyrinth:system/altar/temple_ready 40s