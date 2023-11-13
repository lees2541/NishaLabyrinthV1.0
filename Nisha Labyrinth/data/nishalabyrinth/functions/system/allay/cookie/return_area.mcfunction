tag @s remove cookie
tag @s remove auto
tag @s remove auto1
tag @s remove auto2
tag @s[tag=prison] add return
tag @s remove prison
team join NL_ex_only
data merge entity @s {Glowing:0b}
execute as @s[scores={NL_cookie_id=1}] run scoreboard players set @a[team=explorer,scores={NL_cookie_id=1}] NL_cookie_id 0
execute as @s[scores={NL_cookie_id=2}] run scoreboard players set @a[team=explorer,scores={NL_cookie_id=2}] NL_cookie_id 0
execute as @s[scores={NL_cookie_id=3}] run scoreboard players set @a[team=explorer,scores={NL_cookie_id=3}] NL_cookie_id 0
execute as @s[scores={NL_cookie_id=4}] run scoreboard players set @a[team=explorer,scores={NL_cookie_id=4}] NL_cookie_id 0


execute as @a[team=explorer,scores={NL_cookie_id=0}] run effect clear @s hero_of_the_village
execute as @a[team=explorer,scores={NL_cookie_id=0}] run effect clear @s unluck