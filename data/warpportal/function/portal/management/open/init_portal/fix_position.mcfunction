execute as @s at @s store result score @s wp_portal_x run data get entity @s Pos[0]
execute as @s at @s store result score @s wp_portal_y run data get entity @s Pos[1]
execute as @s at @s store result score @s wp_portal_z run data get entity @s Pos[2]

scoreboard players operation @s wp_portal_x *= __10 wp_constants
scoreboard players add @s wp_portal_x 5

scoreboard players operation @s wp_portal_z *= __10 wp_constants
scoreboard players add @s wp_portal_z 5

execute as @s at @s store result entity @s Pos[0] double 0.1 run scoreboard players get @s wp_portal_x
execute as @s at @s store result entity @s Pos[1] double 1 run scoreboard players get @s wp_portal_y
execute as @s at @s store result entity @s Pos[2] double 0.1 run scoreboard players get @s wp_portal_z

scoreboard players operation @s wp_portal_x /= __10 wp_constants
scoreboard players operation @s wp_portal_z /= __10 wp_constants