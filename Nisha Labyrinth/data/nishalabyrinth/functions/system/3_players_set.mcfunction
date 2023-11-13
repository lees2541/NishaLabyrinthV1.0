setblock 686 50 577 minecraft:redstone_wire destroy
setblock 685 50 577 minecraft:redstone_wire destroy
setblock 684 50 577 minecraft:redstone_wire destroy
setblock 683 50 577 minecraft:redstone_wire destroy
setblock 682 50 577 minecraft:redstone_wire destroy
setblock 681 50 577 minecraft:redstone_wire destroy
setblock 680 50 577 repeater[delay=1,facing=east,powered=true] destroy
execute as @e[type=interaction,tag=altar] at @s if block ~ ~1 ~ redstone_wire run kill @s