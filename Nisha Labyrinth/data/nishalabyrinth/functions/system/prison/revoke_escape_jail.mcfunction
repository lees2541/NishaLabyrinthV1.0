advancement revoke @a[advancements={nishalabyrinth:system/library/prison/escape_jail=true}] only nishalabyrinth:system/library/prison/escape_jail
fill 713 39 586 711 40 586 air destroy
scoreboard players set r NL_lib_alarm_status 0
execute as @a[team=explorer,predicate=nishalabyrinth:system/prison/at_the_prison] run team join prisoner
execute as @a[team=prisoner] run function nishalabyrinth:system/prison/in_the_prison
function nishalabyrinth:system/prison/prison_door/close_door
