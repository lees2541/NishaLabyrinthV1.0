

################# here now goes scoreboard condition ###############
#execute as @a[team=explorer,scores={NL_damage_taken=1..}] run tellraw @a {"score":{"name":"@s","objective":"NL_damage_taken"}}
#execute as @a[team=explorer,scores={NL_A_damage_taken=1..}] run say tellraw @a {"score":{"name":"@s","objective":"NL_damage_taken"}}
#execute as @a[team=gate_keeper,scores={NL_damage_dealt=1..}] run say hi dmgDealt
#execute as @a[team=gate_keeper,scores={NL_A_damage_dealt=1..}] run say hi AdmgDealt
#execute as @a run scoreboard players operation @s NL_damage_dealt += @s NL_A_damage_dealt
#execute as @a run scoreboard players operation @s NL_damage_taken += @s NL_A_damage_taken
## 떨어뜨리기 방지 & 손전등 편의성
execute as @e[type=minecraft:item,nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{Drop:1b}}}] on origin run data modify entity @e[type=minecraft:item,nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{Drop:1b}}},limit=1,sort=nearest] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{Drop:1b}}}] at @s on origin run tp @e[type=item,nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{Drop:1b}}},limit=1,sort=nearest] @s
execute as @e[type=item,nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{Drop:1b}}}] run data merge entity @s {PickupDelay:0}

##


execute store result score #t_interact NL_return at @a[team=gate_keeper] as @e[distance=..3,tag=tainted,type=minecraft:glow_item_frame,nbt={Item:{id:"minecraft:lime_dye"},ItemRotation:1b}] run function nishalabyrinth:system/gate_keeper/tainted_interact/tainted_interact


execute as @e[type=interaction,tag=NL] on target if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s NL_fstick_used 1
execute as @e[type=interaction,tag=NL] on target if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @s NL_carrotst_used 1

execute if score r NL_altar_status_adv matches 0 if score r NL_altar_guage matches 1..1500 as @e[type=minecraft:interaction,tag=altar] on attacker if entity @s[team=explorer,nbt={Inventory:[{id:"minecraft:redstone",tag:{NL:1b}}]}] run function nishalabyrinth:system/interaction/set_on_altar


## 오염된 발판 상호작용
execute if entity @e[type=item,nbt={Item:{tag:{piece:1b}}}] run function nishalabyrinth:item/craft/craft
execute as @a[team=gate_keeper,predicate=nishalabyrinth:sneak] at @s if entity @e[type=glow_item_frame,distance=..2,tag=tainted] run effect give @a[team=explorer,distance=..8] glowing 2
execute as @a[team=explorer,scores={NL_shield_block=1..}] run function nishalabyrinth:item/skill/shield_used
#execute as @a[team=gate_keeper,scores={NL_A_damage_dealt=1..}] at @s run scoreboard players set @a[team=explorer,distance=..4,scores={NL_A_damage_taken=1..},limit=1,sort=nearest] gk_touch 1
#execute as @a[team=gate_keeper,scores={NL_damage_dealt=1..}] at @s run scoreboard players set @a[team=explorer,distance=..4,scores={NL_damage_taken=1..},limit=1,sort=nearest] gk_touch 1
#execute as @a[team=gate_keeper,scores={NL_damage_dealt=1..}] at @s if entity @a[team=explorer,scores={NL_damage_taken=1..},distance=..4] run scoreboard players set @s gk_attack 1
#execute as @a[team=gate_keeper,scores={NL_A_damage_dealt=1..}] at @s if entity @a[team=explorer,scores={NL_A_damage_taken=1..},distance=..4] run scoreboard players set @s gk_attack 1
tag @a[team=explorer, scores={gk_touch=1}] add hurted
#execute as @a[team=explorer,scores={gk_touch=1}] run say hi gk_touch
#execute as @a[team=gate_keeper,scores={gk_attack=1}] run say hi gk_attack
#execute if entity @a[team=gate_keeper] run function nishalabyrinth:system/gate_keeper/light_tick

