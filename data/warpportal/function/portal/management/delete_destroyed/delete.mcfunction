execute as @e[distance=..42] at @s run function warpportal:portal/sounds/play_destroy

execute as @s at @s run function warpportal:portal/management/pairing/force_unpair
execute as @s at @s run function warpportal:portal/management/active_portal_coordinates/remove with entity @s ArmorItems[0].components."minecraft:custom_data"

kill @s