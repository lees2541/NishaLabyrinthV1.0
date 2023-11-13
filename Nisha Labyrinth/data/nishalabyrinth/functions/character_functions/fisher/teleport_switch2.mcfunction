execute at @a[limit=1,team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]},scores={NL_temp=1}] run summon marker ~ ~ ~ {Tags:["NL","bobber3","fisher_entity"]} 
execute at @e[type=armor_stand,tag=bobber2] if entity @a[team=gate_keeper,distance=..2.1] run effect give @a[team=gate_keeper,distance=..2.1] glowing 3
execute at @e[type=armor_stand,tag=bobber2] if entity @a[team=gate_keeper,distance=..2] as @a at @s run playsound minecraft:fisher_switch master @a ~ ~ ~ 0.5
execute at @e[type=armor_stand,tag=bobber2] if entity @a[team=gate_keeper,distance=..2.1] run tp @a[team=gate_keeper,distance=..2.1] @s
execute positioned as @e[type=armor_stand,tag=bobber2,limit=1] run tp @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]},scores={NL_temp=1}] ~ ~ ~ facing entity @e[type=marker,limit=1,tag=bobber3]
function nishalabyrinth:character_functions/fisher/kill_bobber2
item replace entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.offhand from entity @a[team=explorer,tag=fisher,limit=1,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.mainhand
item replace entity @a[team=explorer,tag=fisher,tag=switching] weapon.mainhand with fishing_rod{Unbreakable:1b,Enchantments:[{id:"minecraft:lure",lvl:3s}],NL:1b}
tag @a[team=explorer,tag=switching,tag=fisher] remove switching