function nishalabyrinth:system/library/alarm/jail_break/jail_break_timer
execute if score r NL_lib_alarm matches ..0 run function nishalabyrinth:system/prison/revoke_escape_jail

advancement grant @a[team=!gate_keeper,team=!NL_ghost,predicate=!nishalabyrinth:system/prison/at_the_prison] only nishalabyrinth:system/library/prison/escape_jail