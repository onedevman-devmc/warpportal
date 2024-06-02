$execute unless data storage warpportalv3:portal_registry pairing_map.'$(key)' run data modify storage warpportalv3:portal_registry pairing_map.'$(key)' set value []

$data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare

scoreboard players set @s wpv3_point_was_paired 1
$execute if data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(key)'[1]

$execute unless score @s wpv3_point_was_paired matches 0..0 if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] if data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] run data modify storage warpportalv3:portal_registry pairing_map.'$(key)'[0] set from storage warpportalv3:portal_registry pairing_map.'$(key)'[1]
$execute unless score @s wpv3_point_was_paired matches 0..0 if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] if data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] run data modify storage warpportalv3:portal_registry pairing_map.'$(key)'[1] set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}

$execute unless score @s wpv3_point_was_paired matches 0..0 if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] unless data storage warpportalv3:portal_registry pairing_map.'$(key)'[1] run data modify storage warpportalv3:portal_registry pairing_map.'$(key)' append value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare_2

$execute if data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] store success score @s wpv3_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.pairing_compare set from storage warpportalv3:portal_registry pairing_map.'$(key)'[0]

$execute unless score @s wpv3_point_was_paired matches 0..0 unless data storage warpportalv3:portal_registry pairing_map.'$(key)'[0] run data modify storage warpportalv3:portal_registry pairing_map.'$(key)' append value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data remove storage warpportalv3:portal_registry pairing_map."{}"

$execute if data storage warpportalv3:portal_registry pairing_map.'$(key)' run data modify storage warpportalv3:portal_registry pairing_state_map."$(uuid)" set value true
$execute unless data storage warpportalv3:portal_registry pairing_map.'$(key)' run data remove storage warpportalv3:portal_registry pairing_state_map."$(uuid)"