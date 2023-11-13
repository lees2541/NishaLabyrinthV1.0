function nishalabyrinth:jobs/functions/gate_keeper
#give @p warped_fungus_on_a_stick{CanDestroy:["minecraft:lime_concrete_powder","minecraft:soul_campfire"],display:{Name:'{"text":"오미넌스 하커"}',Lore:['{"text":"위대했던 탐굴가의 곡괭이. 이젠 무언가 불길한 기운을 내뿜는다."}']},HideFlags:3,CustomModelData:1004935,sniffer_scythe:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.02,Operation:1,UUID:[I;1497853867,-686536427,-1990485779,-1803022275],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;898418700,1076448866,-1224381217,-1600772860],Slot:"mainhand"}]} 1
tag @p add sniffer
give @p warped_fungus_on_a_stick
function nishalabyrinth:character_functions/sniffer/overriding_weapon
item replace entity @s armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:338,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
item replace entity @p armor.feet with netherite_boots{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-680757725,-989510154,-1899770956,-903623324],Slot:"feet"}],NL:1b} 1
item replace entity @p armor.chest with netherite_chestplate{Unbreakable:1b,NL:1b} 1
item replace entity @p armor.legs with netherite_leggings{Unbreakable:1b,NL:1b} 1
scoreboard players set @p sn_blind 0
scoreboard players set @p hunt_cool 0
item modify entity @p hotbar.8 nishalabyrinth:items/gate_keeper/sniffer_image
tag @p add skill_ready