## 잔디관련
execute if entity @a[predicate=nishalabyrinth:on_dirt,predicate=nishalabyrinth:sprinting] run function nishalabyrinth:system/bush/inbush
execute at @a[predicate=nishalabyrinth:sprinting] run scoreboard players set @e[type=armor_stand,distance=..1.3,tag=NL_grass,tag=NL,limit=3,sort=nearest] grass_age 100
execute if entity @e[type=armor_stand,tag=NL_grass,tag=NL,scores={grass_age=1..}] run scoreboard players remove @e[type=armor_stand,tag=NL_grass,tag=NL,scores={grass_age=1..}] grass_age 1 
execute at @e[type=armor_stand,tag=NL_grass,tag=NL,scores={grass_age=1}] run setblock ~ ~1 ~ minecraft:tall_grass[half=upper] keep
execute if entity @e[type=armor_stand,tag=NL_grass,tag=NL,scores={grass_age=1}] run kill @e[type=armor_stand,tag=NL_grass,scores={grass_age=1},tag=NL]


## 연출
execute at @a[team=explorer,tag=hurted] run particle minecraft:dripping_lava ~ ~ ~ 0.1 0.1 0.1 1 3
execute as @a[team=explorer,scores={gk_touch=1}] run schedule function nishalabyrinth:system/gate_keeper/hurted_blood 3s
execute as @a[team=gate_keeper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] run scoreboard players add @a[team=explorer,scores={gk_touch=1}] NL_fear 1
execute as @a[team=gate_keeper,tag=chopper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] at @s if entity @a[team=explorer,scores={gk_touch=1},distance=..4] run give @a[team=gate_keeper,tag=chopper,scores={gk_attack=1}] cooked_porkchop{display:{Name:'{"text":"수상한 고기","color":"red","bold":true}',Lore:['{"text":"방금 막 손질한 싱싱한 고기다. ","bold":true,"italic":true}']}} 1
execute as @a[team=gate_keeper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] at @a run playsound minecraft:entity.phantom.bite player @a
execute as @a[team=gate_keeper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] at @a[team=explorer,scores={gk_touch=1}] run particle minecraft:angry_villager ~ ~ ~ 1 1 1 0.025 5
execute if entity @a[team=gate_keeper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] run playsound minecraft:entity.phantom.bite master @a
execute as @a[team=gate_keeper,scores={gk_attack=1,NL_fearatk=1..},tag=!atk_stun] run scoreboard players remove @s NL_fearatk 1
execute if entity @a[team=explorer, scores={NL_fear=5..,gk_touch=1}] run kill @a[team=explorer, scores={NL_fear=5..}]
execute if entity @a[team=explorer, scores={NL_fear=5..,gk_touch=1}] at @a run playsound minecraft:entity.phantom.death player @a
execute as @a[team=explorer, scores={NL_fear=5..,gk_touch=1}] run scoreboard players set @s NL_music 0
execute if entity @a[team=explorer, scores={NL_fear=5..,gk_touch=1}] run scoreboard players set @a[team=explorer, scores={NL_fear=5..}] NL_fear 0
#execute if entity @a[team=explorer,scores={redOre_used=1}] run clear @a[team=explorer,scores={redOre_used=0}] redstone 1

tag @a[predicate=nishalabyrinth:glowing] add detected
tag @a[predicate=!nishalabyrinth:glowing,tag=!trap_detected] remove detected
#execute if entity @a[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] run tag @a[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] add switching
#execute if entity @e[type=fishing_bobber] run tp @a[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] @e[nbt={Motion: [0.0d, 0.0d, 0.0d]},type=fishing_bobber,limit=1]
#execute if entity @a[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] run kill @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}]
#execute unless entity @e[type=armor_stand,tag=bobber] at @e[type=fishing_bobber,limit=1,nbt={OnGround:1b}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["bobber"]}
#execute unless entity @e[type=armor_stand,tag=bobber] if entity @e[type=minecraft:fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] at @e[type=minecraft:fishing_bobber] if entity @e[type=minecraft:glow_item_frame,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["bobber"]}
#item replace entity @a[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.offhand from entity @a[limit=1,nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b}]}] weapon.mainhand
#item replace entity @a[tag=switching] weapon.mainhand with fishing_rod
#execute unless entity @e[type=fishing_bobber,nbt={Motion: [0.0d, 0.0d, 0.0d]}] run kill @e[type=armor_stand,tag=bobber]
#tag @a[tag=switching] remove switching

