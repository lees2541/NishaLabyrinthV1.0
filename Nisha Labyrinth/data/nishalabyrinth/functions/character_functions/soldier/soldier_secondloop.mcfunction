execute if entity @a[team=explorer,tag=soldier] as @a[team=explorer,scores={NL_minedConc=1}] run give @a[team=explorer, tag=!soldier] paper{display:{Name:'{"text":"의뢰서","color":"white","bold":true}',Lore:['{"text":"용병에게 의뢰를 할 수 있는 종이이다","color":"gold"}','{"text":"용병을 이 종이를 들고 찰싹 때리면 된다","color":"#FF4FF3","italic":true}','{"text":"지속시간: 1분"}']}} 1
scoreboard players add @a[tag=soldier,scores={request_time=1..49}] request_time 1
scoreboard players set @a[tag=soldier,scores={request_time=50}] request_time 0
execute store result bossbar nl:request_time value run scoreboard players get @e[tag=soldier,limit=1] request_time
execute if entity @a[tag=soldier, scores={request_time=1..}] run bossbar set nl:request_time visible true
execute if entity @a[tag=soldier, scores={request_time=0}] run bossbar set nl:request_time visible false