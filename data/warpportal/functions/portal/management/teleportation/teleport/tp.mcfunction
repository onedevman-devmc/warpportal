$execute in $(dimension) if loaded $(x) $(y) $(z) run scoreboard players set @s wp_target_force_loaded 1

$execute if score @s wp_target_force_loaded matches 0..0 in $(dimension) run forceload add $(x) $(z)

$execute in $(dimension) positioned $(x) $(y) $(z) run scoreboard players operation @e[tag=wp_portal,distance=..1,limit=1,sort=nearest] wp_force_loaded = @s wp_target_force_loaded
$execute in $(dimension) positioned $(x) $(y) $(z) run scoreboard players set @e[tag=wp_portal,distance=..1,limit=1,sort=nearest] wp_force_loading_timeout 200

scoreboard players reset @s wp_target_force_loaded

execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s store result score @s wp_yaw run data get entity @s Rotation[0]
$execute if entity @s[tag=wp_axis_x] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if entity @e[tag=wp_portal,tag=wp_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z)
$execute if entity @s[tag=wp_axis_z] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if entity @e[tag=wp_portal,tag=wp_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z)

$execute if entity @s[tag=wp_axis_x] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-90 wp_constants <= @s wp_yaw if score @s wp_yaw < __0 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~-90 ~
$execute if entity @s[tag=wp_axis_x] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __0 wp_constants <= @s wp_yaw if score @s wp_yaw < __90 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~90 ~
$execute if entity @s[tag=wp_axis_x] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __90 wp_constants <= @s wp_yaw if score @s wp_yaw < __180 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~-90 ~
$execute if entity @s[tag=wp_axis_x] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-180 wp_constants <= @s wp_yaw if score @s wp_yaw < __-90 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~90 ~

$execute if entity @s[tag=wp_axis_z] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-90 wp_constants <= @s wp_yaw if score @s wp_yaw < __0 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~90 ~
$execute if entity @s[tag=wp_axis_z] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __0 wp_constants <= @s wp_yaw if score @s wp_yaw < __90 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~-90 ~
$execute if entity @s[tag=wp_axis_z] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __90 wp_constants <= @s wp_yaw if score @s wp_yaw < __180 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~90 ~
$execute if entity @s[tag=wp_axis_z] run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-180 wp_constants <= @s wp_yaw if score @s wp_yaw < __-90 wp_constants if entity @e[tag=wp_portal,tag=wp_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) ~-90 ~

# $execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) run tp @s $(x) $(y) $(z)