data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.dimension set from entity @p[distance=0..] Dimension
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.position set from entity @s Pos
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.uuid set from entity @s UUID
execute as @s at @s run function warpportalv3:portal/management/pairing/pair/store_pairing_data with entity @s ArmorItems[0].components."minecraft:custom_data".pairing