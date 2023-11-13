execute as @e[type=allay,nbt={HandItems:[{id:"minecraft:paper",Count:1b,tag:{prison_key:1b}}]}] run data merge entity @s {HandItems:[]}
execute as @a[tag=allay] at @s run item replace entity @s weapon.mainhand from entity @e[type=minecraft:allay,limit=1,sort=nearest,distance=..4,nbt=!{HandItems:[]}] weapon.mainhand
execute as @a[tag=allay] at @s run data merge entity @e[type=allay,limit=1,sort=nearest] {HandItems:[]}

advancement revoke @a[tag=allay] only nishalabyrinth:system/allay_give_back
tag @a[tag=allay] remove allay