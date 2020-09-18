#頭
data remove block 2 2 2 Items[]
execute if score #KeepEquipment LimitedInventory matches 1 run data modify block 2 2 2 Items append from storage limited_inventory: Class.Head
execute unless score #KeepEquipment LimitedInventory matches 1 if data storage limited_inventory: Class.Head.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Head
loot replace entity @s armor.head 1 mine 2 2 2 minecraft:debug_stick

#胴
data remove block 2 2 2 Items[]
execute if score #KeepEquipment LimitedInventory matches 1 run data modify block 2 2 2 Items append from storage limited_inventory: Class.Chest
execute unless score #KeepEquipment LimitedInventory matches 1 if data storage limited_inventory: Class.Chest.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Chest
loot replace entity @s armor.chest 1 mine 2 2 2 minecraft:debug_stick

#脚
data remove block 2 2 2 Items[]
execute if score #KeepEquipment LimitedInventory matches 1 run data modify block 2 2 2 Items append from storage limited_inventory: Class.Legs
execute unless score #KeepEquipment LimitedInventory matches 1 if data storage limited_inventory: Class.Legs.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Legs
loot replace entity @s armor.legs 1 mine 2 2 2 minecraft:debug_stick

#足
data remove block 2 2 2 Items[]
execute if score #KeepEquipment LimitedInventory matches 1 run data modify block 2 2 2 Items append from storage limited_inventory: Class.Feet
execute unless score #KeepEquipment LimitedInventory matches 1 if data storage limited_inventory: Class.Feet.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Feet
loot replace entity @s armor.feet 1 mine 2 2 2 minecraft:debug_stick

#ホットバー/メインハンド
data remove block 2 2 2 Items[]
execute if score #KeepHotbar LimitedInventory matches 1 run data modify block 2 2 2 Items set from storage limited_inventory: Class.Hotbar
execute if score #KeepMainhand LimitedInventory matches 1 if data storage limited_inventory: Class.Mainhand.Count run data modify block 2 2 2 Items append from storage limited_inventory: Class.Mainhand
execute unless score #KeepMainhand LimitedInventory matches 1 if data storage limited_inventory: Class.Mainhand.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Mainhand
execute unless score #KeepHotbar LimitedInventory matches 1 run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Hotbar[]
loot replace entity @s hotbar.0 9 mine 2 2 2 minecraft:debug_stick

#オフハンド
data remove block 2 2 2 Items[]
execute if score #KeepOffhand LimitedInventory matches 1 run data modify block 2 2 2 Items append from storage limited_inventory: Class.Offhand
execute unless score #KeepOffhand LimitedInventory matches 1 if data storage limited_inventory: Class.Offhand.Count run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Offhand
loot replace entity @s weapon.offhand 1 mine 2 2 2 minecraft:debug_stick

#インベントリ
data remove block 2 2 2 Items[]
execute if score #KeepInventory LimitedInventory matches 1 run data modify block 2 2 2 Items set from storage limited_inventory: Class.Inventory
execute unless score #KeepInventory LimitedInventory matches 1 run data modify storage limited_inventory: Spawn append from storage limited_inventory: Class.Inventory[]
loot replace entity @s inventory.0 27 mine 2 2 2 minecraft:debug_stick
