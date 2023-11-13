function nishalabyrinth:jobs/functions/gate_keeper
tag @p add chopper

item replace entity @p armor.head with carved_pumpkin{display:{Name:'{"text":"쵸퍼"}'},Unbreakable:1b,CustomModelData:342,chopper:1b,NL:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:10,Operation:0,UUID:[I;1597477494,1287930695,-1845145689,1840518326],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:10,Operation:0,UUID:[I;1300336162,1973833226,-2136310837,-787355263],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.15,Operation:1,UUID:[I;1345741702,1137591099,-1961264885,-1784030639],Slot:"head"}],NL:1b} 1
item replace entity @p armor.feet with netherite_boots{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-680757725,-989510154,-1899770956,-903623324],Slot:"feet"}],NL:1b} 1
item replace entity @p armor.chest with netherite_chestplate{Unbreakable:1b,NL:1b} 1
item replace entity @p armor.legs with netherite_leggings{Unbreakable:1b,NL:1b} 1
give @p warped_fungus_on_a_stick
give @p cooked_beef 64
give @p cooked_porkchop{NL:1b,display:{Name:'{"text":"수상한 고기","color":"red","bold":true}',Lore:['{"text":"방금 막 손질한 싱싱한 고기다. ","bold":true,"italic":true}']},NL:1b,Drop:1b} 3
execute as @p run function nishalabyrinth:character_functions/chopper/overriding_wp
item modify entity @p hotbar.8 nishalabyrinth:items/gate_keeper/chopper_image
bossbar set nl:chopper_dash players @a[team=gate_keeper,tag=chopper]
effect give @p hunger infinite 15
