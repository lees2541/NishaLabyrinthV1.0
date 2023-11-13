#setblock 673 40 579 minecraft:redstone_block replace
execute at @a run playsound minecraft:alarm master @a ~ ~ ~ 3
scoreboard players set r NL_red_progress 6
scoreboard players set r NL_red_progress_left 4
advancement grant @a only nishalabyrinth:system/6th
scoreboard players set r NL_altar_guage 1
function nishalabyrinth:system/interaction/set_on_inside
function nishalabyrinth:system/tainted_scaffold/set_tainted
title @a title [{"text":"3개 남았습니다","color":"dark_red","bold":true}]
function nishalabyrinth:system/library/chest_looting/insert_redstone
## 개구 조건
#schedule function nishalabyrinth:system/altar/temple_ready 40s