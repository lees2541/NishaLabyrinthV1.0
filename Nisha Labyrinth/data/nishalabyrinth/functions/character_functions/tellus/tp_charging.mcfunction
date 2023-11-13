execute if score @s NL_guage matches 1.. as @e[type=marker,tag=tellus_tp,limit=1] at @s run tp @s ^ ^ ^0.5
execute store result bossbar nl:tellus value run scoreboard players remove @s[tag=tellus,team=gate_keeper,scores={NL_guage=1..}] NL_guage 1
execute unless entity @e[type=trident] run item modify entity @s weapon.mainhand nishalabyrinth:system/reduce_durability





## 내구도 보스바 연동 ########

#execute store result score @s NL_durability run data get entity @s SelectedItem.tag.Damage
#execute store result score @s NL_guage run scoreboard players get #250 NL_number
#execute store result score @s NL_guage run scoreboard players operation @s NL_guage -= @s NL_durability
#execute store result bossbar nl:tellus value run scoreboard players get @s NL_guage
#execute if score @s NL_guage matches 30.. as @s run item modify entity @s weapon.mainhand nishalabyrinth:system/reduce_durability

################################