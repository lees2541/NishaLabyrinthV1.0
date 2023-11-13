tag @s add NL_developer
give @s written_book{display:{Name:'{"text":"민"}',Lore:['{"text":"준"}']},CustomModelData:1,title:"",author:"",pages:['[{"text":"[버프아이콘 보이기]","clickEvent":{"action":"run_command","value":"/function nishalabyrinth:system/info_book/developer_mod/set_buff_icon"}},{"text":"\\n[디버프아이콘 보이기]","clickEvent":{"action":"run_command","value":"/function nishalabyrinth:system/info_book/developer_mod/set_debuff_icon"}},{"text":"\\n[정찰병루트보기]","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar NL_lib_route"}},{"text":"\\n[상자파밍테스트]","clickEvent":{"action":"run_command","value":"/function nishalabyrinth:system/info_book/developer_mod/library/chest_loot_test"}},{"text":"\\n[개발자모드 종료]","clickEvent":{"action":"run_command","value":"/function nishalabyrinth:system/info_book/developer_mod/reset_developer"}}]'],NL:1b} 1
give @s carrot_on_a_stick{display:{Name:'{"text":"버프아이콘","color":"dark_blue"}'},buff:1b,NL:1b,dev:1b} 
give @s carrot_on_a_stick{display:{Name:'{"text":"디버프아이콘","color":"dark_red"}'},debuff:1b,NL:1b,dev:1b}
give @s carrot_on_a_stick{display:{Name:'{"text":"소환막대","color":"yellow"}'},summon:1b,NL:1b,dev:1b}
scoreboard players set r NL_test_chest_loot 0
execute unless score @s NL_buff_icon matches 0.. run scoreboard players set @s NL_buff_icon -1
execute unless score @s NL_debuff_icon matches 0.. run scoreboard players set @s NL_debuff_icon -1
execute unless score @s NL_lib_route matches 1.. run scoreboard players set @s NL_lib_route 2