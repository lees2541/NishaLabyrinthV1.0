#setblock 674 43 575 minecraft:redstone_block replace
execute at @a run playsound minecraft:alarm master @a ~ ~ ~ 3
scoreboard players set r NL_red_progress 5
scoreboard players set r NL_red_progress_left 5
advancement grant @a only nishalabyrinth:system/5th
scoreboard players set r NL_altar_guage 1
function nishalabyrinth:system/interaction/set_on_inside
function nishalabyrinth:system/tainted_scaffold/set_tainted
title @a title [{"text":"4개 남았습니다","color":"dark_red","bold":true}]

#schedule function nishalabyrinth:system/altar/temple_ready 40s