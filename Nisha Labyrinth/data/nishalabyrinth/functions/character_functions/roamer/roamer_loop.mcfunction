
#execute at @e[team=explorer,scores={NL_trapped_time=0}] if entity @e[type=minecraft:glow_item_frame,distance=1..7] as @a[team=gate_keeper,tag=roamer,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,tag:{CustomModelData:201002}}]}] run item modify entity @s hotbar.8 nishalabyrinth:items/gate_keeper/roamer_image2
#execute at @a[team=explorer,tag=detected,scores={NL_trapped_time=0}] unless entity @e[type=minecraft:glow_item_frame,distance=1..7] as @a[team=gate_keeper,tag=roamer,nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b,tag:{CustomModelData:201001}}]}] run item modify entity @s hotbar.8 nishalabyrinth:items/gate_keeper/roamer_image
execute as @a[team=explorer,tag=trap_detected,advancements={nishalabyrinth:character/roamer/got_trapped=false}] at @s if entity @e[type=minecraft:glow_item_frame,distance=1..5] as @a[distance=..15,team=gate_keeper,tag=roamer,scores={NL_fstick_used=1..,NL_cool1=..0}] run function nishalabyrinth:character_functions/roamer/use_skill
execute as @a[team=explorer,tag=trap_detected,advancements={nishalabyrinth:character/roamer/got_trapped=false}] at @s unless entity @e[type=minecraft:glow_item_frame,distance=1..5] as @a[distance=..15,team=gate_keeper,tag=roamer,scores={NL_fstick_used=1..,NL_cool1=..0}] run title @s actionbar {"text":"타겟 주변에 늑대를 소환할 발판이 없습니다!"}

execute as @e[type=glow_item_frame,tag=NL_used,nbt={Item:{id:"minecraft:egg"},ItemRotation:3b},limit=1] at @s if entity @a[team=explorer,distance=..3,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] run scoreboard players add @a[team=gate_keeper,tag=roamer] num_of_trap 1
execute as @e[type=glow_item_frame,tag=NL_used,nbt={Item:{id:"minecraft:egg"},ItemRotation:3b},limit=1] at @s if entity @a[team=explorer,distance=..3,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b},Tags:["NL"]}

##roamer 2

execute as @a[team=gate_keeper,tag=roamer,scores={num_of_trap=1..}] at @s if entity @e[type=minecraft:glow_item_frame,distance=..2,tag=!NL_used,nbt={ItemRotation:1b,Item:{id:"minecraft:bamboo"}}] run data merge entity @e[limit=1,type=glow_item_frame,distance=..2,nbt={ItemRotation:1b,Item:{id:"minecraft:bamboo"}}] {Item:{id:"minecraft:bowl",Count:1b},Tags:["NL_used","NL"]}
execute as @a[team=gate_keeper,tag=roamer,scores={num_of_trap=1..}] at @s if entity @e[type=minecraft:glow_item_frame,distance=..2,tag=NL_used,nbt={ItemRotation:1b,Item:{id:"minecraft:bowl"}}] run scoreboard players remove @a[team=gate_keeper,tag=roamer] num_of_trap 1
execute as @a[team=gate_keeper,tag=roamer] at @s if entity @e[type=minecraft:glow_item_frame,distance=..2,nbt={ItemRotation:1b,Item:{id:"minecraft:bowl"}},tag=NL_used] run data merge entity @e[sort=nearest,limit=1,type=glow_item_frame,distance=..2,nbt={ItemRotation:1b,Item:{id:"minecraft:bowl"}}] {ItemRotation:0b,Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:10002}},Tags:["NL_used","NL"]}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:10002}}}] at @s if entity @a[team=explorer,distance=..5] run data merge entity @s {Item:{tag:{CustomModelData:10001}}}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:10001}}}] at @s unless entity @a[team=explorer,distance=..5] run data merge entity @s {Item:{tag:{CustomModelData:10002}}}


## 탐험가가 트랩 범위 안에 들어갔을때

execute as @a[team=explorer] at @s if entity @e[distance=..0.75,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:egg"}},tag=NL_used] run advancement grant @s only nishalabyrinth:character/roamer/got_trapped

scoreboard players add @a[team=explorer,advancements={nishalabyrinth:character/roamer/got_trapped=true}] NL_trapped_time 1
scoreboard players set @a[team=explorer,tag=trapped,scores={NL_damage_taken=1..}] NL_trapped_time 80
tag @a[team=explorer,tag=trapped,scores={NL_trapped_time=80}] remove trapped
advancement revoke @a[team=explorer,scores={NL_trapped_time=140}] only nishalabyrinth:character/roamer/got_trapped
scoreboard players set @a[team=explorer,scores={NL_trapped_time=140}] NL_trapped_time 0
effect clear @a[team=explorer,tag=trapped,scores={NL_damage_taken=1..}] slowness

tag @a[team=explorer,tag=trapped,scores={NL_damage_taken=1..}] remove trapped

#scoreboard players set @a[team=explorer,tag=trapped,scores={NL_damage_taken=1..,NL_trapped_time=1..79}] NL_trapped_time 0
#
## 트랩 범위 안에 들갔을때(임시저장)

execute as @a[tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] if entity @e[type=glow_item_frame,nbt={Item:{id:"minecraft:egg"}}] run scoreboard players add @a[team=gate_keeper,tag=roamer] num_of_trap 1

execute as @a[tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run data merge entity @e[type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:egg"}},limit=1] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b},Tags:["NL"]}

execute if entity @a[tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run tag @a[team=gate_keeper,tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] add switching
execute if entity @a[tag=switching,tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run item replace entity @a[tag=switching,tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] weapon.offhand from entity @a[limit=1,tag=switching,team=gate_keeper,tag=roamer,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] weapon.mainhand
execute if entity @a[team=gate_keeper,tag=roamer,tag=switching] run item replace entity @a[tag=roamer,tag=switching] weapon.mainhand with warped_fungus_on_a_stick

execute if entity @a[team=gate_keeper,tag=roamer,tag=switching] as @a[team=gate_keeper,tag=roamer,tag=switching] run item modify entity @s weapon.mainhand nishalabyrinth:items/gate_keeper/roamer_wp
execute if entity @a[team=gate_keeper,tag=roamer,tag=switching] run tag @a[team=gate_keeper,tag=roamer,tag=switching] remove switching


xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=0}] 0 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=1}] 1 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=2}] 2 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=3}] 3 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=4}] 4 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=5}] 5 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=6}] 6 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=7}] 7 levels
xp set @a[team=gate_keeper,tag=roamer,scores={num_of_trap=8}] 8 levels


