scoreboard players set @s wp_check_portal_structure 0

execute as @s at @s run function warpportal:portal/structure/is_axis_x
execute as @s at @s run function warpportal:portal/structure/is_axis_z

execute if score @s wp_is_axis_x_structure matches 1..1 run scoreboard players set @s wp_check_portal_structure 1
execute if score @s wp_is_axis_z_structure matches 1..1 run scoreboard players set @s wp_check_portal_structure 1
