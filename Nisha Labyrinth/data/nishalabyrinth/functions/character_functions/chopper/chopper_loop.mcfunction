#chopper
execute as @a[team=gate_keeper,tag=chopper,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run tag @s add switching
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 30
effect give @a[team=gate_keeper,tag=chopper,scores={NL_Food=1}] speed 18 1
effect give @a[team=gate_keeper,tag=chopper,scores={NL_Food2=1}] speed 10 1
effect give @a[team=gate_keeper,tag=chopper,scores={NL_Food2=1}] speed 6 2
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_Food2=1}] run scoreboard players remove @a[team=gate_keeper,tag=chopper, scores={NL_Food2=1}] NL_cool1 30
#+++execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_Food2=1,NL_cool1=..0}] run tellraw @a[team=explorer,tag=chopper] {"text": "도살 준비."} 
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_Food2=1}] run function nishalabyrinth:character_functions/chopper/overriding_wp
#give @a[team=gate_keeper,tag=chopper,scores={gk_attack=1}] cooked_porkchop{display:{Name:'{"text":"수상한 고기","color":"red","bold":true}',Lore:['{"text":"방금 막 손질한 싱싱한 고기다. ","bold":true,"italic":true}']}} 1


execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..100}] store result bossbar nl:chopper_dash value run scoreboard players add @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=..99}] chp_dash_time 1
advancement revoke @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]},tag=skill_ready] only nishalabyrinth:character/chopper/skill3
tag @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] remove skill_ready
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run effect give @a glowing 3 0
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run effect give @a[team=gate_keeper,tag=chopper] slowness 3 50
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] at @a run playsound minecraft:entity.hoglin.converted_to_zombified player @a
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run effect give @a[team=explorer] slowness 2 5
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run effect give @a[team=explorer] minecraft:nausea 7 5
execute if entity @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run schedule function nishalabyrinth:character_functions/chopper/chopper_dash_start 3s
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable] at @a[team=gate_keeper,tag=chopper,tag=unstoppable] run scoreboard players add @a[team=explorer,distance=..1.5] NL_fear 1
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] at @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] run effect give @a[team=explorer,distance=..1.5] instant_damage 1 0
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] at @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] run effect give @a[team=explorer,distance=..1.5] absorption 1 0
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] at @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=1..30}] run effect give @a[team=explorer,distance=..1.5] instant_damage 1 0
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=31..80}] at @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=31..80}] run effect give @a[team=explorer,distance=..1.5] instant_damage 1 1
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=80..}] at @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=80..}] run effect give @a[team=explorer,distance=..1.5] instant_damage 1 2
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=30}] run bossbar set nl:chopper_dash color green
execute if entity @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={chp_dash_time=80}] run bossbar set nl:chopper_dash color red
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run effect clear @a[team=gate_keeper,tag=chopper,tag=unstoppable] night_vision
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run scoreboard players add @a[team=gate_keeper,tag=chopper] NL_stun_time_var 80
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run effect clear @a[team=gate_keeper,tag=chopper,tag=unstoppable] speed
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] at @a run playsound minecraft:entity.zombie.break_wooden_door player @a
execute at @a[team=gate_keeper,tag=chopper,tag=unstoppable] if entity @a[team=explorer,distance=..1.5] run tag @a[team=gate_keeper,tag=chopper,tag=unstoppable] remove unstoppable
effect clear @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={gk_attack=1},tag=!atk_stun] night_vision
effect clear @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={gk_attack=1},tag=!atk_stun] speed
scoreboard players set @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={gk_attack=1},tag=!atk_stun] chp_dash_time 0
tag @a[team=gate_keeper,tag=chopper,tag=unstoppable,scores={gk_attack=1},tag=!atk_stun] remove unstoppable
execute if entity @a[advancements={nishalabyrinth:character/chopper/skill3_ready=true},team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run advancement revoke @a[advancements={nishalabyrinth:character/chopper/skill3=true},team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] only nishalabyrinth:character/chopper/skill3
execute store result score @a[team=gate_keeper,tag=chopper,scores={NL_cool1=..0},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] NL_cool1 run data get storage minecraft:nishalabyrinth cp_cool1

execute if entity @a[team=gate_keeper,tag=chopper,tag=switching] as @a[team=gate_keeper,tag=chopper,tag=switching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute if entity @a[team=gate_keeper,tag=chopper,tag=switching] as @a[team=gate_keeper,tag=chopper,tag=switching] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
item modify entity @a[team=gate_keeper,tag=chopper,tag=switching] weapon.mainhand nishalabyrinth:items/gate_keeper/chopper_wp
#{CanDestroy:["minecraft:lime_concrete_powder"],display:{Name:'{"text":"대식가","color":"red","bold":true}',Lore:['{"text":"썩은피가 문드러져 악취가 진동한다","bold":true,"italic":true}']},HideFlags:127,Unbreakable:1b,Damage:5,CustomModelData:674563,glutton:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;-821486350,1384858780,-2120232521,1875188014],Slot:"mainhand"}]}
execute if entity @a[team=gate_keeper,tag=chopper,tag=switching] run tag @a[team=gate_keeper,tag=chopper,tag=switching] remove switching