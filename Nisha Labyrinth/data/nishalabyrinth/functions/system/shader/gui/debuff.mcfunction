## 1/256        2/256       3/256       4/256       5/256       6/256       7/256       8/256       9/256       10/256      11/256
# 0.00390625    0.0078125   0.01171875  0.015625    0.01953125  0.0234375   0.02734375  0.03125     0.03515625  0.0390625   0.04296875


#execute as @a[team=explorer,tag=blood_sign] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0078431372549019607843137254902 1 0 force @s
#execute as @a[team=explorer,tag=trap_detected] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0039215686274509803921568627451 1 0 force @s
#execute as @a[team=explorer,tag=chased] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0 1 0 force @s


execute as @a[team=explorer,tag=trap_detected] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0 1 0 force @s
execute as @a[team=explorer,tag=blood_sign] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0039215686274509803921568627451 1 0 force @s
execute as @a[team=explorer,tag=chased] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0078431372549019607843137254902 1 0 force @s


execute as @a[team=gate_keeper,scores={NL_debuff_stat=0}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
execute as @a[team=gate_keeper,scores={NL_debuff_stat=1}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0 1 0 force @s
execute as @a[team=gate_keeper,scores={NL_debuff_stat=2}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0039215686274509803921568627451 1 0 force @s

execute as @a[team=gate_keeper,scores={NL_debuff_stat=3}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0078431372549019607843137254902 1 0 force @s

