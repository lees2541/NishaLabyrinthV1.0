bossbar set nl:altar_guage color white
execute if score r NL_altar_status_adv matches 1 as @e[type=text_display,tag=warning,tag=NL] run kill @s
execute if score r NL_altar_status_adv matches 1 run scoreboard players set r NL_altar_status_adv 0
