function nishalabyrinth:jobs/functions/explorer
give @p warped_fungus_on_a_stick
give @p totem_of_undying{display:{Name:'{"text":"불사의 토템","color":"dark_red"}',Lore:['{"text":"아무손에나 들고 치명적인 대미지를 입으면 1회 사망을 방지 할 수 있다.","italic":true}','{"text":"쓸 때 안 쓸 때를 잘 구별하자","color":"dark_gray","italic":true,"underlined":true}']},NL:1b,Drop:1b} 1
tag @p add magician
item modify entity @p hotbar.8 nishalabyrinth:items/explorer/magician_image
function nishalabyrinth:character_functions/magician/overriding_wp
item replace entity @p armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:343,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
tag @p add skill_ready
#function nishalabyrinth:item/explorer/flashlight
