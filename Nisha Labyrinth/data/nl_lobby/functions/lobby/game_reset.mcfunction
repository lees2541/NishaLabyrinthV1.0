
execute as @e[type=marker,tag=!origin,tag=redstone,tag=redstone_gen] at @s run function nl_lobby:modules/redstone_generator/clear_redstone with entity @s data


function nl_system:init/storage/clear_interface
data modify storage nl:lobby settings set from storage nl:default settings

## test



#kill @e[type=marker,tag=NL]
#kill @e[type=armor_stand,tag=NL]
#kill @e[type=item_display,tag=NL]
#kill @e[type=text_display,tag=NL]
#kill @e[type=block_display,tag=NL]