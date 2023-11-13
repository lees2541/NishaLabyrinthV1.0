## 게이지와 시간 맞추기 테스트 용


execute as @e[tag=left,type=text_display,tag=point,tag=gauge_bar,tag=!pause] if score @s NL_entity_timer = #test NL_temp run data merge entity @s {start_interpolation:20}
execute as @e[tag=left,type=text_display,tag=point,tag=gauge_bar,tag=!pause,nbt={start_interpolation:20}] if score @s NL_entity_timer = #test NL_temp run tag @s add pause
execute as @e[tag=left,type=text_display,tag=point,tag=gauge_bar,tag=pause,limit=1] if score @s NL_entity_timer = #test NL_temp store success score @s NL_success run data get entity @s start_interpolation
execute as @e[tag=left,type=text_display,tag=point,tag=gauge_bar,tag=pause,scores={NL_success=0}] if score @s NL_entity_timer = #test NL_temp run tag @s remove pause