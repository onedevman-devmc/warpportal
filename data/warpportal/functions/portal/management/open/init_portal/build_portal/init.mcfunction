scoreboard players set @s wp_line_builders_dy 0

execute unless data entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening run data modify entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening set value {line_builders:{dy:0}}

execute as @s at @s run function warpportal:portal/management/open/init_portal/build_portal/loop with entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening.line_builders