execute if entity @a[team=explorer,tag=survivor] as @e[tag=!training,type=minecraft:glow_item_frame,sort=random,nbt={Item:{id:"minecraft:bamboo"}},tag=!NL_used,tag=NL,tag=!berry,limit=1] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:sweet_berries"},Tags:["NL","berry","NL_used"]}

scoreboard players set r NL_altar_guage 1500
execute if entity @a[team=gate_keeper,scores={NL_altar_curse=-1}] run function nishalabyrinth:system/altar/bossbar/into_purple
tellraw @a {"text": "제단이 준비되었습니다."}
execute if entity @a[team=explorer,tag=explorer] run tellraw @a {"text": "맵 어딘가에 열매가 나타났다"}
tag @a[team=gate_keeper,scores={NL_altar_curse=1}] add cursed
execute as @a[team=gate_keeper,scores={NL_altar_curse=1}] at @s run playsound minecraft:corrupt_fail master @s ~ ~ ~ 0.2
#scoreboard players set @a[team=gate_keeper,scores={NL_altar_curse=1},tag=cursed] NL_debuff_stat 3
#effect give @a[team=gate_keeper,scores={NL_altar_curse=1},tag=cursed] speed 10 1


execute if score r NL_red_progress matches 1 run setblock 678 43 575 minecraft:redstone_block replace
execute if score r NL_red_progress matches 1 run summon interaction 678 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 2 run setblock 677 39 581 minecraft:redstone_block replace
execute if score r NL_red_progress matches 2 run summon interaction 677 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 3 run setblock 676 44 575 minecraft:redstone_block replace
execute if score r NL_red_progress matches 3 run summon interaction 676 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 4 run setblock 675 40 579 minecraft:redstone_block replace
execute if score r NL_red_progress matches 4 run summon interaction 675 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 5 run setblock 674 43 575 minecraft:redstone_block replace
execute if score r NL_red_progress matches 5 run summon interaction 674 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 6 run setblock 673 40 579 minecraft:redstone_block replace
execute if score r NL_red_progress matches 6 run summon interaction 673 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 7 run setblock 672 44 575 minecraft:redstone_block replace
execute if score r NL_red_progress matches 7 run summon interaction 672 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 8 run setblock 671 40 579 minecraft:redstone_block replace
execute if score r NL_red_progress matches 8 run summon interaction 671 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}
execute if score r NL_red_progress matches 9 run setblock 670 44 575 minecraft:redstone_block replace
execute if score r NL_red_progress matches 9 run summon interaction 670 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"],CustomName:'{"text":"좌클릭으로 올리기","color":"red"}'}

