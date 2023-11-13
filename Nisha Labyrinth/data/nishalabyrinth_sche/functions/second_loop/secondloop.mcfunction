## job buff
effect give @a[team=explorer] mining_fatigue 3 2 true
effect give @a[team=explorer] haste 3 105 true
effect give @a[team=gate_keeper] mining_fatigue 3 1 true
effect give @a[team=explorer, tag=starter] speed 3 0 true

effect give @a[team=explorer,tag=blind,tag=!md_sight] darkness 30 0
effect give @a[team=explorer,tag=blind,tag=!md_sight] night_vision 30 0 true

## 기본 시스템
    ## 제단 게이지



    ## 스킬 함수


    ## 흔적 캘 때 최초 정산
execute as @a[team=explorer,scores={NL_minedRed=1..}] run function nishalabyrinth_sche:second_loop/sec_loop_func/mined_red

    ## 생명석 캘 때 최초 정산

        ## 탐험가 정산
execute if entity @a[scores={NL_minedConc=1..}] at @a run playsound minecraft:conc_alarm master @a
execute as @a[team=explorer, scores={NL_minedConc=1..}] run scoreboard players operation r total_minedConc += @s NL_minedConc
execute if entity @a[team=explorer,scores={NL_minedConc=1..}] run loot give @a[team=explorer,tag=!survivor,tag=!campfire,tag=!soldier,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] loot command/item/lifestone

execute if entity @a[team=explorer,scores={NL_minedConc=1..}] run item replace entity @a[team=explorer,tag=!campfire,tag=!soldier,nbt=!{Inventory:[{id:"minecraft:lapis_lazuli"}]}] hotbar.6 with lapis_lazuli{display:{Name:'{"text":"생명석","color":"dark_blue","bold":true}',Lore:['{"text":"알 수 없는 힘이 담긴 돌이다","color":"blue","italic":true}']},NL:1b,Drop:1b} 1
#execute if entity @a[team=explorer,scores={NL_minedConc=1}] run give @a[nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]},team=explorer,tag=!soldier] lapis_lazuli{display:{Name:'{"text":"생명석","color":"dark_blue","bold":true}',Lore:['{"text":"알 수 없는 힘이 담긴 돌이다","color":"blue","italic":true}']}} 1
execute if entity @a[team=explorer, scores={NL_minedConc=1..}] run effect give @a[team=gate_keeper] speed 5 1

scoreboard players remove @a[team=explorer,scores={NL_fear=1..,NL_minedConc=1..}] NL_fear 1
scoreboard players set @a[team=explorer,scores={NL_fear=..3}] NL_music 0
effect give @a[team= explorer, scores={NL_minedConc=1..}] speed 5 0 true
    ## 배회자 정산

execute if entity @a[team=gate_keeper,scores={NL_minedConc=1..}] as @e[type=marker,tag=NL,tag=chests,tag=library,tag=!lifestone,limit=1,sort=random] run function nishalabyrinth:system/library/chest_looting/insert_lifestone
execute if entity @a[team=gate_keeper,scores={NL_minedConc=1..}] run scoreboard players add r NL_GK_minedC 1
execute as @a[team=gate_keeper,scores={NL_minedConc=1..}] run scoreboard players add @s NL_fearatk 3
effect give @a[team=gate_keeper,scores={NL_minedConc=1..}] speed 8 1 true
effect give @a[team=gate_keeper,scores={NL_minedConc=1..}] glowing 8 0
#execute if entity @a[team=gate_keeper,scores={NL_minedConc=1..}] run scoreboard players add r NL_altar_guage_var 100
execute if entity @a[team=gate_keeper,scores={NL_minedConc=1..}] run function nishalabyrinth:system/tainted_scaffold/set_tainted
#effect give @a[team=gate_keeper,scores={NL_minedConc=1..}] hero_of_the_village 8
    ## 초단위 쿨 감소
scoreboard players remove @a[team=explorer, tag=!cool1p, scores={NL_cool1 = 1..300}] NL_cool1 1
scoreboard players remove @a[team=explorer, tag=!cool2p, scores={NL_cool2 = 1..300}] NL_cool2 1
scoreboard players remove @a[team=explorer, tag=!cool3p, scores={NL_cool3 = 1..300}] NL_cool3 1
scoreboard players remove @a[team=gate_keeper, tag=!cool1p, scores={NL_cool1 = 1..300}] NL_cool1 1
scoreboard players remove @a[team=gate_keeper, tag=!cool2p, scores={NL_cool2 = 1..300}] NL_cool2 1
scoreboard players remove @a[team=gate_keeper, tag=!cool3p, scores={NL_cool3 = 1..300}] NL_cool3 1

