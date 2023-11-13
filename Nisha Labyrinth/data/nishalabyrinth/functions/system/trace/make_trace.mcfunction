execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] as @a[team=explorer,tag=blood_sign] unless entity @e[type=marker,tag=trace,tag=trace_aged,distance=..0.5] run summon marker ~ ~ ~ {Tags:["NL","trace"]}
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] as @a[team=explorer,tag=blood_sign] run scoreboard players set @e[type=marker,limit=1,sort=nearest,tag=trace] NL_trace_age 100
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] as @a[team=explorer,tag=blood_sign] run tag @e[type=marker,limit=1,sort=nearest,scores={NL_trace_age=100},tag=!trace_aged] add trace_aged
execute if entity @a[team=gate_keeper,tag=sniffer,tag=hunt_time] run scoreboard players remove @e[type=marker,tag=trace_aged,scores={NL_trace_age=1..}] NL_trace_age 1
kill @e[type=marker,scores={NL_trace_age=..1},tag=trace,tag=trace_aged]


