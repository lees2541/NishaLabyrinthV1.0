item modify entity @s armor.chest nishalabyrinth:system/stun_on
tag @a[team=gate_keeper,tag=!unstoppable] add atk_stun 
effect give @s blindness infinite
effect give @s glowing infinite
attribute @s[team=gate_keeper] minecraft:generic.attack_speed base set -31
attribute @s[team=gate_keeper] minecraft:generic.attack_damage base set -1