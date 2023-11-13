
execute if score r NL_altar_status_adv matches 1 run return 0
execute if score r NL_altar_guage matches 1..1199 run scoreboard players add r NL_altar_guage 1
execute if score r NL_altar_guage matches 1200..1499 run function nishalabyrinth:system/altar/temple_ready
function nishalabyrinth:system/altar/bossbar/calc_altar_guage
execute if score r NL_altar_status_adv matches 1 run function nishalabyrinth:system/altar/bossbar/into_purple