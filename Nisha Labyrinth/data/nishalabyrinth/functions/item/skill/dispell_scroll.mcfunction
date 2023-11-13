execute as @s run function nishalabyrinth:tags/remove_debuff_tags
schedule function nishalabyrinth:system/altar/bossbar/into_default 1t replace
clear @s carrot_on_a_stick{NL:1b,dispel:1b} 1
execute as @s run say 봉인해제의 주문서를 썼습니다
scoreboard players set @s NL_carrotst_used 0