execute as @a[tag=!skill_ready,scores={NL_cool1=..0}] run function nishalabyrinth:system/skill_method/cool_ready
tag @a[tag=!skill_ready,scores={NL_cool1=..0}] add skill_ready
execute as @a[tag=!skill_ready,scores={NL_cool1=3},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_3
execute as @a[tag=!skill_ready,scores={NL_cool1=2},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_2
execute as @a[tag=!skill_ready,scores={NL_cool1=1},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_1
execute as @a[tag=!skill_ready,scores={NL_cool1=3},nbt={SelectedItem:{id:"minecraft:crossbow"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_3
execute as @a[tag=!skill_ready,scores={NL_cool1=2},nbt={SelectedItem:{id:"minecraft:crossbow"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_2
execute as @a[tag=!skill_ready,scores={NL_cool1=1},nbt={SelectedItem:{id:"minecraft:crossbow"}}] run item modify entity @s weapon.mainhand nishalabyrinth:cool_1
## 직업별 함수호출
execute if entity @a[team=gate_keeper,tag=chopper] run function nishalabyrinth:character_functions/chopper/chopper_secondloop
execute if entity @a[team=gate_keeper,tag=roamer] run function nishalabyrinth:character_functions/roamer/roamer_secondloop
execute if entity @a[team=gate_keeper,tag=sniffer] run function nishalabyrinth:character_functions/sniffer/sniffer_secondloop
execute if entity @a[team=gate_keeper,tag=tellus] run function nishalabyrinth:character_functions/tellus/tellus_secondloop
execute if entity @a[team=explorer,tag=survivor] run function nishalabyrinth:character_functions/survivor/survivor_secondloop
execute if entity @a[team=explorer,tag=fisher] run function nishalabyrinth:character_functions/fisher/fisher_secondloop
execute if entity @a[team=explorer,tag=swordsman] run function nishalabyrinth:character_functions/swordsman/swordsman_secondloop
execute if entity @a[team=explorer,tag=soldier] run function nishalabyrinth:character_functions/soldier/soldier_secondloop
execute if entity @a[team=explorer,tag=police] run function nishalabyrinth:character_functions/police/police_secondloop
execute if entity @a[team=explorer,tag=magician] run function nishalabyrinth:character_functions/magician/magician_secondloop
execute if entity @a[team=explorer,tag=blind] run function nishalabyrinth:character_functions/blind/blind_secondloop


## 낙인 5스택 디버프

effect give @a[team=explorer, scores={NL_fear=5..}] slowness 3 1 true
effect give @a[team=explorer,scores={NL_fear=5..}] jump_boost 3 156 true
execute if entity @a[team=explorer,scores={NL_fear=4..}] run function nishalabyrinth:system/fear/fear_music


## 죽은 후 디버프 클리어
execute as @a[scores={NL_death_clear=1}] run function nishalabyrinth:system/death/death_trigger



#scoreboard players set @a[team=explorer, scores={NL_death_count=0}] NL_chance 3
#scoreboard players set @a[team=explorer,scores={NL_death_count=1}] NL_chance 2
#scoreboard players set @a[team=explorer, scores={NL_death_count=2}] NL_chance 1
#scoreboard players set @a[team=explorer, scores={NL_death_count=3}] NL_chance 0


execute at @e[team=gate_keeper] run playsound minecraft:pulse1 master @a[distance=7..16,team=explorer]
execute at @e[team=gate_keeper] run playsound minecraft:pulse2 master @a[distance=..7,team=explorer]


## 감옥 CCTV

execute as @e[type=marker,tag=area] at @s unless entity @a[team=gate_keeper,tag=area,distance=..9] run scoreboard players add @s NL_last_stayed_time 1
execute as @a[team=gate_keeper,tag=area] at @s run scoreboard players set @e[type=marker,tag=area,distance=..9] NL_last_stayed_time 0


## 테스트 또는 더미데이터
    ## 레드스톤 캤을 때 상자와 상호작용
#execute as @a[team=explorer, scores={NL_minedRed=1}] run function nishalabyrinth:system/mining
    ## 책 테스트

execute at @e[type=glow_item_frame,tag=campfire] run effect give @a[team=gate_keeper,distance=..2.5] haste 2 39


## 마무리
execute if entity @a[team=explorer, scores={NL_minedConc=1}] run tag @a[team=explorer, tag=starter] remove starter

#scoreboard players add @a[team=gate_keeper,scores={gk_cool=..5}] gk_cool 1

scoreboard players reset @a NL_minedRed
scoreboard players set @a NL_potion_used 0
scoreboard players reset @a NL_death_clear
scoreboard players reset @a NL_minedConc
scoreboard players reset @a NL_usedApple
scoreboard players reset @a NL_usedCod
scoreboard players reset @a NL_death_count





## 테스트






############################### else ###########################################
## 인겜 디버깅용
execute if score r NL_secloop_check matches 1 run say 초루프작동됨
scoreboard players set r NL_secloop_check 0


## 물약마시고 남은 병 자동처리
function nishalabyrinth_sche:second_loop/sense_inven

##########################  must be last one  ########################
schedule function nishalabyrinth_sche:second_loop/secondloop 1s