#execute if entity @a[advancements={nishalabyrinth:system/library/prison/used_bone_meal=true}] run return 0
clear @s bone_meal 1
tag @s add exit
fill 707 39 580 707 45 580 twisting_vines replace
function nishalabyrinth:juns_job/chainup/chainup