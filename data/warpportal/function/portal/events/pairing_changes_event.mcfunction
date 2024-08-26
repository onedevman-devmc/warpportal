execute as @s at @s run function warpportal:portal/management/pairing/update_pairing_key

data modify entity @s ArmorItems[0].components."minecraft:custom_data".previous_key_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".previous_key_compare
execute store success score @s wp_on_pairing_changes run data modify entity @s ArmorItems[0].components."minecraft:custom_data".previous_key_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".key

execute as @s at @s if score @s wp_on_pairing_changes matches 1..1 run data modify entity @s ArmorItems[0].components."minecraft:custom_data".previous_key set from entity @s ArmorItems[0].components."minecraft:custom_data".previous_key_compare_2

execute as @s[tag=!wp_pairing_changes_event_processing] at @s if score @s wp_on_pairing_changes matches 1..1 run function warpportal:portal/events/listeners/on_pairing_changes