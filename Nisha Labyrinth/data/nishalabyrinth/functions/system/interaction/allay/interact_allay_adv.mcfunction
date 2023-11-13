#advancement revoke @s only nishalabyrinth:system/interaction/allay/give_cookie
#advancement revoke @s only nishalabyrinth:system/interaction/allay/give_cookie give_cookie
#advancement grant @s only nishalabyrinth:system/interaction/allay/give_cookie impossible

#execute unless entity @s[advancements={nishalabyrinth:system/interaction/allay/give_cookie=true}] run advancement revoke @s only nishalabyrinth:system/interaction/allay/give_cookie impossible
advancement revoke @s only nishalabyrinth:system/interaction/allay/interact_allay_buffer


advancement grant @s only nishalabyrinth:system/interaction/allay/give_cookie impossible
#execute if entity @s[advancements={nishalabyrinth:system/interaction/allay/interact_allay=true}] run return 0