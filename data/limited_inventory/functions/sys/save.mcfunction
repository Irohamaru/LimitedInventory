#インベントリ保存
data modify storage limited_inventory: Spawn set value []
data modify storage limited_inventory: Class set value {Head:{},Chest:{},Legs:{},Feet:{},Mainhand:{},Offhand:{},Hotbar:[],Inventory:[]}
data modify storage limited_inventory: Inventory set from entity @s Inventory
execute store result score #SelectedItemSlot LimitedInventory run data get entity @s SelectedItemSlot
function limited_inventory:sys/classify

#ロード
execute in dimension:void run forceload add 2 2
execute in dimension:void run setblock 2 2 2 shulker_box
execute in dimension:void run function limited_inventory:sys/load
execute in dimension:void run setblock 2 2 2 air
#スポーン
tag @e[type=item,distance=..1] add Spawned
execute if data storage limited_inventory: Spawn[0] run function limited_inventory:sys/spawn
tag @e[type=item,distance=..1] remove Spawned

advancement revoke @s only limited_inventory:inventory_changed
