execute positioned ~ ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run summon marker ~ ~ ~ {Tags:["light_block","NL"]}

execute positioned ~ ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run setblock ~ ~ ~ light[level=4]


#execute positioned ~1 ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run summon marker ~ ~ ~ {Tags:["light_block","NL"]}
#execute positioned ~1 ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run setblock ~ ~ ~ light[level=3]
#execute positioned ~-1 ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run summon marker ~ ~ ~ {Tags:["light_block","NL"]}
#execute positioned ~-1 ~1 ~ if block ~ ~ ~ air unless block ~ ~ ~ light run setblock ~ ~ ~ light[level=3]
#execute positioned ~ ~1 ~1 if block ~ ~ ~ air unless block ~ ~ ~ light run summon marker ~ ~ ~ {Tags:["light_block","NL"]}
#execute positioned ~ ~1 ~1 if block ~ ~ ~ air unless block ~ ~ ~ light run setblock ~ ~ ~ light[level=3]
#execute positioned ~ ~1 ~-1 if block ~ ~ ~ air unless block ~ ~ ~ light run summon marker ~ ~ ~ {Tags:["light_block","NL"]}
#execute positioned ~ ~1 ~-1 if block ~ ~ ~ air unless block ~ ~ ~ light run setblock ~ ~ ~ light[level=3]
#execute if entity @e[type=marker,tag=light_block] run say hi