#
execute as @a[scores={NL_carrotst_used=1..},team=explorer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{NL:1b,dispel:1b}}}] run function nishalabyrinth:item/skill/dispell_scroll
execute as @a[scores={NL_carrotst_used=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{NL:1b,tp_lib:1b,scroll:1b}}}] run function nishalabyrinth:item/skill/tp_lib_orb


execute as @a[scores={NL_fstick_used=1..},tag=!skill_ready] if data entity @s SelectedItem.tag.cDamageMax run function nishalabyrinth:system/skill_method/update_dur



##job function
execute if entity @a[tag=swordsman] run function nishalabyrinth:character_functions/swordsman/swordsman_loop
execute if entity @a[tag= magician] run function nishalabyrinth:character_functions/magician/magician_loop
execute if entity @a[tag= soldier] run function nishalabyrinth:character_functions/soldier/soldier_loop
execute if entity @a[tag= survivor] run function nishalabyrinth:character_functions/survivor/survivor_loop
execute if entity @a[tag= police] run function nishalabyrinth:character_functions/police/police_loop
execute if entity @a[tag= roamer] run function nishalabyrinth:character_functions/roamer/roamer_loop
execute if entity @a[tag= sniffer] run function nishalabyrinth:character_functions/sniffer/sniffer_loop
execute if entity @a[tag= chopper] run function nishalabyrinth:character_functions/chopper/chopper_loop
execute if entity @a[tag= tellus] run function nishalabyrinth:character_functions/tellus/tellus_loop
execute if entity @a[tag= fisher] run function nishalabyrinth:character_functions/fisher/fisher_loop
execute if entity @a[tag= blind] run function nishalabyrinth:character_functions/blind/blind_loop
####################################################################
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",tag:{jump_pickaxe:1b}}},team=explorer] run effect give @s jump_boost 1 0 true
effect give @a[team=explorer,predicate=nishalabyrinth:sneak] jump_boost 1 0 true
# gatekeeper

# here now goes scoreboard effect #
effect give @a[scores={gk_touch=1..}] speed 4 1 false





#
execute if entity @a[team=explorer,scores={gk_touch=1..}] at @a[team=explorer,scores={gk_touch=0}] run playsound minecraft:gk_touch master @a[team=explorer,scores={gk_touch=0}]
## 테스트트ㅡㅌ트ㅡ트트트트트틑ㅁㅇㄹㄴㅇㄹㄴㅁㅎ퍔퓨ㅗㅕㅑㅁㅇㅈㄹ
execute as @a[team=gate_keeper,scores={gk_attack=1..},limit=1,tag=!atk_stun,tag=!cursed] at @s run damage @a[team=explorer,scores={gk_touch=1..},distance=..5,limit=1] 11 minecraft:player_attack by @s
execute as @a[team=gate_keeper,scores={gk_attack=1..},limit=1,tag=!atk_stun,tag=cursed] at @s run damage @a[team=explorer,scores={gk_touch=1..},distance=..5,limit=1] 6 minecraft:player_attack by @s
#execute as @a[team=gate_keeper,scores={gk_attack=1..},tag=!unstoppable] run scoreboard players add @s NL_stun_time_var 80
#effect give @a[team=gate_keeper,scores={gk_attack=1..},tag=!unstoppable] slowness 4 50 true
#effect give @a[team=gate_keeper,scores={gk_attack=1..},tag=!unstoppable] mining_fatigue 4 30 true
#effect give @a[team=gate_keeper,scores={gk_attack=1..},tag=!unstoppable] blindness 4
#tag @a[team=gate_keeper,scores={gk_attack=1..},tag=!unstoppable] add atk_stun
#execute if entity @a[team=gate_keeper,scores={gk_attack=1..}] run schedule function nishalabyrinth:system/gate_keeper/stun/stun_finish 4s





