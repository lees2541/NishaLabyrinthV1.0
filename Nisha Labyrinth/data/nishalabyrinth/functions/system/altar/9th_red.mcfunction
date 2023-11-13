#setblock 670 44 575 minecraft:redstone_block replace
execute at @a run playsound minecraft:alarm master @a ~ ~ ~ 3
scoreboard players set r NL_red_progress 9
scoreboard players set r NL_red_progress_left 1
advancement grant @a only nishalabyrinth:system/9th
scoreboard players set r NL_altar_guage 1
function nishalabyrinth:system/interaction/set_on_inside
function nishalabyrinth:system/tainted_scaffold/set_tainted
effect give @a glowing 5
give @a[team=!gate_keeper] oak_button{CanPlaceOn:["minecraft:bricks"],display:{Name:'{"text":"뽑기 코인","color":"yellow","bold":true}',Lore:['{"text":"상점에서 1회 뽑기가 가능하다. 왜 있는지는 굳이 묻지 말자.","color":"white","italic":true}']},NL:1b} 1

#schedule function nishalabyrinth:system/altar/temple_ready 40s