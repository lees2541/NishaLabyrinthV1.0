function nishalabyrinth:jobs/functions/gate_keeper

tag @p add tellus
item replace entity @p armor.head with netherite_helmet{Unbreakable:1b,NL:1b} 1
item replace entity @p armor.feet with netherite_boots{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:2,UUID:[I;-680757725,-989510154,-1899770956,-903623324],Slot:"feet"}],NL:1b} 1
item replace entity @p armor.chest with netherite_chestplate{Unbreakable:1b,NL:1b} 1
item replace entity @p armor.legs with netherite_leggings{Unbreakable:1b,NL:1b} 1
give @p trident
item modify entity @p hotbar.1 nishalabyrinth:items/gate_keeper/tellus_weapon
item modify entity @p hotbar.8 nishalabyrinth:items/gate_keeper/tellus_image

bossbar set nl:tellus players @a[team=gate_keeper,tag=tellus]
#function nishalabyrinth:character_functions/tellus/overriding_wp
#item modify entity @p hotbar.8 nishalabyrinth:items/gate_keeper/tellus_image

