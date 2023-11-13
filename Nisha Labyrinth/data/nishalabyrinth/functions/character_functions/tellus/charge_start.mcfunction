#execute store result score @s NL_durability run data get entity @s SelectedItem.tag.Damage
#execute store result score @s NL_guage run scoreboard players get #250 NL_number
#execute store result score @s NL_guage run scoreboard players operation @s NL_guage -= @s NL_durability
execute if score @s NL_stack matches 0 store result bossbar nl:tellus value run scoreboard players set @s NL_guage 55 
execute if score @s NL_stack matches 1 store result bossbar nl:tellus value run scoreboard players set @s NL_guage 75
execute if score @s NL_stack matches 2.. store result bossbar nl:tellus value run scoreboard players set @s NL_guage 95 
execute at @s run playsound minecraft:tcharge player @s
execute as @a[team=explorer] at @s run playsound minecraft:tcvib player @s
#execute store result bossbar nl:tellus value run scoreboard players get @s NL_guage
execute as @e[type=glow_item_frame,tag=NL,tag=!NL_used,nbt={Facing:1b}] run data merge entity @s {Glowing:1b}
execute as @e[type=glow_item_frame,team=NL_blue,tag=NL] run team leave @s
bossbar set nl:tellus visible true

