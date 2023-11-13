execute as @a[tag=swordsman, nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{Disabled:0b}}]}] run tag @s add switching

## 도서관 알람떄 텔포 취소하기


execute as @a[team=explorer,tag=swordsman,tag=switching,advancements={nishalabyrinth:system/library/alarm_red=true}] run item replace entity @s weapon.offhand from entity @s weapon.mainhand

execute as @a[team=explorer,tag=swordsman,tag=switching,advancements={nishalabyrinth:system/library/alarm_red=true}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
execute as @a[team=explorer,tag=swordsman,tag=switching,advancements={nishalabyrinth:system/library/alarm_red=true}] run function nishalabyrinth:character_functions/swordsman/overriding_wp
tag @a[team=explorer,tag=swordsman,tag=switching,advancements={nishalabyrinth:system/library/alarm_red=true}] remove switching


##



execute at @a[tag=1st_mod,team=explorer, tag=swordsman, tag=ndef_mod, scores={NL_fstick_used=1..,def_mod_time=0,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}},nbt={SelectedItem:{tag:{Disabled:0b}}}] run playsound minecraft:guard master @a
effect give @a[tag=1st_mod,team=explorer, tag=swordsman, tag=ndef_mod, scores={NL_fstick_used=1..,def_mod_time=0,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}},nbt={SelectedItem:{tag:{Disabled:0b}}}] absorption 2 0
tag @a[tag=1st_mod,team=explorer, tag=swordsman, tag=ndef_mod, scores={NL_fstick_used=1..,def_mod_time=0,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}},nbt={SelectedItem:{tag:{Disabled:0b}}}] add def_mod
execute as @a[tag=1st_mod,team=explorer,tag=swordsman,tag=ndef_mod,tag=def_mod] run function nishalabyrinth:character_functions/swordsman/overriding_wp_guard
execute as @a[tag=1st_mod,team=explorer,tag=swordsman,tag=ndef_mod,tag=def_mod] run item modify entity @s hotbar.8 nishalabyrinth:items/explorer/sm_image2
effect give @a[tag=1st_mod,team=explorer,tag=swordsman,tag=ndef_mod,tag=def_mod] glowing 3 0
#effect give @a[tag=1st_mod,team=explorer,tag=swordsman,tag=ndef_mod,tag=def_mod] hero_of_the_village 3

scoreboard players set @a[tag=1st_mod,team=explorer, tag=swordsman, tag=ndef_mod, scores={NL_fstick_used=1..,def_mod_time=0,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}},nbt={SelectedItem:{tag:{Disabled:0b}}}] def_mod_time 1
tag @a[tag=1st_mod,team=explorer, tag=swordsman, tag=ndef_mod, tag=def_mod] remove ndef_mod

## execute on 실험
execute as @a[team=explorer,scores={gk_touch=1..},tag=swordsman,tag=def_mod,tag=1st_mod] at @s run playsound minecraft:guard2 player @a
execute as @a[team=explorer,scores={gk_touch=1..},tag=swordsman,tag=def_mod,tag=1st_mod] run scoreboard players set @a[team=gate_keeper,distance=..3] gk_attack 1
## 실험
execute if entity @a[team=gate_keeper,scores={gk_attack=1},tag=!atk_stun] at @a[team=explorer,scores={gk_touch=1..},tag=swordsman,tag=def_mod,tag=1st_mod] run playsound minecraft:guard2 player @a
execute if entity @a[team=gate_keeper,scores={gk_attack=1},tag=!atk_stun] run effect give @a[team=explorer,scores={gk_touch=1..},tag=swordsman,tag=def_mod,tag=1st_mod] absorption 2 2 true
#execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=1st_mod] run effect give @s absorption 2 2 true
#execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=1st_mod] at @s on attacker if entity @s[team=gate_keeper,distance=..3] run scoreboard players set @s[team=gate_keeper] gk_attack 1
#execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=1st_mod,scores={gk_touch=1}] at @s on attacker if entity @s[team=gate_keeper,distance=..3,scores={gk_attack=1}] run say hi def





