execute at @s run summon wandering_trader ~ ~ ~ {Glowing:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,Tags:["NL","lib_guardian","route_A","patrol"],CustomName:'{"text":"정찰병"}',Offers:{}}
execute if score @s NL_lib_route matches 1 run data merge entity @e[type=wandering_trader,limit=1,tag=route_A,tag=lib_guardian,sort=nearest] {WanderTarget:{X:702,Y:39,Z:582}}
execute if score @s NL_lib_route matches 2 run data merge entity @e[type=wandering_trader,limit=1,tag=route_A,tag=lib_guardian,sort=nearest] {WanderTarget:{X:702,Y:39,Z:565}}
execute if score @s NL_lib_route matches 3 run data merge entity @e[type=wandering_trader,limit=1,tag=route_A,tag=lib_guardian,sort=nearest] {WanderTarget:{X:689,Y:39,Z:566}}
execute if score @s NL_lib_route matches 4 run data merge entity @e[type=wandering_trader,limit=1,tag=route_A,tag=lib_guardian,sort=nearest] {WanderTarget:{X:689,Y:39,Z:582}}