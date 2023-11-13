execute if entity @s[nbt={Inventory:[{id:"minecraft:redstone",tag:{NL:1b}}]}] as @e[type=interaction,tag=altar] positioned as @s if block ~ ~1 ~ redstone_wire run return 1
return 0

## 올린사람이 추가레드스톤있을땐 1, 아니면 0을 반환 --> set_on_altar 함수로