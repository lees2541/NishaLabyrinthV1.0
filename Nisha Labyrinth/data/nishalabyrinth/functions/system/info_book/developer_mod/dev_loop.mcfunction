execute as @s[tag=NL_developer,nbt={Inventory:[{tag:{buff:1b},id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] run tag @s add bswitching
execute as @s[tag=NL_developer,nbt={Inventory:[{tag:{debuff:1b},id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] run tag @s add dswitching
execute as @s[tag=NL_developer,tag=bswitching,scores={NL_buff_icon=0..}] run scoreboard players remove @s NL_buff_icon 1
execute as @s[tag=NL_developer,tag=dswitching,scores={NL_debuff_icon=0..}] run scoreboard players remove @s NL_debuff_icon 1

execute as @s[tag=NL_developer,tag=bswitching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @s[tag=NL_developer,tag=bswitching] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"버프아이콘","color":"dark_blue"}'},buff:1b,NL:1b,dev:1b}
execute as @s[tag=NL_developer,tag=dswitching] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @s[tag=NL_developer,tag=dswitching] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"디버프아이콘","color":"dark_red"}'},debuff:1b,NL:1b,dev:1b}

execute as @s[tag=NL_developer,scores={NL_carrotst_used=1..,NL_buff_icon=-1..20},nbt={SelectedItem:{tag:{buff:1b}}}] run scoreboard players add @s[tag=NL_developer] NL_buff_icon 1
execute as @s[tag=NL_developer,scores={NL_carrotst_used=1..,NL_debuff_icon=-1..20},nbt={SelectedItem:{tag:{debuff:1b}}}] run scoreboard players add @s[tag=NL_developer] NL_debuff_icon 1
tag @s remove bswitching
tag @s remove dswitching

execute as @a[tag=NL_developer] run function nishalabyrinth:system/info_book/developer_mod/library/library_loop