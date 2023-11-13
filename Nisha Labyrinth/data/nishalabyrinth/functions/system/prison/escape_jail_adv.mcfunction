effect clear @s glowing
effect clear @s hunger
effect give @s minecraft:saturation 2 3
effect give @s[team=!gate_keeper] night_vision 10
scoreboard players set @s[team=prisoner] NL_chance 1
team join explorer @s[team=prisoner]
function nishalabyrinth:item/info_book/give_book
advancement revoke @s only nishalabyrinth:system/location/in_the_prison

