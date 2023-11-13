execute if score @s NL_shield_hold matches 20..50 run scoreboard players operation @s NL_stun_time_var += @s NL_shield_hold
execute if score @s NL_shield_hold matches 51.. run scoreboard players add @s NL_stun_time_var 50
effect give @s resistance 2 4
effect give @s glowing 4
clear @s shield