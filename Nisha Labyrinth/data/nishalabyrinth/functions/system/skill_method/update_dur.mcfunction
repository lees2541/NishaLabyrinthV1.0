
execute store result score .max NL_use_skill run data get entity @a[scores={NL_fstick_used=1..},limit=1] SelectedItem.tag.cDamageMax
scoreboard players operation r tem_cool = .max NL_use_skill
execute store result score .damage NL_use_skill run scoreboard players operation r tem_cool -= @a[scores={NL_fstick_used=1..},limit=1] NL_cool1

execute if score .damage NL_use_skill >= .max NL_use_skill run scoreboard players set .damage NL_use_skill 0
scoreboard players operation .cool_left NL_use_skill = @a[scores={NL_fstick_used=1..},limit=1] NL_cool1

scoreboard players operation .damage NL_use_skill -= .max NL_use_skill
scoreboard players operation .damage NL_use_skill *= #-100 NL_use_skill
scoreboard players operation .damage NL_use_skill /= .max NL_use_skill
execute store result score .damage NL_use_skill run scoreboard players operation #100 NL_use_skill -= .damage NL_use_skill
scoreboard players set #100 NL_use_skill 100




item modify entity @a[scores={NL_fstick_used=1..},limit=1] weapon.mainhand nishalabyrinth:please