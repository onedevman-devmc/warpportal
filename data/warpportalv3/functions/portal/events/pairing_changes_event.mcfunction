execute as @s at @s run function warpportalv3:portal/management/pairing/update_pairing_key

data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key_compare_2 set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key_compare
execute store success score @s wpv3_on_pairing_changes run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key_compare set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.key

execute as @s at @s if score @s wpv3_on_pairing_changes matches 1..1 run data modify entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key set from entity @s ArmorItems[0].components."minecraft:custom_data".pairing.previous_key_compare_2

execute as @s[tag=!wpv3_pairing_changes_event_processing] at @s if score @s wpv3_on_pairing_changes matches 1..1 run function warpportalv3:portal/events/listeners/on_pairing_changes