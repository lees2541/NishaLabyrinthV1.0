execute if entity @a[team=explorer,tag=fisher,scores={NL_sneak_time=30}] as @s[team=explorer] at @s run summon text_display ~ ~ ~ {billboard:"center",see_through:1b,Tags:["NL","point"],text:'{"text":" "}',background:-289125102}


execute as @a[team=explorer,tag=survivor] run data merge entity @e[tag=!gauge_bar,type=text_display,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","survivor","explorer","fisher_entity"]}
execute as @a[team=explorer,tag=magician] run data merge entity @e[tag=!gauge_bar,type=text_display,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","magician","fisher_entity"]}
execute as @a[team=explorer,tag=fisher] run data merge entity @e[type=text_display,tag=!gauge_bar,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","fisher","fisher_entity"]}
execute as @a[team=explorer,tag=blind] run data merge entity @e[type=text_display,tag=!gauge_bar,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","blind","fisher_entity"]}
execute as @a[team=explorer,tag=police] run data merge entity @e[type=text_display,tag=!gauge_bar,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","police","fisher_entity"]}
execute as @a[team=explorer,tag=soldier] run data merge entity @e[type=text_display,tag=!gauge_bar,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","soldier","fisher_entity"]}
execute as @a[team=explorer,tag=swordsman] run data merge entity @e[type=text_display,tag=!gauge_bar,tag=point,tag=NL,limit=1,sort=nearest,distance=..1,tag=!explorer] {Tags:["NL","point","explorer","swordsman","fisher_entity"]}


