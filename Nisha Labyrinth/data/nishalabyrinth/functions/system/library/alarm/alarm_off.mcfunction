schedule clear nishalabyrinth:system/library/alarm/alarm_off
schedule clear nishalabyrinth:system/altar/bossbar/into_default
function nishalabyrinth:system/altar/bossbar/into_default
advancement revoke @a through nishalabyrinth:system/library/alarm_red
advancement revoke @a through nishalabyrinth:system/library/alarm_red_gk
kill @e[type=zombie,tag=tracer]
clear @a[team=gate_keeper] carrot_on_a_stick{scroll:1b,tp_lib:1b,NL:1b}

bossbar set nl:lib_alarm color white
scoreboard players set r NL_lib_alarm 0
scoreboard players set r NL_lib_alarm_status 0
function nishalabyrinth:system/gate_open/library_gate_open
