### 分類する

execute store result score #Slot LimitedInventory run data get storage limited_inventory: Inventory[0].Slot

execute unless score #Slot LimitedInventory matches 0..35 run data remove storage limited_inventory: Inventory[0].Slot

execute if score #Slot LimitedInventory matches 103 run data modify storage limited_inventory: Class.Head set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches 102 run data modify storage limited_inventory: Class.Chest set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches 101 run data modify storage limited_inventory: Class.Legs set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches 100 run data modify storage limited_inventory: Class.Feet set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches -106 run data modify storage limited_inventory: Class.Offhand set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches 0..8 if score #Slot LimitedInventory = #SelectedItemSlot LimitedInventory run data modify storage limited_inventory: Class.Mainhand set from storage limited_inventory: Inventory[0]
execute if score #Slot LimitedInventory matches 0..8 unless score #Slot LimitedInventory = #SelectedItemSlot LimitedInventory run data modify storage limited_inventory: Class.Hotbar append from storage limited_inventory: Inventory[0]
scoreboard players remove #Slot LimitedInventory 9
execute if score #Slot LimitedInventory matches 0..26 store result storage limited_inventory: Inventory[0].Slot byte 1 run scoreboard players get #Slot LimitedInventory
execute if score #Slot LimitedInventory matches 0..26 run data modify storage limited_inventory: Class.Inventory append from storage limited_inventory: Inventory[0]

data remove storage limited_inventory: Inventory[0]

execute if data storage limited_inventory: Inventory[0] run function limited_inventory:sys/classify