execute at @a[team=explorer, tag=swordsman, tag=def_mod,tag=1st_mod] run particle minecraft:flame ~ ~0.5 ~ 0.4 0.4 0.4 0 4 force
scoreboard players add @a[team=explorer,tag=swordsman,tag=def_mod,scores={def_mod_time=1..},tag=1st_mod] def_mod_time 1
tag @a[team=explorer,tag=swordsman,tag=def_mod, scores={def_mod_time=60..},tag=1st_mod] add ndef_mod
execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod] run item modify entity @s hotbar.8 nishalabyrinth:items/explorer/sm_image
execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod,tag=3rd_mod] run function nishalabyrinth:character_functions/swordsman/overriding_wp
execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod,tag=!3rd_mod] run function nishalabyrinth:character_functions/swordsman/overriding_bkwp
tag @a[team=explorer,tag=swordsman,tag=def_mod,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod] remove def_mod
execute as @a[team=explorer,tag=swordsman,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod] run function nishalabyrinth:system/shader/gui/reset_buff
scoreboard players set @a[team=explorer,tag=swordsman,tag=ndef_mod,scores={def_mod_time=60..},tag=1st_mod] def_mod_time 0
### 뭐지 이거

#execute as @a[tag=1st_mod,team=explorer,tag=swordsman,tag=! 3rd_mod,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{Disabled:1b}}}] run function nishalabyrinth:character_functions/swordsman/overriding_bkwp
advancement revoke @a[team=explorer,tag=swordsman,tag= 3rd_mod,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{Disabled:1b}}}] only nishalabyrinth:character/swordsman/skill1
tag @a[team=explorer,tag=swordsman,tag= 3rd_mod,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{Disabled:1b}}}] remove skill_ready
#execute as @a[team=explorer,tag=swordsman,tag=1st_mod,tag=2nd_mod, tag=! 3rd_mod,nbt={SelectedItem:{id:"minecraft:glowstone_dust"}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"황천도"}',Lore:['{"text":"2단계"}','{"text":"1회 반격 가능(반격시 텔포불가)"}','{"text":"1회 텔포가능"}']},CustomModelData:243196,cDamage:0,cDamageMax:30}
#execute as @a[team=explorer,tag=swordsman,tag=1st_mod,tag=2nd_mod,tag= !3rd_mod,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run item replace entity @s weapon.mainhand with iron_nugget{display:{Name:'{"text":"검의 파편","color":"gray","bold":true}',Lore:['{"text":"힘이 다 해 부서진 검의 파편이다."}','{"text":"생명석의 힘이 있으면 더 강하게 만들 수 있을 것 같다"}']},CustomModelData:23055}
#execute as @a[team=explorer,tag=swordsman,tag=1st_mod,tag=2nd_mod, tag=3rd_mod,nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"황천도"}',Lore:['{"text":"3단계"}','{"text":"반격(쿨:30초,운버프로확인가능)"}','{"text":"텔포(쿨:120초,구급버프로 확인가능)"}']},CustomModelData:243197,cDamage:0}

execute store result score @a[tag=1st_mod,team=explorer,tag=swordsman,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}},nbt={SelectedItem:{tag:{Disabled:0b}}},tag=3rd_mod] NL_cool1 run data get storage minecraft:nishalabyrinth sm_cool1

#######
#scoreboard players operation @a[team=explorer,tag=swordsman,scores={NL_fstick_used=1,NL_cool1=..0},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] NL_cool1 = #sm1 NL_char_cool

