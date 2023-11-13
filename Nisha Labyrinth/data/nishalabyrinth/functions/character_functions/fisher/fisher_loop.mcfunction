#execute if entity @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] run tag @s add switching

execute if entity @a[tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] run tag @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] add switching
execute if entity @e[type=armor_stand,tag=bobber] as @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]},nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},scores={NL_temp=0}] run function nishalabyrinth:character_functions/fisher/teleport_switch
execute if entity @e[type=armor_stand,tag=bobber2] as @a[team=explorer,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]},scores={NL_temp=1}] run function nishalabyrinth:character_functions/fisher/teleport_switch2

## 표식
execute unless entity @e[type=armor_stand,tag=bobber] at @e[type=fishing_bobber,limit=1,nbt={OnGround:1b}] run summon armor_stand ~ ~ ~ {Team:"NL_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["bobber","NL","fisher_entity"]}
execute unless entity @e[type=armor_stand,tag=bobber] if entity @e[type=minecraft:fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] at @e[type=minecraft:fishing_bobber] if entity @e[type=minecraft:glow_item_frame,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["NL","bobber","fisher_entity"]}
execute as @e[type=minecraft:fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] at @s if entity @e[type=armor_stand,tag=bobber,distance=..1] run scoreboard players set @e[type=armor_stand,tag=bobber,distance=..1,limit=1] flashlight 1 

item replace entity @a[tag=switching,tag=fisher,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.offhand from entity @a[tag=fisher,limit=1,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.mainhand
item replace entity @a[tag=fisher,tag=switching] weapon.mainhand with fishing_rod{Unbreakable:1b,Enchantments:[{id:"minecraft:lure",lvl:3s}],NL:1b}

execute if entity @e[type=armor_stand,tag=bobber] unless entity @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] as @a[team=explorer,tag=fisher] run function nishalabyrinth:system/shader/gui/reset_buff
execute unless entity @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] as @a[team=explorer,tag=fisher,limit=1] run kill @e[type=armor_stand,tag=bobber]
tag @a[tag=switching,tag=fisher] remove switching


## 랜턴
execute as @e[type=armor_stand,tag=bobber,tag=!bobbertp] at @s if entity @a[team=explorer,tag=!fisher,distance=..1.5,tag=!bobbertp] run function nishalabyrinth:character_functions/fisher/lantern
#execute as @e[type=armor_stand,tag=bobber] at @s if entity @a[team=explorer,tag=!fisher,distance=..1.5] run tag @s add bobbertp
#execute as @e[type=armor_stand,tag=bobber,tag=bobbertp] at @s run teleport @a[team=explorer,tag=!fisher,distance=..1.5] @a[team=explorer,tag=fisher,limit=1]
#execute if entity @e[type=armor_stand,tag=bobber,tag=bobbertp] run kill @e[type=fishing_bobber]
#execute at @e[type=armor_stand,tag=bobber,tag=bobbertp] run effect give @a[team=explorer,distance=..2] glowing 3 0 true
#execute at @e[type=armor_stand,tag=bobber,tag=bobbertp] run effect give @a[team=explorer,distance=..2] hero_of_the_village 3 0
#kill @e[type=armor_stand,tag=bobber,tag=bobbertp]


#execute if entity @e[type=armor_stand,tag=bobber,tag=bobbertp] run kill @e[type=armor_stand,tag=bobber,tg=bobbertp]
execute as @e[type=armor_stand,tag=bobber,team=!NL_red] if entity @a[team=gate_keeper,distance=..2.0] run effect give @a[team=explorer,tag=fisher] unluck 5 0
execute as @e[type=armor_stand,tag=bobber,team=NL_red] unless entity @a[team=gate_keeper,distance=..2.0] run effect clear @a[team=explorer,tag=fisher] unluck
execute as @e[type=armor_stand,tag=bobber,team=!NL_red] if entity @a[team=gate_keeper,distance=..2.0] as @a[team=explorer,tag=fisher] at @a[team=gate_keeper,limit=1,sort=nearest] run playsound minecraft:fisher_bait master @s ~ ~ ~ 0.7
execute as @e[type=armor_stand,tag=bobber,team=!NL_red] if entity @a[team=gate_keeper,distance=..2.0] run team join NL_red @s
execute as @e[type=armor_stand,tag=bobber,team=NL_red] unless entity @a[team=gate_keeper,distance=..2.0] run team join NL_white @s


execute as @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] at @s unless entity @a[team=explorer,tag=fisher,distance=..18] run kill @s
execute as @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] at @s if entity @a[team=explorer,tag=fisher,predicate=nishalabyrinth:on_sand] run kill @s

execute unless entity @e[type=armor_stand,tag=bobber] unless entity @e[type=armor_stand, tag=bobber2] as @a[team=explorer,tag=fisher] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
execute if entity @a[team=explorer,tag=fisher,scores={NL_sneak_time=30}] as @a[team=explorer] at @s run function nishalabyrinth:character_functions/fisher/summon_point

execute if entity @a[team=explorer,tag=fisher,scores={NL_sneak_time=30..}] as @e[type=text_display,tag=point,tag=NL,tag=explorer,tag=!gauge_bar] run function nishalabyrinth:character_functions/fisher/fisher_sneak
execute if entity @a[team=explorer,tag=fisher,scores={NL_sneak_time=0}] run kill @e[type=text_display,tag=NL,tag=point,tag=!gauge_bar]

execute unless entity @a[team=explorer,tag=fisher] run kill @e[tag=fisher_entity]
