#スポーン
loot spawn ~ ~ ~ loot minecraft:blocks/cobblestone
execute as @e[type=item,tag=,distance=..1,limit=1] run data modify entity @s Item set from storage limited_inventory: Spawn[-1]
tag @e[type=item,tag=,distance=..1,limit=1] add Spawned
data remove storage limited_inventory: Spawn[-1]
execute if data storage limited_inventory: Spawn[0] run function limited_inventory:sys/spawn
