data modify entity @s ArmorItems[0].components."minecraft:custom_data".previous_key set from entity @s ArmorItems[0].components."minecraft:custom_data".key
data modify entity @s ArmorItems[0].components."minecraft:custom_data".key set value {}

execute as @s at @s run function warpportal:portal/management/pairing/unpair