execute as @s at @s run function warpportal:portal/structure/line_builders/management/launch with entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening.line_builders

scoreboard players add @s wp_line_builders_dy 1
execute store result entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening.line_builders.dy int 1 run scoreboard players get @s wp_line_builders_dy

# 

$execute if entity @s[tag=wp_axis_x] run setblock ~ ~$(dy) ~ nether_portal[axis=x] keep
$execute if entity @s[tag=wp_axis_z] run setblock ~ ~$(dy) ~ nether_portal[axis=z] keep
$execute if score @s wp_line_builders_dy matches 0..30 if block ~ ~$(dy) ~ nether_portal run function warpportal:portal/management/open/init_portal/build_portal/loop with entity @s ArmorItems[0].components."minecraft:custom_data".portal_opening.line_builders