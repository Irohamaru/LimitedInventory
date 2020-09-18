scoreboard objectives add LimitedInventory trigger
execute unless score #LoadOnce LimitedInventory matches 1 run function limited_inventory:load_once
