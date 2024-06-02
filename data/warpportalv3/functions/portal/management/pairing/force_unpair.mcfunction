data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.key
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.key set value {}

execute as @s at @s run function warpportalv3:portal/management/pairing/unpair