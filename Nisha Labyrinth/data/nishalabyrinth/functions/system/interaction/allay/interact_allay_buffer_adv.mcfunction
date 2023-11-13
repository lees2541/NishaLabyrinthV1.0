#advancement grant @s only nishalabyrinth:system/interaction/allay/give_cookie give_cookie
#execute if entity @s[advancements={nishalabyrinth:system/interaction/allay/interact_allay=true}] run say 이따
#execute if entity @s[advancements={nishalabyrinth:system/interaction/allay/interact_allay=false}] run say 읍다


#execute unless entity @s[advancements={nishalabyrinth:system/interaction/allay/give_cookie=true}] run advancement revoke @s only nishalabyrinth:system/interaction/allay/give_cookie impossible
advancement revoke @s through nishalabyrinth:system/interaction/allay/interact_allay
#say rev
#advancement revoke @s only nishalabyrinth:system/interaction/allay/give_cookie