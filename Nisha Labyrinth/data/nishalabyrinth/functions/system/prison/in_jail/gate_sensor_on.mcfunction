execute if entity @s[predicate=nishalabyrinth:system/library/lib_stairs_a] run setblock 713 41 577 redstone_lamp[lit=true] destroy
execute if entity @s[predicate=nishalabyrinth:system/library/lib_stairs_b] run setblock 707 41 587 redstone_lamp[lit=true] destroy

schedule function nishalabyrinth:system/prison/in_jail/gate_sensor_off 3s replace