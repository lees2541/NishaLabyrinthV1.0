execute as @s at @e[type=armor_stand,tag=bobber] if entity @a[team=gate_keeper,distance=..2.1] run effect give @a[team=gate_keeper,distance=..2.1] glowing 3
execute as @s at @e[type=armor_stand,tag=bobber] if entity @a[team=gate_keeper,distance=..2.1] as @a at @s run playsound minecraft:fisher_switch master @a ~ ~ ~ 1.5
execute as @s at @e[type=armor_stand,tag=bobber] if entity @a[team=gate_keeper,distance=..2.1] run tp @a[team=gate_keeper,distance=..2.1,limit=1] @s 
execute at @s run summon armor_stand ~ ~ ~ {Team:"NL_blue",Invulnerable:1b,Glowing:1b,Tags:["NL","bobber2","fisher_entity"]}
execute if entity @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] if entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] positioned as @e[nbt={Motion: [0.0d, 0.0d, 0.0d]},type=fishing_bobber,limit=1] run tp @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] ~ ~ ~ facing entity @e[type=armor_stand,tag=NL,tag=bobber2,limit=1]
execute if entity @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] if entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] run clear @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] lapis_lazuli 1

execute if entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] run kill @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}]
scoreboard players set @s NL_temp 1

schedule function nishalabyrinth:character_functions/fisher/kill_bobber2 10s
item replace entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.offhand from entity @a[team=explorer,tag=fisher,limit=1,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.mainhand
item replace entity @a[team=explorer,tag=fisher,tag=switching] weapon.mainhand with fishing_rod{Unbreakable:1b,Enchantments:[{id:"minecraft:lure",lvl:3s}],NL:1b}
tag @a[team=explorer,tag=switching,tag=fisher] remove switching