execute if score r NL_altar_guage_var matches 1.. run function nishalabyrinth:system/altar/bossbar/into_green
execute if score r NL_altar_guage_var matches ..-1 run function nishalabyrinth:system/altar/bossbar/into_red
scoreboard players operation r NL_altar_guage += r NL_altar_guage_var

execute if score r NL_altar_guage matches ..0 run scoreboard players set r NL_altar_guage 1
execute if score r NL_altar_guage matches 1200..1499 run scoreboard players set r NL_altar_guage 1500
execute if score r NL_altar_guage matches 1501..1700 run scoreboard players set r NL_altar_status_adv 1
execute store result bossbar nl:altar_guage value run scoreboard players get r NL_altar_guage

