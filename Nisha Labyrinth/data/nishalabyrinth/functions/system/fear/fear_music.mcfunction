scoreboard players set @a[scores={NL_fear=4..,NL_music=0}] NL_music 1
execute as @a[team=explorer,scores={NL_music=1}] at @s run playsound minecraft:4fear master @s
scoreboard players add @a[scores={NL_music=1..16}] NL_music 1
scoreboard players set @a[scores={NL_music=17}] NL_music 1
