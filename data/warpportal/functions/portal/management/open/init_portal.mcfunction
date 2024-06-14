data modify entity @s ArmorItems[0].components."minecraft:custom_data".dimension set from entity @p[distance=0..] Dimension

data modify entity @s ArmorItems[0].components."minecraft:custom_data".uuid set from entity @s UUID

execute store result entity @s ArmorItems[0].components."minecraft:custom_data".num int 1 run scoreboard players get __counter wp_portal_num
scoreboard players add __counter wp_portal_num 1

execute as @s at @s run function warpportal:portal/management/open/init_portal/fix_position
data modify entity @s ArmorItems[0].components."minecraft:custom_data".position set from entity @s Pos

# 

execute as @s at @s run function warpportal:portal/management/active_portal_coordinates/store with entity @s ArmorItems[0].components."minecraft:custom_data"

# 

execute as @s at @s run function warpportal:portal/structure/is_axis_x
execute if score @s wp_is_axis_x_structure matches 1..1 run tag @s add wp_axis_x

execute as @s[tag=!wp_axis_x] at @s run function warpportal:portal/structure/is_axis_z
execute if entity @s[tag=!wp_axis_x] if score @s wp_is_axis_z_structure matches 1..1 run tag @s add wp_axis_z

execute as @s at @s run function warpportal:portal/management/open/init_portal/build_portal

execute as @e[distance=..42] at @s run function warpportal:portal/sounds/mute_arrow
execute as @e[distance=..42] at @s run function warpportal:portal/sounds/play_open

# 

tag @s remove wp_opening
