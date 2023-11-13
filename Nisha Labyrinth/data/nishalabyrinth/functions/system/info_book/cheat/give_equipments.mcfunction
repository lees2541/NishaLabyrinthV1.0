execute if entity @s[team=gate_keeper,tag=tellus] run item replace entity @s inventory.22 with trident 1
execute if entity @s[team=gate_keeper,tag=tellus] run item modify entity @s inventory.22 nishalabyrinth:items/gate_keeper/tellus_weapon
execute if entity @s[team=gate_keeper,tag=!tellus,tag=!sniffer] run item replace entity @s inventory.22 with warped_fungus_on_a_stick
execute if entity @s[team=gate_keeper,tag=chopper] run item modify entity @s inventory.22 nishalabyrinth:items/gate_keeper/chopper_wp
execute if entity @s[team=gate_keeper,tag=roamer] run item modify entity @s inventory.22 nishalabyrinth:items/gate_keeper/roamer_wp
execute if entity @s[team=gate_keeper,tag=sniffer] run item replace entity @s inventory.22 with warped_fungus_on_a_stick{CanDestroy:["minecraft:lime_concrete_powder","minecraft:soul_campfire"],display:{Name:'{"text":"오미넌스 하커"}',Lore:['{"text":"위대했던 탐굴가의 곡괭이. 이젠 무언가 불길한 기운을 내뿜는다."}']},HideFlags:3,CustomModelData:1004935,sniffer_scythe:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.02,Operation:1,UUID:[I;1497853867,-686536427,-1990485779,-1803022275],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;898418700,1076448866,-1224381217,-1600772860],Slot:"mainhand"}],NL:1b} 1
execute if entity @s[team=explorer,tag=fisher] run item replace entity @s inventory.22 with fishing_rod{Unbreakable:1b,Enchantments:[{id:"minecraft:lure",lvl:3s}]}
execute if entity @s[team=explorer,tag=magician] run item replace entity @s inventory.22 with warped_fungus_on_a_stick
execute if entity @s[team=explorer,tag=magician] run item modify entity @s inventory.22 nishalabyrinth:items/explorer/magician_wp1
execute if entity @s[team=explorer,tag=magician] run give @s totem_of_undying 1
execute if entity @s[team=explorer,tag=swordsman] run item replace entity @s inventory.22 with warped_fungus_on_a_stick
execute if entity @s[team=explorer,tag=soldier] run item replace entity @s inventory.22 with crossbow 1
execute if entity @s[team=explorer,tag=soldier] run item modify entity @s inventory.22 nishalabyrinth:items/explorer/soldier_wp1
execute if entity @s[team=explorer,tag=police] run item replace entity @s inventory.22 with carrot_on_a_stick 1
execute if entity @s[team=explorer,tag=police] run item modify entity @s inventory.22 nishalabyrinth:items/explorer/police_wp1
execute if entity @s[team=explorer] run item replace entity @s inventory.23 with iron_pickaxe{CanDestroy:["minecraft:lime_concrete_powder","minecraft:soul_lantern","minecraft:soul_wall_torch","minecraft:redstone_ore","minecraft:repeater","minecraft:soul_torch","minecraft:wall_torch"],display:{Name:'{"text":"탐험가의 곡괭이","color":"gray","bold":true}',Lore:['{"text":"도굴이 전문은 아니지만 아무튼 탐험가의 든든한 동반자다.","color":"white","italic":true}']},HideFlags:8,Unbreakable:1b,CustomModelData:13252,jump_pickaxe:1b,NL:1b} 1
execute if entity @s[team=explorer,tag=blind] run item replace entity @s inventory.22 with warped_fungus_on_a_stick
execute if entity @s[team=explorer,tag=police] run item modify entity @s inventory.22 nishalabyrinth:items/explorer/blind_wp1