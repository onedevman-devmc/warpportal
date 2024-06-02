execute as @s at @s store result score @s wpv3_portal_x_fix run data get entity @s Pos[0]
execute as @s at @s store result score @s wpv3_portal_y_fix run data get entity @s Pos[1]
execute as @s at @s store result score @s wpv3_portal_z_fix run data get entity @s Pos[2]

scoreboard players operation @s wpv3_portal_x_fix *= __10 wpv3_constants
scoreboard players add @s wpv3_portal_x_fix 5

scoreboard players operation @s wpv3_portal_z_fix *= __10 wpv3_constants
scoreboard players add @s wpv3_portal_z_fix 5

execute as @s at @s store result entity @s Pos[0] double 0.1 run scoreboard players get @s wpv3_portal_x_fix
execute as @s at @s store result entity @s Pos[1] double 1 run scoreboard players get @s wpv3_portal_y_fix
execute as @s at @s store result entity @s Pos[2] double 0.1 run scoreboard players get @s wpv3_portal_z_fix