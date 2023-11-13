execute at @a[predicate=!nishalabyrinth:sprinting,scores={NL_fstick_used=1,hunt_cool=40},team=gate_keeper,tag=sniffer] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute at @a[predicate=!nishalabyrinth:sprinting,scores={NL_fstick_used=1,hunt_cool=40},team=gate_keeper,tag=sniffer] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
#execute at @a[predicate=!nishalabyrinth:sprinting,scores={NL_fstick_used=1,hunt_cool=40},team=gate_keeper,tag=sniffer] run playsound minecraft:scream master @a

execute if entity @a[team=gate_keeper,tag=sniffer,scores={gk_attack=1},tag=!atk_stun, tag=!blood_sign] run tag @a[team=explorer,scores={gk_touch=1..}] add blood_sign
execute if entity @a[team=gate_keeper,tag=sniffer,scores={gk_attack=1},tag=!atk_stun] run scoreboard players set @a[tag=blood_sign,scores={gk_touch=1}] blood_trace 4
execute as @a[team=gate_keeper,tag=sniffer,tag=!hunt_time] run scoreboard players set @s hunt_time 0
execute as @a[team=gate_keeper,tag=sniffer,tag=hunt_time] run scoreboard players set @s hunt_time 1

execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] at @s run playsound minecraft:starthunt master @a
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] at @s run playsound minecraft:huntmod master @a
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item modify entity @s hotbar.8 nishalabyrinth:items/gate_keeper/sniffer_image2
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run scoreboard players set .sniffer NL_music 1
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run effect give @s slowness 1 50 true
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run tag @s add hunt_time
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] if score .sniffer NL_music matches 1.. run scoreboard players add .sniffer NL_music 1
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] if score .sniffer NL_music matches 220.. at @a[team=gate_keeper,tag=sniffer,tag=hunt_time] run playsound minecraft:huntmod master @a
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] if score .sniffer NL_music matches 220.. run scoreboard players set .sniffer NL_music 1
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run tag @s remove hunt_time
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=hunt_time,scores={NL_fstick_used=1,hunt_time=0,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item replace entity @s armor.feet with netherite_boots{Enchantments:[{id:"minecraft:soul_speed",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:1,UUID:[I;-371649409,-181581700,-1312624010,-1213125416],Slot:"feet"}]} 1
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item replace entity @s armor.feet with netherite_boots 1
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item replace entity @s weapon.offhand with air
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run effect clear @s blindness
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run effect give @s blindness 3 0 true
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run effect clear @s night_vision
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run effect give @s night_vision 3 0 true
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run stopsound @a master minecraft:huntmod
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run scoreboard players set .sniffer NL_music 0
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item modify entity @s hotbar.8 nishalabyrinth:items/gate_keeper/sniffer_image

execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,tag=!hunt_time,scores={NL_fstick_used=1,hunt_time=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run scoreboard players set @s sn_blind 0
effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,NL_fstick_used=0,sn_blind=1},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] blindness 8 0 true
effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,NL_fstick_used=0,sn_blind=1},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] night_vision 8 0 true

effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time] unluck 5 5
effect clear @a[team=gate_keeper,tag=sniffer,tag=!hunt_time] unluck
#scoreboard players set @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=0,NL_fstick_used=1},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] sn_blind_cool 0
scoreboard players set @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=0,NL_fstick_used=0}] sn_blind 1
#execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1}] run scoreboard players add @a[tag=sniffer,tag=hunt_time] sn_blind_cool 1
#effect clear @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=200}] blindness
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=200}] saturation 1 1
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=150}] saturation 1 1
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=100}] saturation 1 1
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=0}] saturation 1 1
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=50}] saturation 1 0
#effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=240}] blindness 100
#scoreboard players set @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=40,sn_blind=1,sn_blind_cool=240}] sn_blind_cool 0
execute as @a[predicate=!nishalabyrinth:sprinting,team=gate_keeper,tag=sniffer,scores={NL_fstick_used=1,hunt_cool=40},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run scoreboard players set @s hunt_cool 0
execute as @a[team=gate_keeper,tag=sniffer,scores={NL_fstick_used=0,hunt_cool=..39}] run scoreboard players add @s hunt_cool 1
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] run function nishalabyrinth:system/sniffer/bloody_smell
execute at @a[team=explorer, tag=blood_sign] run particle minecraft:ash ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force
execute as @a[team=explorer, tag=blood_sign,scores={gk_touch=1}] run effect give @s poison 5 0 false
execute if entity @a[tag=blood_sign] run effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time,scores={hunt_cool=20..}] speed 1 2 
#execute at @a[team=explorer, tag=blood_sign] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0 2 force @a[team=gate_keeper,tag=sniffer,distance=..5]

execute if entity @a[team=gate_keeper,tag=hunt_time,scores={NL_fstick_used=1}] run bossbar set nl:trace_age visible true
execute if entity @a[team=gate_keeper,tag=!hunt_time,scores={NL_fstick_used=1}] run bossbar set nl:trace_age visible false
#function nishalabyrinth:system/trace/make_trace
execute at @a[team=gate_keeper,tag=sniffer] unless entity @e[type=area_effect_cloud,tag=trace_aged,distance=..0.7] run scoreboard players set r NL_trace_age 0 
function nishalabyrinth:character_functions/sniffer/blood_trace_calc
execute at @a[predicate=nishalabyrinth:on_dirt,predicate=nishalabyrinth:at_grass,predicate=!nishalabyrinth:sneak,team=gate_keeper,tag=sniffer,tag=hunt_time] if block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=armor_stand,tag=NL_grass,tag=NL,distance=..0.5] run setblock ~ ~ ~ minecraft:tall_grass[half=lower] destroy
execute at @a[predicate=nishalabyrinth:on_dirt,predicate=nishalabyrinth:at_grass,predicate=!nishalabyrinth:sneak,team=gate_keeper,tag=sniffer,tag=hunt_time] unless block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=armor_stand,tag=NL_grass,tag=NL,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,Tags:["NL_grass","NL"]}
execute at @a[team=gate_keeper,tag=sniffer,tag=hunt_time] run scoreboard players set @e[type=armor_stand,distance=..1.3,tag=NL_grass,tag=NL,limit=3,sort=nearest] grass_age 100

#execute store result bossbar nl:trace_age value as @a[team=gate_keeper,tag=sniffer,limit=1] run scoreboard players get @e[type=marker,distance=..1.5,limit=1,tag=trace_aged] NL_trace_age
#execute at @a[team=gate_keeper,tag=sniffer] if entity @e[type=area_effect_cloud,tag=trace_aged,distance=..1] store result bossbar nl:trace_age value as @a[team=gate_keeper,tag=sniffer,limit=1] run data get entity @e[tag=trace_aged,type=area_effect_cloud,limit=1,distance=..0.7] Age