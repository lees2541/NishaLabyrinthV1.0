bossbar set nl:lib_alarm players @a[advancements={nishalabyrinth:system/location/in_the_lib=true},predicate=nishalabyrinth:system/library/at_the_library]
advancement revoke @s through nishalabyrinth:system/location/in_the_lib

execute if entity @s[team=prisoner,nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add exit
execute if entity @s[team=prisoner,tag=exit] run function nishalabyrinth:system/prison/escape_jail_adv
execute as @a[team=explorer,tag=exit] run clear @s bone_meal
execute if entity @s[team=prisoner,tag=exit] run tellraw @a[team=!gate_keeper] [{"selector":"@s"},{"text":"(이)가 감옥에서 탈출했습니다!"}]



