#Config Trigger
execute if score @s LimitedInventory matches 1 run scoreboard players set #KeepMainhand LimitedInventory 0
execute if score @s LimitedInventory matches 2 run scoreboard players set #KeepMainhand LimitedInventory 1
execute if score @s LimitedInventory matches 3 run scoreboard players set #KeepOffhand LimitedInventory 0
execute if score @s LimitedInventory matches 4 run scoreboard players set #KeepOffhand LimitedInventory 1
execute if score @s LimitedInventory matches 5 run scoreboard players set #KeepHotbar LimitedInventory 0
execute if score @s LimitedInventory matches 6 run scoreboard players set #KeepHotbar LimitedInventory 1
execute if score @s LimitedInventory matches 7 run scoreboard players set #KeepEquipment LimitedInventory 0
execute if score @s LimitedInventory matches 8 run scoreboard players set #KeepEquipment LimitedInventory 1
execute if score @s LimitedInventory matches 9 run scoreboard players set #KeepInventory LimitedInventory 0
execute if score @s LimitedInventory matches 10 run scoreboard players set #KeepInventory LimitedInventory 1

scoreboard players reset @s LimitedInventory
scoreboard players enable @s LimitedInventory
playsound minecraft:entity.experience_orb.pickup master @s

function limited_inventory:config
advancement revoke @s only limited_inventory:trigger
