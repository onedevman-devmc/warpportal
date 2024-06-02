$data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare

$execute if data storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[0] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[0]
$execute if score @s wpv3_point_was_paired matches 0..0 run data remove storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[0]

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2

$execute if data storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[1] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[1]
$execute if score @s wpv3_point_was_paired matches 0..0 run data remove storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[1]

$execute unless data storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[0] unless data storage warpportalv3:portal_registry pairing_map.'$(previous_key)'[1] run data remove storage warpportalv3:portal_registry pairing_map.'$(previous_key)'
$data remove storage warpportalv3:portal_registry pairing_state_map."$(uuid)"