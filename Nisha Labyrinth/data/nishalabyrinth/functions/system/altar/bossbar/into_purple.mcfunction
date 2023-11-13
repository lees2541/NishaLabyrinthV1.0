scoreboard players set r NL_altar_status_adv 1
bossbar set nl:altar_guage color purple
#say 제단이 봉인되었습니다!
execute if score r NL_altar_guage matches 1500.. run scoreboard players set r NL_altar_guage 1500
scoreboard players set r NL_altar_guage_var 0
execute as @a at @s run playsound minecraft:corrupt_shutdown master @s ~ ~ ~ 0.2
execute as @e[type=interaction,tag=NL,tag=altar] at @s run summon text_display ~ ~1 ~ {Glowing:1b,view_range:3f,billboard:"center",see_through:1b,Tags:["NL","warning"],text:'{"text":"봉인됨","color":"dark_purple","bold":true}'}
effect give @a[team=explorer] glowing 3
execute unless score r NL_lib_alarm matches 1000.. run schedule function nishalabyrinth:system/altar/bossbar/into_default 6s replace
#execute if score r NL_lib_alarm matches 1000.. run schedule function nishalabyrinth:system/altar/bossbar/into_default 15s replace