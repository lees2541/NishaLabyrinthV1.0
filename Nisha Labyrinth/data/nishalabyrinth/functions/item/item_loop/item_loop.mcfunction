execute as @a[advancements={nishalabyrinth:system/hold_key/shield/hold_shield=false},scores={NL_shield_hold=1..}] run scoreboard players set @s NL_shield_hold 0



#execute as @a[team=!gate_keeper,nbt={SelectedItem:{id:"minecraft:redstone",Slot:7b}}] run title @s actionbar [{"score":{"name":"r","objective":"NL_red_progress_left"},"color":"red"},{"text":"번 남았습니다"}] 