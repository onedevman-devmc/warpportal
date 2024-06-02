execute unless data entity @s ArmorItems[0].components."minecraft:custom_data".teleport run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport set value {}
data remove entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target

$data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare

scoreboard players set @s wpv3_point_was_paired 1
$execute if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(key)'[0]

$execute if score @s wpv3_point_was_paired matches 0..0 if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target set from storage warpportalv3:portal_registry pairing_map.'$(key)'[1]

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2

$execute if data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(key)'[1]

$execute if score @s wpv3_point_was_paired matches 0..0 if data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target set from storage warpportalv3:portal_registry pairing_map.'$(key)'[0]