#scoreboard players remove @s battery 1
# 파티클 x y z 에서 x 는 254/255, y 는 252/255, z는 차례대로 1/255, 2/255, 3/255, 4/255

#execute if score r batteryf matches 0 run function ss:leftbattery
#execute if score @s batteryf matches 80.. run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0 1 0 force @s
#execute if score @s batteryf matches 60..79 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0039215686274509803921568627451 1 0 force @s
#execute if score @s batteryf matches 40..59 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.0078431372549019607843137254902 1 0 force @s
#execute if score @s batteryf matches 20..39 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.01176470588235294117647058823529 1 0 force @s
#execute if score @s batteryf matches ..19 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 0.01568627450980392156862745098039 1 0 force @s

#execute if score r batteryf matches 0 run function ss:rightbattery
# 254/255 250/255 ,  ...

#execute if score @s battery matches 80.. run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0 1 0 force @s
#execute if score @s battery matches 60..79 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0039215686274509803921568627451 1 0 force @s
#execute if score @s battery matches 40..59 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.0078431372549019607843137254902 1 0 force @s
#execute if score @s battery matches 20..39 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.01176470588235294117647058823529 1 0 force @s
#execute if score @s battery matches ..19 run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 0.01568627450980392156862745098039 1 0 force @s


#particle minecraft:entity_effect ~ ~ ~ 
## 불 켜기
# 파티클 x y z 에서 x는 254/255, y 는 253/ 255, z는 1/255
#particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0039215686274509803921568627451 1 0 force @s
#particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0078431372549019607843137254902 1 0 force @s

#particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.01176470588235294117647058823529 1 0 force @s

#particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.01568627450980392156862745098039 1 0 force @s

execute if entity @s[team=prisoner] at @s[team=prisoner] run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0039215686274509803921568627451 1 0 force @s


execute at @s[team=explorer] unless entity @e[team=gate_keeper,distance=..7,scores={ftime=0}] as @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0039215686274509803921568627451 1 0 force @s

## 주변에 아머있음 깜박거리기

execute at @s[team=explorer] if entity @e[team=gate_keeper,distance=..7,scores={ftime=0}] as @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 1 1 0 force @s

################
#execute if score @s battery matches ..0 run scoreboard players set @s flashlight 0