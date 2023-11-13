execute as @s[scores={NL_cookie_id=1,NL_entity_timer=1..}] if entity @a[team=explorer,scores={NL_cookie_id=1},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players set @s NL_entity_timer 0
execute as @s[scores={NL_cookie_id=1}] at @s facing entity @a[team=explorer,scores={NL_cookie_id=1},limit=1,sort=nearest,distance=2..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] eyes run teleport ^ ^ ^0.2
execute as @s[scores={NL_cookie_id=1}] unless entity @a[team=explorer,scores={NL_cookie_id=1},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players add @s NL_entity_timer 1

execute as @s[scores={NL_cookie_id=2,NL_entity_timer=1..}] if entity @a[team=explorer,scores={NL_cookie_id=2},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players set @s NL_entity_timer 0
execute as @s[scores={NL_cookie_id=2}] at @s facing entity @a[team=explorer,scores={NL_cookie_id=2},limit=1,sort=nearest,distance=2..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] eyes run teleport ^ ^ ^0.2
execute as @s[scores={NL_cookie_id=2}] unless entity @a[team=explorer,scores={NL_cookie_id=2},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players add @s NL_entity_timer 1

execute as @s[scores={NL_cookie_id=3,NL_entity_timer=1..}] if entity @a[team=explorer,scores={NL_cookie_id=3},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players set @s NL_entity_timer 0
execute as @s[scores={NL_cookie_id=3}] at @s facing entity @a[team=explorer,scores={NL_cookie_id=3},limit=1,sort=nearest,distance=2..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] eyes run teleport ^ ^ ^0.2
execute as @s[scores={NL_cookie_id=3}] unless entity @a[team=explorer,scores={NL_cookie_id=3},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players add @s NL_entity_timer 1

execute as @s[scores={NL_cookie_id=4,NL_entity_timer=1..}] if entity @a[team=explorer,scores={NL_cookie_id=4},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players set @s NL_entity_timer 0
execute as @s[scores={NL_cookie_id=4}] at @s facing entity @a[team=explorer,scores={NL_cookie_id=4},limit=1,sort=nearest,distance=2..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] eyes run teleport ^ ^ ^0.2
execute as @s[scores={NL_cookie_id=4}] unless entity @a[team=explorer,scores={NL_cookie_id=4},distance=..6,nbt={SelectedItem:{id:"minecraft:paper",tag:{prison_key:1b}}}] run scoreboard players add @s NL_entity_timer 1


## 알레이랑 떨어졌다는 표시
function nishalabyrinth:system/allay/cookie/cookie_dist_stats

















execute if score @s NL_entity_timer matches 60 run function nishalabyrinth:system/allay/cookie/return_area