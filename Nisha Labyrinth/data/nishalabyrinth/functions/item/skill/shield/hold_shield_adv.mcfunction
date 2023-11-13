
scoreboard players add @s NL_shield_hold 1
execute if score @s NL_shield_hold matches 20 run playsound minecraft:entity.illusioner.prepare_mirror master @s
schedule function nishalabyrinth:test/test_schedule_function 1t append
advancement revoke @s only nishalabyrinth:system/hold_key/shield/hold_shield_rev