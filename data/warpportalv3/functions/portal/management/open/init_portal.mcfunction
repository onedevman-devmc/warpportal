execute as @s at @s run function warpportalv3:portal/management/open/init_portal/fix_position

execute as @s at @s run function warpportalv3:portal/structure/is_axis_x
execute if score @s wpv3_is_axis_x_structure matches 1..1 run tag @s add wpv3_axis_x

execute as @s[tag=!wpv3_axis_x] at @s run function warpportalv3:portal/structure/is_axis_z
execute if entity @s[tag=!wpv3_axis_x] if score @s wpv3_is_axis_z_structure matches 1..1 run tag @s add wpv3_axis_z

execute as @s at @s run function warpportalv3:portal/management/open/init_portal/build_portal

execute as @e[distance=..42] at @s run function warpportalv3:portal/sounds/mute_arrow
execute as @e[distance=..42] at @s run function warpportalv3:portal/sounds/play_open

tag @s remove wpv3_opening
