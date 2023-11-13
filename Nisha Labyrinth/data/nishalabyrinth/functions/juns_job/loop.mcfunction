#execute as @a[tag=hi] run say hi

execute as @a[scores={carrot_used=1..}] run function nishalabyrinth:juns_job/trigger/usedcarrotstick

scoreboard players set @a carrot_used 0

function nishalabyrinth:juns_job/particle

