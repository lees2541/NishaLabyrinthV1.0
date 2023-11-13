loot insert 693 64 577 loot minecraft:chests/special_pieces
scoreboard players remove r NL_test_chest_loot 1
execute unless score r NL_test_chest_loot matches ..0 run function nishalabyrinth:system/info_book/developer_mod/library/chest_loot_loop