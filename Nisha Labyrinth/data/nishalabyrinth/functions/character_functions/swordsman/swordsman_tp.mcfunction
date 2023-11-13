tag @a[tag=swordsman] remove spectator
gamemode adventure @p[tag=swordsman]
tag @a[team=explorer, tag= swordsman] add dash
kill @e[type=zombie,tag=body]
execute as @a[team=explorer,tag=swordsman] run clear @s lapis_lazuli 1
execute as @a[team=explorer,tag=swordsman] run item modify entity @s hotbar.8 nishalabyrinth:items/explorer/sm_image3
schedule function nishalabyrinth:character_functions/swordsman/swordsman_dash 5s
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] run replaceitem entity @s weapon.offhand air

