
execute at @a[team=gate_keeper,tag=sniffer] if entity @e[type=area_effect_cloud,tag=trace_aged,distance=..0.7] store result score r NL_trace_age run data get entity @e[sort=nearest,type=area_effect_cloud,tag=trace_aged,limit=1,distance=..0.7] Age
execute store result score .max NL_trace_age run bossbar get nl:trace_age max
execute if score r NL_trace_age matches 50.. run effect give @a[team=gate_keeper,tag=sniffer,tag=hunt_time] speed 1 3


execute at @a[team=gate_keeper,tag=sniffer] if entity @e[type=area_effect_cloud,tag=trace_aged,distance=..0.7] store result bossbar nl:trace_age value as @a[team=gate_keeper,tag=sniffer,limit=1] run scoreboard players operation .max NL_trace_age -= r NL_trace_age