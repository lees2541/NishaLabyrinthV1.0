execute as @s run function nishalabyrinth:tags/remove_debuff_tags


execute if entity @s[team=gate_keeper] run return 0
## UI

scoreboard players remove @s[team=explorer,scores={NL_death_count=1..,NL_chance=1..3}] NL_chance 1
execute if entity @s[scores={NL_imprison_count=0,NL_chance=..0}] run function nishalabyrinth:system/death/go_to_jail
## 동굴에ㅐ서죽으면 아웃인 옛날코드
#execute as @s[team=explorer,scores={NL_chance=..0,NL_death_count=1..,NL_imprison_count=1..},advancements={nishalabyrinth:system/location/in_the_lib=false}] run spawnpoint @s 693 13 628
#execute as @s[team=explorer,scores={NL_chance=0,NL_death_count=1..,NL_imprison_count=1..},advancements={nishalabyrinth:system/location/in_the_lib=false}] run team join NL_ghost



execute if entity @s[scores={NL_chance=..0},advancements={nishalabyrinth:system/location/in_the_lib=true}] run function nishalabyrinth:system/death/go_to_jail