## 테ㅡ잔ㅁ으랑ㄹㅇㄴ






execute as @a[team=explorer] at @s run effect give @a[team=gate_keeper, distance=..12] glowing 3 1 true
##########
execute if score r NL_loop_check matches 1 run say 틱루프작동됨
scoreboard players set r NL_loop_check 0




execute as @a[scores={NL_usedBook=1..}] run function nishalabyrinth:item/info_book/give_book

function nishalabyrinth:system/gui/actionbar


execute as @e[team=gate_keeper] at @s run effect give @a[distance=..7,team=!gate_keeper] bad_omen 2 0
execute as @e[team=gate_keeper] at @s run effect give @a[distance=..15,team=!gate_keeper] fire_resistance 2 0
execute as @e[team=gate_keeper] at @s run effect give @a[distance=..28,team=!gate_keeper] conduit_power 2 0

execute as @e[type=interaction, tag=NL,tag=fence] on attacker if entity @s[team=explorer] run effect give @s jump_boost 2 0

## flashlight ########################################################
execute as @a[team=!gate_keeper,scores={NL_carrotst_used=1..},nbt={SelectedItem:{tag:{flashlight:1b}}}] run function nishalabyrinth:system/shader/flashlight/toggle_flashlight

execute as @a[team=!gate_keeper,scores={flashlight=1..}] run function nishalabyrinth:system/shader/flashlight/flashlight


execute as @a[team=gate_keeper,predicate=nishalabyrinth:on_dirt] run scoreboard players set @s flashlight 1
execute as @a[team=gate_keeper,predicate=nishalabyrinth:sneak] run scoreboard players set @s flashlight 2

execute as @a[team=gate_keeper,scores={flashlight=1..}] if entity @s[predicate=!nishalabyrinth:on_dirt,predicate=!nishalabyrinth:sneak] run scoreboard players set @s flashlight 0
execute as @a[team=gate_keeper,scores={flashlight=1}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0039215686274509803921568627451 1 0 force @s
execute as @a[team=gate_keeper,scores={flashlight=2}] run schedule function nishalabyrinth:system/shader/flashlight/gate_keeper_sneak 8t append
execute unless entity @a[team=gate_keeper,scores={flashlight=2}] run schedule clear nishalabyrinth:system/shader/flashlight/gate_keeper_sneak
## 밑의 거가 손전등 끄는 커맨드
execute as @a[scores={flashlight=0}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 1 1 0 force @s

#########################################################
## 알레이
execute as @e[type=marker,tag=NL,tag=area] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=..9] add area
execute as @e[type=!marker,type=!allay,tag=area] at @s unless entity @e[type=marker,tag=area,distance=..9] run tag @s remove area

execute as @e[type=marker,tag=NL,tag=area1] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=..9] add area1
execute as @e[type=marker,tag=NL,tag=area1] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=9.1..] remove area1

execute as @e[type=marker,tag=NL,tag=area5] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=..9] add area5
execute as @e[type=marker,tag=NL,tag=area5] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=9.1..] remove area5

execute as @e[type=marker,tag=NL,tag=area3] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=..9] add area3
execute as @e[type=marker,tag=NL,tag=area3] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=9.1..] remove area3

execute as @e[type=marker,tag=NL,tag=area4] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=..8] add area4
execute as @e[type=marker,tag=NL,tag=area4] at @s run tag @e[type=!marker,type=!allay,type=!minecraft:glow_item_frame,tag=NL,distance=8.1..] remove area4
execute if entity @e[type=allay,tag=NL] run function nishalabyrinth:system/allay/follow_player


## 테스트
execute as @e[type=glow_item_frame,nbt={ItemRotation:1b,Item:{id:"minecraft:bamboo"}}] at @s if entity @a[team=explorer,distance=..2.5] unless entity @a[team=gate_keeper,tag=roamer,distance=..2] at @a[team=explorer] run data merge entity @e[type=glow_item_frame,distance=..2.5,limit=1,nbt={ItemRotation:1b,Item:{id:"minecraft:bamboo"}},tag=!NL_used] {ItemRotation:0b}

