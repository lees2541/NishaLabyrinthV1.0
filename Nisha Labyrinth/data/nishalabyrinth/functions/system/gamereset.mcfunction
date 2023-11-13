function nl_lobby:lobby/game_reset

scoreboard players set r total_minedRed 0
scoreboard players set @a NL_death_count 0
scoreboard players set r total_minedConc 0
scoreboard players reset @a NL_chance
scoreboard players reset @a NL_cool1
scoreboard players reset @a NL_cool2
scoreboard players reset @a NL_cool3
scoreboard players set r NL_red_progress 0
scoreboard players set r NL_red_progress_left 10
scoreboard players set @a chp_dash_time 0
scoreboard players set .sniffer NL_music 0
scoreboard players reset @a NL_trapped_time
scoreboard players set .left total_minedRed 4
scoreboard players set @e[team=gate_keeper] ftime 0
scoreboard players set @a NL_temp 0
scoreboard players set @a NL_durability 0
scoreboard players set @a NL_stack 0
scoreboard players set @a NL_guage 0
scoreboard players set @a NL_chased 0
scoreboard players reset @e[tag=NL] NL_timer
scoreboard players reset @a NL_usedGApple
scoreboard players reset @a flashlight
scoreboard players reset @a bat_mode
scoreboard players reset @a NL_minedCamp
scoreboard players set r NL_altar_status_adv 0
scoreboard players set r NL_altar_guage_var 0
scoreboard players set r NL_altar_guage 1500
scoreboard players set r NL_count 0
scoreboard players set @a NL_altar_curse 0
scoreboard players set @a NL_stun_time_var 0
scoreboard players set @a NL_stun_time 0
scoreboard players set @a NL_debuff_stat 0
scoreboard players set r button_need 0
scoreboard players set r button_ready 0
scoreboard players set @a NL_sneak_time 0
scoreboard players set r NL_lib_alarm 0
scoreboard players set @a NL_imprison_count 0
scoreboard players reset @a NL_return
scoreboard players reset @a NL_chest_raycast
scoreboard players set @a NL_cookie_id 0
scoreboard players set @e NL_entity_timer 0
scoreboard players set r NL_lib_alarm_status 0
scoreboard players set #bonus NL_redstone_bonus 4
scoreboard players set #bonus NL_lifestone_bonus 1

effect clear @a
execute as @a run function nishalabyrinth:tags/removetags
team leave @a
team modify gate_keeper color dark_red
clear @a
bossbar set nl:lighted_time players @a
bossbar set nl:lighted_time visible false
bossbar set nl:trace_age players @a
bossbar set nl:trace_age visible false
bossbar set nl:chopper_dash players @a
bossbar set nl:chopper_dash visible false
bossbar set nl:tellus players @a
bossbar set nl:tellus visible false
bossbar set nl:altar_guage players @a
bossbar set nl:altar_guage visible false
bossbar set nl:lib_alarm visible false


# roamer
scoreboard players set @a num_of_trap 0
scoreboard players set @a trap_detected 0
#system
xp set @a 0 levels
xp add @a -10 points
scoreboard players set r lake_summon_cool 0
scoreboard players set r lake_purify_cool 0
# ui 클린
execute as @a at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @a at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @a at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
#map clean

## 퇴비통
setblock 705 39 580 composter destroy
##
kill @e[type=item,nbt={Item:{tag:{NL:1b}}}]
kill @e[tag=lib_guardian]
kill @e[type=interaction,tag=NL]
kill @e[type=armor_stand,tag=NL]
kill @e[type=bat,tag=NL]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_horse_armor"}}]
execute as @e[type=glow_item_frame,tag=NL_used] at @s run setblock ~ ~0.5 ~ air destroy
execute as @e[type=minecraft:glow_item_frame,tag=NL] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b},Tags:["NL"],Fixed:0b}
team join NL_gk_only @e[type=glow_item_frame,tag=NL]

#data merge entity @e[type=glow_item_frame,limit=1,nbt={Item:{id:"minecraft:egg"}}] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}
#data merge entity @e[type=glow_item_frame,limit=1,nbt={Item:{id:"minecraft:egg"}}] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}
#data merge entity @e[type=glow_item_frame,limit=1,nbt={Item:{id:"minecraft:egg"}}] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}
#data merge entity @e[type=glow_item_frame,limit=1,nbt={Item:{id:"minecraft:egg"}}] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}
#data merge entity @e[type=glow_item_frame,limit=1,nbt={Item:{id:"minecraft:egg"}}] {ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}
function nishalabyrinth:system/interaction/set_interaction

