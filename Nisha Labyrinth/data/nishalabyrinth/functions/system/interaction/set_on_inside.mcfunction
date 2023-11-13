
function nishalabyrinth:system/library/chest_looting/select_chests_marker
execute if entity @a[team=prisoner,advancements={nishalabyrinth:system/location/in_the_prison=true}] as @e[type=marker,tag=chests,tag=!lifestone,tag=library,limit=1,sort=random] run function nishalabyrinth:system/library/chest_looting/insert_prison_key
scoreboard players set @a[team=gate_keeper] NL_altar_curse 0
setblock 716 45 608 minecraft:lime_concrete_powder destroy
tag @a[team=gate_keeper] remove cursed