#execute anchored eyes as @e[type=arrow,limit=1,sort=nearest] rotated as @a[team=explorer,limit=1] positioned as ^ ^ ^1 run tp @a[team=explorer,distance=1.5..] ~ ~ ~ facing entity @e[type=arrow,limit=1,sort=nearest] eyes

function nishalabyrinth:system/altar/bossbar/altar_guage_loop


function nishalabyrinth:system/gate_keeper/stun/stun

## 도서관 몹 루트
function nishalabyrinth:system/library/library_loop

function nishalabyrinth:item/item_loop/item_loop


## 올라가는스코어

scoreboard players add @a[advancements={nishalabyrinth:status/sneak=true}] NL_sneak_time 1
execute as @a[tag=NL_developer] run function nishalabyrinth:system/info_book/developer_mod/dev_loop
## 버프/디버프 UI
function nishalabyrinth:system/shader/gui/debuff
function nishalabyrinth:system/shader/gui/buff
execute as @a[tag=NL_developer] run function nishalabyrinth:system/info_book/developer_mod/dev_buff_icon_loop
execute as @a[tag=NL_developer] run function nishalabyrinth:system/info_book/developer_mod/dev_debuff_icon_loop

# 254/255 248/255 0
execute as @a[team=explorer,predicate=nishalabyrinth:glowing] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 0 1 0 force @s
execute as @a[team=explorer,predicate=!nishalabyrinth:glowing] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @a[team=explorer,tag=!trap_detected,tag=!blood_sign,tag=!chased] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s 


execute as @a[advancements={nishalabyrinth:craft/repair/item_repaired=false,nishalabyrinth:craft/repair/item_repaired_get=true}] run advancement revoke @s through nishalabyrinth:craft/repair/item_repaired_get

execute as @a run function nishalabyrinth:system/advancements/revoke_loop/rev_root_adv
######################################## scoreboard effect clearline ############################################
execute unless entity @a[team=explorer,tag=blind] run kill @e[type=armor_stand,tag=compass,limit=1]
execute as @e[type=interaction,tag=NL] run data remove entity @s attack
execute as @e[type=interaction,tag=NL] run data remove entity @s interaction

scoreboard players reset @a[scores={NL_totem_used=1}] NL_totem_used
scoreboard players set @a NL_damage_dealt 0
scoreboard players set @a NL_damage_taken 0
scoreboard players set @a NL_A_damage_dealt 0
scoreboard players set @a NL_A_damage_taken 0
scoreboard players set @a NL_carrotst_used 0
scoreboard players set @a NL_fstick_used 0
scoreboard players set r NL_altar_guage_var 0
scoreboard players set @a NL_stun_time_var 0
scoreboard players set @a NL_shield_block 0


execute as @a[advancements={nishalabyrinth:status/sneak=true}] unless entity @s[predicate=nishalabyrinth:sneak] run scoreboard players set @s NL_sneak_time 0
execute as @a[advancements={nishalabyrinth:status/sneak=true}] unless entity @s[predicate=nishalabyrinth:sneak] run advancement revoke @s only nishalabyrinth:status/sneak

scoreboard players set @a NL_open_chest 0
scoreboard players set @a gk_touch 0
#scoreboard players set @a[scores={gk_cool=5..,gk_attack=1}] gk_cool 0
scoreboard players set @a gk_attack 0
scoreboard players set @a NL_Food 0
scoreboard players set @a NL_Food2 0
scoreboard players set @a NL_minetorch 0
scoreboard players set @a NL_minewalltorch 0
scoreboard players set @a NL_minedlantern 0
#scoreboard players reset @a NL_stand_used
scoreboard players reset @a break_trap
scoreboard players set @a redOre_used 0
scoreboard players reset @a kill_body
scoreboard players reset @a NL_usedBook





###################

kill @e[type=arrow,nbt={inGround:1b}]

#kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
####################