#execute as @a[team=explorer,tag=swordsman,tag=3rd_mod,nbt={SelectedItem:{id:"minecraft:iron_nugget"}}] run replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick
#execute as @a[team=explorer,tag=swordsman,tag=! 3rd_mod, scores={NL_fstick_used=1}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run replaceitem entity @s weapon.mainhand glowstone_dust{display:{Name:'{"text":"검의 파편","color":"gray","bold":true}',Lore:['{"text":"힘이 다 해 부서진 검의 파편이다."}','{"text":"생명석의 힘이 있으면 더 강하게 만들 수 있을 것 같다"}']},CustomModelData:23049}
##Swordsman tp
execute at @a[tag=2nd_mod,scores={NL_cool2=..0},team=explorer,tag=swordsman,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run playsound minecraft:baldo master @a
execute as @a[tag=2nd_mod,scores={NL_cool2=..0},team=explorer,tag=swordsman,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run schedule function nishalabyrinth:character_functions/swordsman/swordsman_tp 3s
tag @a[scores={NL_cool2=..0},team=explorer,tag=swordsman,tag=2nd_mod,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] add spectator
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,tag=!3rd_mod,scores={sm_tp_cool=120},nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"황천도"}',Lore:['{"text":"2단계"}','{"text":"1회 반격 가능(반격시 텔포불가)"}','{"text":"1회 텔포가능"}']},Unbreakable:1b,CustomModelData:243196}
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,tag=3rd_mod,scores={sm_tp_cool=120},nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"황천도"}',Lore:['{"text":"3단계"}','{"text":"반격(쿨:30초,운버프로확인가능)"}','{"text":"텔포(쿨:120초,구급버프로 확인가능)"}']},Unbreakable:1b,CustomModelData:243197}
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,scores={sm_tp_cool=120},nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run item replace entity @s weapon.offhand with air
execute at @a[scores={NL_cool2=..0},team=explorer,tag=swordsman,tag=2nd_mod,tag=spectator] run summon zombie ~ ~ ~ {NoGravity:1b,Glowing:1b,CustomNameVisible:1b,Team:"explorer",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:1f,Tags:["body"],CustomName:'{"text":"검객의 육체"}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1003197}},{}],Attributes:[{Name:generic.max_health,Base:1}]}
scoreboard players set @a[team=explorer,tag=swordsman,tag=2nd_mod,tag=spectator] NL_cool2 10
gamemode spectator @a[team=explorer,tag=swordsman,tag=spectator,tag=2nd_mod]
execute as @a[team=gate_keeper,limit=1] at @s run spectate @p[team=explorer,limit=1,tag=!swordsman,sort=nearest] @a[limit=1,team=explorer,tag=swordsman,tag=spectator,tag=2nd_mod]
execute as @a[team=explorer,tag=swordsman,tag=dash,limit=1] at @s if entity @a[team=gate_keeper,distance=..2] run scoreboard players add @s NL_stun_time_var 60
execute as @a[team=explorer,tag=swordsman,tag=dash,limit=1] at @s if entity @a[team=gate_keeper,distance=..2] run playsound minecraft:baldo_2 player @a
#execute as @a[team=explorer,tag=swordsman,tag=dash,limit=1] at @s if entity @a[team=gate_keeper,distance=..2] run function nishalabyrinth:system/gate_keeper/stun/stun_sound
#execute at @a[team=explorer,tag=swordsman,tag=dash] if entity @a[team=gate_keeper,distance=..2] run playsound minecraft:entity.zombie.attack_iron_door player @a
execute at @a[team=explorer,tag=swordsman,tag=dash] if entity @a[team=gate_keeper,distance=..2] run particle minecraft:crit ~ ~ ~ 1 1 1 2.4 300 force
execute at @a[team=gate_keeper] run tag @a[team=explorer,tag=swordsman,tag=dash,distance=..2] remove dash
execute if entity @a[team=gate_keeper,scores={kill_body=1}] as @a[team=gate_keeper,limit=1] run kill @a[team=explorer,tag=swordsman,tag=spectator]
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick
#execute as @a[team=explorer,tag=swordsman,tag=2nd_mod,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run replaceitem entity @s weapon.offhand air
execute as @a[tag=swordsman,tag=switching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand

execute as @a[tag=swordsman,tag=switching] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
execute as @a[tag=swordsman,tag=switching] run function nishalabyrinth:character_functions/swordsman/overriding_wp
tag @a[tag=swordsman,tag=switching] remove switching