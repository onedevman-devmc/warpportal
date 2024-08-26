$execute unless data storage warpportal:registry pairing_map.'$(key)' run data modify storage warpportal:registry pairing_map.'$(key)' set value []

$data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare

scoreboard players set @s wp_point_was_paired 1
$execute if data storage warpportal:registry pairing_map.'$(key)'[1] store success score @s wp_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from storage warpportal:registry pairing_map.'$(key)'[1]

$execute unless score @s wp_point_was_paired matches 0..0 if data storage warpportal:registry pairing_map.'$(key)'[0] if data storage warpportal:registry pairing_map.'$(key)'[1] run data modify storage warpportal:registry pairing_map.'$(key)'[0] set from storage warpportal:registry pairing_map.'$(key)'[1]
$execute unless score @s wp_point_was_paired matches 0..0 if data storage warpportal:registry pairing_map.'$(key)'[0] if data storage warpportal:registry pairing_map.'$(key)'[1] run data modify storage warpportal:registry pairing_map.'$(key)'[1] set value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}

$execute unless score @s wp_point_was_paired matches 0..0 if data storage warpportal:registry pairing_map.'$(key)'[0] unless data storage warpportal:registry pairing_map.'$(key)'[1] run data modify storage warpportal:registry pairing_map.'$(key)' append value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare_2

$execute if data storage warpportal:registry pairing_map.'$(key)'[0] store success score @s wp_point_was_paired run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing_compare set from storage warpportal:registry pairing_map.'$(key)'[0]

$execute unless score @s wp_point_was_paired matches 0..0 unless data storage warpportal:registry pairing_map.'$(key)'[0] run data modify storage warpportal:registry pairing_map.'$(key)' append value {dimension:"$(dimension)", position:$(position), uuid: $(uuid)}
data remove storage warpportal:registry pairing_map."{}"

$execute if data storage warpportal:registry pairing_map.'$(key)' run data modify storage warpportal:registry pairing_state_map."$(uuid)" set value true
$execute unless data storage warpportal:registry pairing_map.'$(key)' run data remove storage warpportal:registry pairing_state_map."$(uuid)"