#setblock 692 50 571 chest[facing=south] replace
## 생명석 초기화
setblock 716 45 608 air destroy
##

setblock 685 54 624 air destroy
setblock 692 51 598 air destroy
setblock 721 54 597 air destroy
setblock 697 45 607 air destroy
setblock 692 51 601 air destroy
setblock 720 51 571 air destroy
setblock 718 51 571 air destroy
setblock 718 50 571 air destroy
setblock 720 50 571 air destroy
setblock 676 53 629 air destroy
setblock 677 53 629 air destroy
setblock 678 53 629 air destroy
setblock 679 53 629 air destroy
setblock 680 53 629 air destroy
setblock 686 50 577 air destroy
setblock 685 50 577 air destroy
setblock 684 50 577 air destroy
setblock 683 50 577 air destroy
setblock 682 50 577 air destroy
setblock 681 50 577 air destroy
setblock 680 50 577 air destroy
setblock 679 50 577 air destroy
setblock 678 50 577 air destroy
setblock 677 50 577 air destroy
setblock 676 50 577 air destroy
setblock 675 50 577 air destroy
setblock 674 50 577 air destroy
setblock 673 50 577 air destroy
setblock 672 50 577 air destroy
setblock 671 50 577 air destroy
setblock 670 50 577 air destroy
setblock 669 51 577 air destroy
setblock 678 50 578 air destroy
setblock 676 50 578 air destroy
setblock 674 50 578 air destroy
setblock 672 50 578 air destroy
setblock 677 50 576 air destroy
setblock 675 50 576 air destroy
setblock 673 50 576 air destroy
setblock 671 50 576 air destroy
#
setblock 678 43 575 minecraft:air replace
setblock 677 39 581 minecraft:air replace
setblock 676 44 575 minecraft:air replace
setblock 675 40 579 minecraft:air replace
setblock 674 43 575 minecraft:air replace
setblock 673 40 579 minecraft:air replace
setblock 672 44 575 minecraft:air replace
setblock 671 40 579 minecraft:air replace
setblock 670 44 575 minecraft:air replace
#뽑기상품
setblock 667 41 624 air replace
setblock 670 38 626 air replace
setblock 670 38 626 dispenser[facing=up]{Items:[{Slot:0b,id:"minecraft:cooked_beef",Count:2b},{Slot:1b,id:"minecraft:cooked_beef",Count:2b},{Slot:2b,id:"minecraft:cooked_beef",Count:2b},{Slot:3b,id:"minecraft:cooked_beef",Count:2b},{Slot:4b,id:"minecraft:cooked_beef",Count:2b},{Slot:5b,id:"minecraft:cooked_beef",Count:1b}]} replace
loot insert 670 38 626 loot minecraft:chests/shop
## 감옥내 감옥
fill 713 39 586 711 40 586 air destroy



#맹인의 길밝혀주는 타일 태그 초기화
advancement revoke @a everything
advancement revoke @a only nishalabyrinth:system/interaction/allay/interact_allay_buffer buffer
function nishalabyrinth:system/advancements/set_advancements
execute as @a run function nishalabyrinth:item/info_book/give_book
#tag @e[type=glow_item_frame,tag=sumd_star] remove sumd_star
#tag @e[type=glow_item_frame,tag=near_bl] remove near_bl
#tag @e[type=glow_item_frame,tag=glow_buddy] remove glow_buddy
kill @e[type=marker,tag=NL]
kill @e[type=text_display,tag=NL]
kill @e[type=item_display,tag=NL]
kill @e[type=block_display,tag=NL]
kill @e[type=area_effect_cloud,tag=NL]
## 알레이 초기화
## 감옥 덩굴초기화
fill 707 40 580 707 44 580 air destroy
setblock 707 39 580 twisting_vines destroy
function nishalabyrinth:system/chests_reset/library_chests
function nishalabyrinth:system/fences_reset/set_all_fences
function nishalabyrinth:system/library/mob_path/lib_set_point
function nishalabyrinth:system/allay/reset_allay
function nishalabyrinth:system/prison/prison_door/set_prison_door
function nishalabyrinth:juns_job/reset/resetall
function nishalabyrinth:system/decoration/set_deco
function nl_lobby:lobby/settings/maps/cave/entities/area_markers/set_origin_markers

bossbar set nl:altar_guage color white
scoreboard objectives remove NL_chance
scoreboard objectives add NL_chance dummy
execute as @a run attribute @s generic.attack_damage base set 1
execute as @a run attribute @s generic.attack_speed base set 4


execute as @a[tag=NL_developer] run function nishalabyrinth:system/info_book/cheat/developer_mod
spawnpoint @a 701 50 591


