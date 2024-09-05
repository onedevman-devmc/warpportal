execute unless data entity @s ArmorItems[0].components."minecraft:custom_data".teleport run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport set value {}
data remove entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target

$data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare

scoreboard players set @s wp_point_was_paired 1

tag @s add xxxx
tellraw @a {"nbt": "ArmorItems[0].components.\"minecraft:custom_data\".pairing_compare", "entity": "@e[tag=xxxx,limit=1]"}
$tellraw @a {"nbt": "pairing_map.'$(key)'[0]", "storage": "warpportal:registry"}
$tellraw @a {"nbt": "pairing_map.'$(key)'[1]", "storage": "warpportal:registry"}

$execute if data storage warpportal:registry pairing_map.'$(key)'[0] store success score @s wp_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from storage warpportal:registry pairing_map.'$(key)'[0]

$execute if score @s wp_point_was_paired matches 0..0 if data storage warpportal:registry pairing_map.'$(key)'[0] run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target set from storage warpportal:registry pairing_map.'$(key)'[1]

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare_2

$execute if data storage warpportal:registry pairing_map.'$(key)'[1] store success score @s wp_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from storage warpportal:registry pairing_map.'$(key)'[1]

$execute if score @s wp_point_was_paired matches 0..0 if data storage warpportal:registry pairing_map.'$(key)'[1] run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target set from storage warpportal:registry pairing_map.'$(key)'[0]