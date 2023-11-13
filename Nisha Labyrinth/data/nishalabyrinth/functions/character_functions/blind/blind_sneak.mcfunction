execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:1003301}}}] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/blind_wp3
execute unless entity @e[type=armor_stand,tag=compass] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["compass","NL"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}]}
#execute positioned as @s facing entity @a[team=gate_keeper,limit=1] eyes run tp @e[limit=1,tag=compass,type=item] ^ ^ ^1 facing entity @a[team=gate_keeper,limit=1,sort=nearest] eyes


#execute at @s facing entity @a[team=gate_keeper,limit=1,sort=nearest] eyes run tp @e[type=armor_stand,tag=compass,limit=1] ^ ^ ^0.5 facing entity @a[team=gate_keeper,limit=1,sort=nearest] eyes