execute at @s run summon marker ~ ~ ~ {Tags:["NL","tellus_tp"]}
execute at @s run tp @e[type=marker,tag=tellus_tp,limit=1] ~ ~ ~ facing ^ ^ ^1

execute at @s run playsound minecraft:tcharge_c player @s


