$execute in $(dimension) if loaded $(x) $(y) $(z) run scoreboard players set @s wpv3_target_force_loaded 1

$execute if score @s wpv3_target_force_loaded matches 0..0 in $(dimension) run forceload add $(x) $(z)

$execute in $(dimension) positioned $(x) $(y) $(z) run scoreboard players operation @e[tag=wpv3_portal,distance=..1,limit=1,sort=nearest] wpv3_force_loaded = @s wpv3_target_force_loaded
$execute in $(dimension) positioned $(x) $(y) $(z) run scoreboard players set @e[tag=wpv3_portal,distance=..1,limit=1,sort=nearest] wpv3_force_loading_timeout 200

scoreboard players reset @s wpv3_target_force_loaded

execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s store result score @s wpv3_yaw run data get entity @s Rotation[0]
$execute if entity @s[tag=wpv3_axis_x] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if entity @e[tag=wpv3_portal,tag=wpv3_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z)
$execute if entity @s[tag=wpv3_axis_z] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if entity @e[tag=wpv3_portal,tag=wpv3_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z)

$execute if entity @s[tag=wpv3_axis_x] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score @s wpv3_yaw <= __0 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) -90 ~
$execute if entity @s[tag=wpv3_axis_x] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score @s wpv3_yaw > __0 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_z,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) 90 ~

$execute if entity @s[tag=wpv3_axis_z] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-90 wpv3_constants <= @s wpv3_yaw if score @s wpv3_yaw < __0 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) 0 ~
$execute if entity @s[tag=wpv3_axis_z] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __0 wpv3_constants <= @s wpv3_yaw if score @s wpv3_yaw < __90 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) 0 ~
$execute if entity @s[tag=wpv3_axis_z] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __90 wpv3_constants <= @s wpv3_yaw if score @s wpv3_yaw < __180 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) 180 ~
$execute if entity @s[tag=wpv3_axis_z] run execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) positioned $(x) $(y) $(z) if score __-180 wpv3_constants <= @s wpv3_yaw if score @s wpv3_yaw < __-90 wpv3_constants if entity @e[tag=wpv3_portal,tag=wpv3_axis_x,distance=..1,limit=1,sort=nearest] run tp @s $(x) $(y) $(z) 180 ~

# $execute as @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] at @s run execute in $(dimension) run tp @s $(x) $(y) $(z)