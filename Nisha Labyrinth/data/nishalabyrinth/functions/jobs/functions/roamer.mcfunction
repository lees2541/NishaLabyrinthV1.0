function nishalabyrinth:jobs/functions/gate_keeper
#function nishalabyrinth:item/roamer/ceremonial_knife
tag @p add roamer
item replace entity @s armor.head with carved_pumpkin{Unbreakable:1b,CustomModelData:344,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],NL:1b} 1
item replace entity @p armor.feet with netherite_boots{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-680757725,-989510154,-1899770956,-903623324],Slot:"feet"}],NL:1b} 1
item replace entity @p armor.chest with netherite_chestplate{Unbreakable:1b,NL:1b} 1
item replace entity @p armor.legs with netherite_leggings{Unbreakable:1b,NL:1b} 1
scoreboard players set @p num_of_trap 4
give @p warped_fungus_on_a_stick
function nishalabyrinth:character_functions/roamer/overriding_wp
item modify entity @p hotbar.8 nishalabyrinth:items/gate_keeper/roamer_image

