execute as @e[type=allay,tag=area,tag=NL] run function nishalabyrinth:system/allay/cookie/return_area
fill 713 39 586 711 40 586 iron_bars[east=true,west=true] destroy

function nishalabyrinth:system/prison/prison_door/open_door


title @a title {"text":"탐험가들이 풀려납니다","color":"dark_purple","bold":true}
scoreboard players set r NL_lib_alarm_status 2
scoreboard players set r NL_lib_alarm 1000

#advancement grant @a[team=!gate_keeper,team=!NL_ghost] only nishalabyrinth:system/library/prison/escape_jail
#schedule function nishalabyrinth:system/prison/revoke_escape_jail 10s replace
