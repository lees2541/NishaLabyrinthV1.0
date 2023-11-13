execute as @a[tag=magician,scores={NL_fstick_used=1},advancements={nishalabyrinth:system/library/alarm_red=true}] run title @s actionbar {"text":"도서관의 알 수 없는 힘에 의해 텔레포트가 막혔다"}
scoreboard players set @a[tag=magician,scores={NL_fstick_used=1},advancements={nishalabyrinth:system/library/alarm_red=true}] NL_fstick_used 0
execute at @a[tag=magician,scores={NL_fstick_used=1},nbt=!{SelectedItem:{tag:{edta_flashlight:1}}}] run particle minecraft:soul ~ ~ ~ 0 0 0 0.24 100 
execute as @a[team=explorer,tag=magician,scores={NL_fstick_used=1},nbt={SelectedItem:{tag:{Disabled:0b},id:"minecraft:warped_fungus_on_a_stick"}}] positioned as @e[team=gate_keeper,limit=1] at @e[tag=!magician,team=explorer,sort=furthest,limit=1] run tp ~ ~ ~
execute as @a[team=explorer,tag=magician,scores={NL_fstick_used=1}, nbt={SelectedItem:{tag:{Disabled:0b},id:"minecraft:warped_fungus_on_a_stick"}}] run tellraw @a {"text": "주술사가 근처의 팀원에게 텔레포트 했습니다."}
execute as @a[team=explorer,tag=magician,scores={NL_fstick_used=1}, nbt={SelectedItem:{tag:{Disabled:0b},id:"minecraft:warped_fungus_on_a_stick"}}] at @a run playsound minecraft:entity.evoker.prepare_attack player @a 
#execute as @a[team=explorer,tag=magician,scores={NL_fstick_used=1,magician_cool=130..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run effect give @a[tag=magician] unluck 130
execute as @a[team=explorer,tag=magician, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},nbt=!{SelectedItem:{tag:{MG_wp:1b}}}] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/magician_wp1
execute as @a[team=explorer,tag=magician,scores={NL_fstick_used=1}, nbt={SelectedItem:{tag:{Disabled:0b},id:"minecraft:warped_fungus_on_a_stick"}}] run item modify entity @s weapon.mainhand nishalabyrinth:items/explorer/magician_wp2
execute as @a[tag=magician,scores={NL_totem_used=1}] run effect give @a[team=explorer] speed 10 0
execute as @a[tag=magician,scores={NL_totem_used=1}] run effect give @a[team=explorer] night_vision 5
execute as @p[scores={NL_totem_used=1}] run tellraw @a {"text":"누군가가 불사의 토템을 썼습니다!"}

