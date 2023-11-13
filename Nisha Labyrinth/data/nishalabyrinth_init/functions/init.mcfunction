team add gate_keeper
team add explorer
team add NL_red
team add NL_white
team add NL_blue
team add NL_yellow
team add NL_ghost
team add prisoner
team add NL_gk_only
team add NL_ex_only

team modify NL_red color dark_red
team modify NL_white color white
team modify NL_blue color dark_blue
team modify NL_yellow color yellow
team modify NL_ghost nametagVisibility hideForOtherTeams 
team modify explorer nametagVisibility hideForOtherTeams
team modify prisoner color dark_gray
team modify NL_gk_only color dark_aqua
team modify NL_ex_only color dark_green

team modify gate_keeper prefix {"text":" [문지기] ", "color":"dark_red", "bold":true}
team modify explorer prefix {"text":" [탐험가] ", "color":"gold", "bold":true}
team modify NL_ghost prefix {"text":"[아웃]","color":"dark_blue","bold":true}
team modify prisoner prefix {"text":"[감옥]","color":"dark_gray","bold":true}

# Deathcount system(explorer)
scoreboard objectives add NL_death_count minecraft.custom:minecraft.deaths
scoreboard players set @a NL_death_count 0
scoreboard objectives add NL_chance dummy
scoreboard objectives modify NL_chance displayname {"translate":"☠","color":"white"}
scoreboard players set @a[team=explorer] NL_chance 3
scoreboard objectives add NL_death_clear deathCount
scoreboard objectives add NL_imprison_count dummy

## 음악관련
scoreboard objectives add NL_music dummy


# Game system
## 시스템 초기값
data merge storage minecraft:nishalabyrinth {NL_slab:{ItemRotation:0b,Item:{id:"minecraft:bamboo",Count:1b}}}
function nishalabyrinth:system/prison/prison_init_data


## 스킬과 내구도 연동
scoreboard objectives add NL_fstick_used minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add NL_use_skill dummy
scoreboard players set #-100 NL_use_skill -100
scoreboard players set #100 NL_use_skill 100

scoreboard objectives add tem_cool dummy
scoreboard players set r tem_cool 0


## 캐릭별 스킬 쿨 상수값 정의
scoreboard objectives add NL_char_cool dummy
scoreboard objectives add NL_stack dummy
scoreboard objectives add NL_guage dummy
data merge storage minecraft:nishalabyrinth {cp_cool1:150,sm_cool1:30,rm_cool1:30}


##################################
scoreboard objectives add NL_number dummy
scoreboard players set #250 NL_number 250
scoreboard objectives add NL_durability dummy
scoreboard objectives add NL_temp dummy
scoreboard players set @a NL_temp 0
scoreboard objectives add grass_age dummy
scoreboard objectives add NL_usedBook minecraft.used:minecraft.written_book
scoreboard objectives add redOre_used minecraft.used:minecraft.redstone
scoreboard objectives add total_minedConc dummy
scoreboard players set r total_minedConc 0
scoreboard objectives add NL_minedRed minecraft.mined:minecraft.redstone_ore
scoreboard objectives add NL_minetorch minecraft.mined:minecraft.soul_torch
scoreboard objectives add NL_minewalltorch minecraft.mined:minecraft.soul_wall_torch
scoreboard objectives add NL_minedlantern minecraft.mined:minecraft.lantern
scoreboard objectives add NL_totem_used minecraft.used:minecraft.totem_of_undying
scoreboard objectives add total_minedRed dummy
scoreboard players set r total_minedRed 0
scoreboard objectives add NL_stand_used minecraft.used:minecraft.armor_stand
scoreboard objectives add num_of_trap dummy
scoreboard objectives add NL_being_lighted dummy
bossbar add nl:lighted_time {"text":"Stun Gauge"}
bossbar set nl:lighted_time max 45
bossbar add nl:request_time {"text":"Request!"}
bossbar set nl:request_time max 50
bossbar add nl:trace_age {"text":"Blood Smell"}
bossbar set nl:trace_age max 80
bossbar add nl:chopper_dash {"text":"Dash"}
bossbar set nl:chopper_dash max 100
bossbar add nl:tellus {"text":"Teleport Guage"}
bossbar set nl:tellus max 90
bossbar add nl:altar_guage {"text":"제단"}
bossbar set nl:altar_guage max 1200
bossbar add nl:lib_alarm {"text":"경계도"}
bossbar set nl:lib_alarm max 1000
#bossbar add nl:shield_hold {"text":"자세잡기"}
#bossbar set nl:shield_hold max 50
scoreboard objectives add lake_summon_cool dummy
scoreboard objectives add lake_purify_cool dummy
scoreboard objectives add NL_minedConc minecraft.mined:minecraft.lime_concrete_powder
scoreboard objectives add NL_secloop_check dummy
scoreboard players set r NL_secloop_check 1
scoreboard objectives add NL_loop_check dummy
scoreboard players set r NL_loop_check 1
scoreboard objectives add flashlight dummy
scoreboard objectives add ftime dummy
scoreboard players set @a ftime 0
scoreboard objectives add NL_timer dummy
scoreboard objectives add NL_stun_time dummy
scoreboard objectives add NL_stun_time_var dummy
scoreboard objectives add NL_altar_status_adv dummy
scoreboard objectives add NL_altar_guage dummy
scoreboard objectives add NL_altar_guage_var dummy
scoreboard objectives add NL_count dummy
scoreboard objectives add NL_altar_curse dummy
scoreboard objectives add NL_debuff_stat dummy
scoreboard objectives add NL_sneak_time dummy
scoreboard objectives add NL_buff_icon dummy
scoreboard objectives add NL_debuff_icon dummy
scoreboard objectives add NL_lib_route dummy
scoreboard objectives add NL_lib_alarm dummy
scoreboard objectives add NL_lib_alarm_status dummy
scoreboard objectives add NL_open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add NL_test_chest_loot dummy
scoreboard objectives add NL_shield_block minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add NL_last_stayed_time dummy
scoreboard objectives add NL_return dummy
scoreboard objectives add NL_chest_raycast dummy
scoreboard objectives add NL_cookie_id dummy
scoreboard objectives add NL_entity_timer dummy 
scoreboard objectives add forTest dummy
scoreboard players reset @e forTest
scoreboard objectives add NL_success dummy
scoreboard objectives add NL_shield_hold dummy
scoreboard objectives add NL_redstone_bonus dummy
scoreboard objectives add NL_lifestone_bonus dummy

