#setblock 672 44 575 minecraft:redstone_block replace
execute at @a run playsound minecraft:alarm master @a ~ ~ ~ 3
scoreboard players set r NL_red_progress 7
scoreboard players set r NL_red_progress_left 3
advancement grant @a only nishalabyrinth:system/7th
scoreboard players set r NL_altar_guage 1
function nishalabyrinth:system/interaction/set_on_inside
function nishalabyrinth:system/tainted_scaffold/set_tainted
title @a title [{"text":"2개 남았습니다","color":"dark_red","bold":true}]
give @a[team=!gate_keeper] oak_button{CanPlaceOn:["minecraft:bricks"],display:{Name:'{"text":"뽑기 코인","color":"yellow","bold":true}',Lore:['{"text":"상점에서 1회 뽑기가 가능하다. 왜 있는지는 굳이 묻지 말자.","color":"white","italic":true}']},NL:1b} 1
#schedule function nishalabyrinth:system/altar/temple_ready 40s