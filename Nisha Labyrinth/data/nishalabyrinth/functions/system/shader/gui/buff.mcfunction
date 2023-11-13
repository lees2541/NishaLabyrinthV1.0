## 1/256        2/256       3/256       4/256       5/256       6/256       7/256       8/256       9/256       10/256      11/256      12/256      13/256          14/256      15/256      16/256
# 0.00390625    0.0078125   0.01171875  0.015625    0.01953125  0.0234375   0.02734375  0.03125     0.03515625  0.0390625   0.04296875  0.046875    0.05078125      0.0546875   0.05859375  0.0625



##  켜지는 조건

# 낚시꾼
execute at @e[type=armor_stand,tag=bobber,limit=1] unless entity @a[team=gate_keeper,distance=..2] as @a[team=explorer,tag=fisher,distance=..14.99] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0039215686274509803921568627451 1 0 force @s
#execute at @e[type=armor_stand,tag=bobber,limit=1] unless entity @a[team=gate_keeper,distance=..2] as @a[team=explorer,tag=fisher] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0039215686274509803921568627451 1 0 force @s
execute at @e[type=armor_stand,tag=bobber,limit=1] if entity @a[team=gate_keeper,distance=..2] as @a[team=explorer,tag=fisher] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0078431372549019607843137254902 1 0 force @s
execute at @e[type=armor_stand,tag=bobber,limit=1] unless entity @a[team=gate_keeper,distance=..2] as @a[team=explorer,tag=fisher,distance=15..18] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0390625 1 0 force @s

# 검객
execute as @a[team=explorer,tag=swordsman,tag=def_mod,tag=1st_mod] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0 1 0 force @s

# 용병
execute as @a[team=explorer,tag=soldier,scores={request_time=1..}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.01176470588235294117647058823529 1 0 force @s

# 맹인
execute as @a[team=explorer,tag=blind,scores={bat_mode=1}] positioned as @e[type=bat,tag=pet,limit=1] unless entity @e[team=gate_keeper,distance=..10] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.03125 1 0 force @s
execute as @a[team=explorer,tag=blind,scores={bat_mode=1}] positioned as @e[type=bat,tag=charged,tag=pet,limit=1] if entity @s[distance=13..,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] unless entity @e[team=gate_keeper,distance=..10] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0390625 1 0 force @s
execute as @a[team=explorer,tag=blind,scores={bat_mode=1}] positioned as @e[type=bat,tag=pet,limit=1] if entity @e[team=gate_keeper,distance=..10] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.04296875 1 0 force @s
execute as @a[team=explorer,tag=blind,scores={bat_mode=1}] positioned as @e[type=bat,tag=charged,tag=pet,limit=1] unless entity @s[distance=13..,nbt={Inventory:[{id:"minecraft:lapis_lazuli"}]}] if entity @e[team=gate_keeper,distance=..10] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.03515625 1 0 force @s

execute as @a[team=explorer,tag=blind,scores={bat_mode=0}] at @s unless entity @e[type=bat,tag=pet,distance=..2] run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0234375 1 0 force @s

execute as @a[team=explorer,tag=blind,scores={bat_mode=0}] at @s if entity @e[type=bat,tag=pet,distance=..2] run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.02734375 1 0 force @s
execute as @a[team=explorer,tag=blind,scores={bat_mode=2}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.01953125 1 0 force @s

# 도둑
execute as @a[team=explorer,tag=police,predicate=nishalabyrinth:status/invisibility] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.046875 1 0 force @s

# 트랩헌터
execute as @a[team=gate_keeper,tag=roamer] at @s if entity @a[team=explorer,tag=trap_detected,distance=..15] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.015625 1 0 force @s

# 스니퍼
execute as @a[team=gate_keeper,tag=sniffer,tag=hunt_time] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0 1 0 force @s

# 쵸퍼
execute as @a[team=gate_keeper,tag=chopper,tag=unstoppable] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0039215686274509803921568627451 1 0 force @s
#execute as @a[team=gate_keeper,tag=blood_sign] at @s run

## 꺼지는 조건

execute if entity @a[team=explorer,tag=fisher] unless entity @e[type=armor_stand,tag=bobber] unless entity @e[type=armor_stand,tag=bobber2] as @a[team=explorer,tag=fisher] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @a[team=explorer,tag=swordsman,tag=1st_mod] unless entity @s[tag=def_mod] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