# Blind scoreboard
scoreboard objectives add bat_mode dummy


# Tellus scoreboard
scoreboard objectives add NL_chased dummy
scoreboard objectives add NL_trident_return dummy
# Survivor scoreboard

scoreboard objectives add NL_usedGApple minecraft.used:minecraft.golden_apple
scoreboard objectives add NL_minedCamp minecraft.mined:minecraft.soul_campfire
scoreboard objectives add NL_usedBerry minecraft.used:minecraft.sweet_berries

# Chopper scoreboard

scoreboard objectives add chp_dash_time dummy
# Swordsman scoreboard
scoreboard objectives add def_mod_time dummy


scoreboard objectives add kill_body minecraft.killed:minecraft.zombie
# soldier scoreboard
#scoreboard objectives add first_aid dummy

scoreboard objectives add request_time dummy
# fisher scoreboard
scoreboard objectives add NL_usedCod minecraft.used:minecraft.cod
# common scoreboards
scoreboard objectives add NL_cool1 dummy
scoreboard objectives add NL_cool2 dummy
scoreboard objectives add NL_cool3 dummy
scoreboard objectives add NL_GK_minedC dummy
scoreboard objectives add NL_fear dummy
scoreboard players set @a NL_fear 0
scoreboard objectives add NL_A_damage_taken minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add NL_A_damage_dealt minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add NL_damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add NL_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add NL_carrotst_used minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add NL_Food minecraft.used:minecraft.cooked_beef
scoreboard objectives add NL_Food2 minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add NL_potion_used minecraft.used:minecraft.potion
scoreboard players set @a NL_potion_used 0
scoreboard objectives add NL_red_progress dummy
scoreboard objectives add NL_red_progress_left dummy
scoreboard objectives add NL_trace_age dummy
# roamer scoreboard


scoreboard objectives add gk_touch dummy
scoreboard objectives add gk_attack dummy
scoreboard objectives add gk_cool dummy

scoreboard objectives add NL_trapped_time dummy
scoreboard objectives add break_trap minecraft.mined:minecraft.yellow_carpet
scoreboard players set @a[team=gate_keeper,tag=roamer] num_of_trap 0
scoreboard objectives add trap_detected dummy


scoreboard players set @a gk_touch 0
scoreboard players set @a gk_attack 0
scoreboard players set @a gk_cool 0

scoreboard players set @a NL_Food 0
scoreboard players set @a NL_Food2 0

# sniffer scoreboard
scoreboard objectives add blood_sign dummy
scoreboard objectives add hunt_time dummy
scoreboard objectives add hunt_cool dummy
scoreboard objectives add blood_trace dummy
scoreboard objectives add sn_blind dummy
scoreboard objectives add sn_blind_cool dummy
scoreboard players set @a hunt_cool 0 
scoreboard objectives add NL_sd_dash_cool dummy
# police
scoreboard objectives add NL_flash_used dummy
# blind
tag @e[type=minecraft:glow_item_frame] remove glow_buddy
tag @e[type=minecraft:glow_item_frame] remove sumd_star
tag @e[type=minecraft:glow_item_frame] remove near_bl
tag @e[type=minecraft:glow_item_frame] remove fcounter

## 뉴 니샤라비린스 임시모듈
data modify storage nl:default settings.redstone.rolls set value {red:2,yellow:2,green:2,area:2,all:1}



# else






gamerule commandBlockOutput false


title @a title [{"text":"Nisha Labyrinth","color":"dark_gray","bold":true}]
tellraw @a [{"text":"Nisha Labyrinth mod activated!","color":"dark_gray","bold":true,"italic":false}]

function nishalabyrinth:item/info_book/give_book

function nishalabyrinth_sche:second_loop/secondloop
function nishalabyrinth:system/shader/flashlight/reset