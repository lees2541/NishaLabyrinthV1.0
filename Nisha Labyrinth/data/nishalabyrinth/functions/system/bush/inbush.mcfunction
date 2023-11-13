execute at @a[predicate=nishalabyrinth:on_dirt,predicate=nishalabyrinth:at_grass,predicate=!nishalabyrinth:sneak,predicate=nishalabyrinth:sprinting] if block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=armor_stand,tag=NL_grass,tag=NL,distance=..0.5] run setblock ~ ~ ~ minecraft:tall_grass[half=lower] destroy
execute at @a[predicate=nishalabyrinth:on_dirt,predicate=nishalabyrinth:at_grass,predicate=!nishalabyrinth:sneak,predicate=nishalabyrinth:sprinting] unless block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=armor_stand,tag=NL_grass,tag=NL,distance=..0.5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,Tags:["NL_grass","NL"]}
#execute as @a[predicate=nishalabyrinth:on_dirt,predicate=!nishalabyrinth:sneak,predicate=nishalabyrinth:sprinting] run scoreboard players set @e[type=armor_stand,distance=0.1,tag=NL_grass,tag=NL] grass_age 60









