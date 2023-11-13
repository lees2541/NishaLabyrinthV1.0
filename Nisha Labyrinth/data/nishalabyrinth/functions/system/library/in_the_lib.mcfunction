bossbar set nl:lib_alarm visible true
bossbar set nl:lib_alarm players @a[predicate=nishalabyrinth:system/library/at_the_library]
## 타이틀
execute if entity @e[type=marker,tag=prison_key] run title @s[team=explorer] subtitle [{"text":"열쇠"}]
execute unless entity @e[type=marker,tag=prison_key] run title @s subtitle [{"text":""}]
title @s title {"text":"도서관"}
##
#execute if entity @e[type=marker,tag=NL,tag=prison_key] run tellraw @s {"text":"도서관 상자에 열쇠가 있습니다!","color":"red"}

##
execute if entity @s[predicate=nishalabyrinth:system/prison/at_the_prison] run advancement grant @s only nishalabyrinth:system/location/in_the_prison
advancement revoke @s only nishalabyrinth:system/location/in_the_cave
execute if entity @s[team=gate_keeper] run function nishalabyrinth:system/prison/in_jail/gate_sensor_on
