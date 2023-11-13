team join NL_gk_only @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp,limit=1,sort=arbitrary,nbt={Facing:1b}]
data merge entity @e[type=glow_item_frame,tag=NL_used,tag=tellus_tp,limit=1,sort=arbitrary,nbt={Facing:1b}] {Tags:["NL"]}
execute at @s run kill @e[type=armor_stand,tag=tellus_tp,limit=1,sort=nearest]

